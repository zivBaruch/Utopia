
const _ = require('lodash');

// set the array
const changes = [
    { id: 1, username: "user", password: "password" },
    { phone: "123456789", user: "new user", password: "123456" },
    { email: "example@gmail.com", username: "example" },
    { phone: "987654321"},
];

// the function
const calculateState = (changes) => {
    const output = _.reduce(_.flattenDeep(changes), (result, current)=> {
        return _.defaults(_.assignIn(result, current));
      });
      console.log(output);
};

// call the function whith the array
calculateState(changes);
