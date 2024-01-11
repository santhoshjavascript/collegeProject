"use strict";
let current_User;
/////////////////////////////////////////////////
/////////////////////////////////////////////////
// BANKIST APP

// Data
const account1 = {
  owner: "Jonas Schmedtmann",
  movements: [200, 450, -400, 3000, -650, -130, 70, 1300],
  interestRate: 1.2, // %
  pin: 1111,
  movementsDates: [
    "2019-11-01T13:15:33.035Z",
    "2019-11-30T09:48:16.867Z",
    "2019-12-25T06:04:23.907Z",
    "2020-01-25T14:18:46.235Z",
    "2020-02-05T16:33:06.386Z",
    "2020-04-10T14:43:26.374Z",
    "2020-06-25T18:49:59.371Z",
    "2020-07-26T12:01:20.894Z",
  ],
  currency: "USD",
  locale: "en-US",
};

const account2 = {
  owner: "Jessica Davis",
  movements: [5000, 3400, -150, -790, -3210, -1000, 8500, -30],
  interestRate: 1.5,
  pin: 2222,
  movementsDates: [
    "2019-11-01T13:15:33.035Z",
    "2019-11-30T09:48:16.867Z",
    "2019-12-25T06:04:23.907Z",
    "2020-01-25T14:18:46.235Z",
    "2020-02-05T16:33:06.386Z",
    "2020-04-10T14:43:26.374Z",
    "2020-06-25T18:49:59.371Z",
    "2020-07-26T12:01:20.894Z",
  ],
  currency: "HKD",
  locale: "zh-CN",
};

const account3 = {
  owner: "Steven Thomas Williams",
  movements: [200, -200, 340, -300, -20, 50, 400, -460],
  interestRate: 0.7,
  pin: 3333,
  movementsDates: [
    "2019-11-01T13:15:33.035Z",
    "2019-11-30T09:48:16.867Z",
    "2019-12-25T06:04:23.907Z",
    "2020-01-25T14:18:46.235Z",
    "2020-02-05T16:33:06.386Z",
    "2020-04-10T14:43:26.374Z",
    "2020-06-25T18:49:59.371Z",
    "2020-07-26T12:01:20.894Z",
  ],
  currency: "EUR ",
  locale: "ar-SA",
};

const account4 = {
  owner: "Sarah ",
  movements: [200, -200, 340, -300, -20, 50, 400, -460],
  interestRate: 1,
  pin: 4444,
  movementsDates: [
    "2019-11-01T13:15:33.035Z",
    "2019-11-30T09:48:16.867Z",
    "2019-12-25T06:04:23.907Z",
    "2020-01-25T14:18:46.235Z",
    "2020-02-05T16:33:06.386Z",
    "2020-04-10T14:43:26.374Z",
    "2020-06-25T18:49:59.371Z",
    "2020-07-26T12:01:20.894Z",
  ],
  currency: "CHF",
  locale: "cs-CZ",
};

//  const hell = new Map([
//   [account1.owner, account1],
//   [account2.owner, account2],
//   [account3.owner, account3],
// ]);
// hell.forEach((hell) => {
//   console.log(hell);
// });-

const accounts = [account1, account2, account3, account4];
// console.log(accounts);

// Elements
const labelWelcome = document.querySelector(".welcome");
const labelDate = document.querySelector(".date");
const labelBalance = document.querySelector(".balance__value");
const labelSumIn = document.querySelector(".summary__value--in");
const labelSumOut = document.querySelector(".summary__value--out");
const labelSumInterest = document.querySelector(".summary__value--interest");
const labelTimer = document.querySelector(".timer");

const containerApp = document.querySelector(".app");
const containerMovements = document.querySelector(".movements");

const btnLogin = document.querySelector(".login__btn");
const btnTransfer = document.querySelector(".form__btn--transfer");
const btnLoan = document.querySelector(".form__btn--loan");
const btnClose = document.querySelector(".form__btn--close");
const btnSort = document.querySelector(".btn--sort");

const inputLoginUsername = document.querySelector(".login__input--user");
const inputLoginPin = document.querySelector(".login__input--pin");
const inputTransferTo = document.querySelector(".form__input--to");
const inputTransferAmount = document.querySelector(".form__input--amount");
const inputLoanAmount = document.querySelector(".form__input--loan-amount");
const inputCloseUsername = document.querySelector(".form__input--user");
const inputClosePin = document.querySelector(".form__input--pin");

//                               Tofixe(2)
const toFixed = (local, currency, value) => {
  const configuration = {
    style: "currency",
    currency: currency,
  };
  return Intl.NumberFormat(local, configuration).format(value);
};

//                           Days Info  Added Herr

const countingDays = (storingDate, object) => {
  const convert = (date, date2) =>
    Math.round(Math.abs((date2 - date) / (1000 * 60 * 60 * 24)));

  const daysCount = convert(new Date(), storingDate);
  console.log(daysCount);

  if (daysCount === 1) return "Today";
  if (daysCount === 2) return "YesterDay";
  if (daysCount >= 7) return `${daysCount} Days Ago`;

  // const year = storingDate.getFullYear();
  // const month = `${storingDate.getMonth()}`.padStart(2, 0);
  // const day = ` ${storingDate.getDate()}`.padStart(2, 0);

  return Intl.DateTimeFormat(object).format(new Date());
};

//         Updated Day Impelemt Here

//                                              Update UI and UX Function

const update_Ui = (updatted) => {
  // Display Current User
  labelWelcome.textContent = `Welcome Back ${current_User.owner}`;

  // const date = new Date(2002, 11, 20);
  // const month = +` ${date.getMonth()}`.padStart(2, 0);

  // const year = date.getFullYear();
  // const day = `${date.getDate()}`.padStart(2, 0);

  const initeNationalApi = Intl.DateTimeFormat(updatted.locale).format(
    new Date()
  );

  labelDate.textContent = initeNationalApi;
  // Dispaly Moments
  transform(updatted, displayItem);
  // Display Summary
  transform(updatted, add_Total);
  // Display Intrest
  transform(updatted.movements, dispaly_total);
};

//                                              Displying Item For Container
const displayItem = (account, here = false) => {
  console.log(account);
  containerMovements.innerHTML = " ";
  const sort = current_User.movements.slice().sort((a, b) => a - b);
  const condition = here ? sort : account.movements;
  console.log(condition);

  // When U want Just Perform Something U can Use forEach Method
  condition.forEach((hell, index) => {
    const storingDate = new Date(account.movementsDates[index]);
    const displayDate = countingDays(storingDate, account.locale);

    const type = hell > 0 ? "deposit" : "withdrawal";
    const html = `<div class="movements__row">
   <div class="movements__type movements__type--${type}">${index} ${type}</div>
   <div class="movements__date">${displayDate}</div>
   <div class="movements__value">${toFixed(
     account.local,
     account.currency,
     hell
   )}</div>
 </div>`;
    containerMovements.insertAdjacentHTML("afterbegin", html);
  });
};

//                                        transform(updatted.movements, displayItem);        Display item for Total $Amount
const add_Total = (money) => {
  // When U want Perform Array Element Condition And Transform  U can Use Them All
  money.storing = money.movements.reduce(
    (accumulator, current) => accumulator + current
  );
  labelBalance.innerHTML = `$${money.storing.toFixed(2)}`;
};

//                                             DisplaySummary Here

const dispaly_total = (summay) => {
  // Positive Income
  const postive_Income = summay
    .filter((condition) => condition > 0)
    .reduce((acc, current) => acc + current);
  // Negative Income
  const negative_Income = summay
    .filter((condtion) => condtion < 0)
    .reduce((acc, current) => acc + current);
  // intrest Amount
  const intrest_Cost = summay
    .filter((condition) => condition > 0)
    .map((transformation) => (transformation * 1.2) / 100)
    .filter((condition) => condition >= 1)
    .reduce((acc, current) => acc + current);

  // Apply in DOM
  labelSumIn.innerHTML = `${toFixed(
    current_User.local,
    current_User.currency,
    postive_Income
  )} `;
  labelSumOut.innerHTML = toFixed(
    current_User.local,
    current_User.currency,
    Math.abs(negative_Income)
  );
  labelSumInterest.innerHTML = toFixed(
    current_User.local,
    current_User.currency,
    intrest_Cost
  );
};

//                                        Creating UserName and adding to accounts

const creating_UserName = (addUser) => {
  // addUser.forEach((string) => {
  //   string.username = string.owner
  //     .split(" ")
  //     .map((transform) => transform[0])
  //     .join("");
  // });

  // console.log(addUser);

  // Now doing in Map

  addUser.map(
    (transform) =>
      (transform.username = transform.owner
        .split(" ")
        .map((transformTwo) => transformTwo[0])
        .join("")
        .toLowerCase())
  );
};

//                                      Submit Login Button Working Here

btnLogin.addEventListener("click", (login) => {
  // prevent form from submiting
  login.preventDefault();
  console.log("Working prevent ");

  current_User = accounts.find((single_Accurance) =>
    single_Accurance.username === inputLoginUsername.value
      ? single_Accurance
      : null
  );

  if (current_User?.pin === Number(inputLoginPin.value)) {
    // Clear input Element
    inputLoginUsername.value = inputLoginPin.value = null;
    // Updated Ui and Ux
    setTimeOut();
    update_Ui(current_User);
    // Display UI and Ux
    containerApp.style.opacity = 100;
  } else {
    containerApp.style.opacity = 0;
  }
});

//                                  Submint Button Of Transfer Amount

btnTransfer.addEventListener("click", (element) => {
  element.preventDefault();
  const amount = Number(inputTransferAmount.value);

  accounts.find((single_Accurance) => {
    if (
      single_Accurance.username === inputTransferTo.value &&
      amount > 0 &&
      current_User &&
      current_User.username !== inputTransferTo.value
    ) {
      // Adding Transfer Content here
      current_User.movements.push(-amount);
      single_Accurance.movements.push(amount);

      // Adding Dates From CurrentUser And Transfer User
      single_Accurance.movementsDates.push(
        Intl.DateTimeFormat(current_User.local).format(new Date())
      );
      current_User.movementsDates.push(
        Intl.DateTimeFormat(current_User.local).format(new Date())
      );

      // Updated Ui and Ux
      update_Ui(current_User);
    }
  });
  inputTransferAmount.value = inputTransferTo.value = null;
});

//                              submit loan button here

btnLoan.addEventListener("click", (element) => {
  element.preventDefault();

  setTimeout(() => {
    const loanAmount = Math.floor(inputLoanAmount.value);
    const boolenValue = current_User.movements.some(
      (performance) => loanAmount >= performance * 0.1
    );

    if (loanAmount > 0 && boolenValue) {
      // Adding Amount from Current User
      current_User.movements.push(loanAmount);

      // const date = new Date();
      // const month = +` ${date.getMonth() + 1}`.padStart(2, 0);

      // const year = date.getFullYear();
      // const day = `${date.getDate()}`.padStart(2, 0);
      // const storing = `${year}/${month}/${day}`;

      current_User.movementsDates.push(
        Intl.DateTimeFormat(current_User.local).format(new Date())
      );

      // Displaying Ui and Ux Her
      update_Ui(current_User);

      inputLoanAmount.value = null;
    } else {
      inputLoanAmount.value = null;
    }
  }, 2000);
});

//                            Submit Close Amount Button Here

btnClose.addEventListener("click", (element) => {
  element.preventDefault();

  if (
    current_User?.username === inputCloseUsername.value &&
    current_User?.pin === Number(inputClosePin.value)
  ) {
    const index = accounts.findIndex(
      (find) => find.username === current_User.username
    );
    // Secound parametter how many element do u want to delete showing count
    accounts.splice(index, 1);
    // Disaple ui and ux
    containerApp.style.opacity = 0;
    labelWelcome.textContent = `Log in to get started`;
  }
  inputCloseUsername.value = inputClosePin.value = null;
});

//                        Submit Sort button

let condition = false;

btnSort.addEventListener("click", (e) => {
  e.preventDefault();

  // display ui
  displayItem(current_User, !condition);
  condition = !false;
});

// Higher Order Fnuction Here Its calling Every Function And Working callback function closure
const transform = (anyType, fn) => fn(anyType);

// iTS Creating User Name and Add to the Object
transform(accounts, creating_UserName);

const setTimeOut = () => {
  let time = 5000;

  setInterval(() => {
    labelTimer.textContent = time;
    time--;
    if (time < 0) {
      containerApp.style.opacity = 0;
      labelWelcome.textContent = `Log in to get started`;
    }
  }, 1000);
};

