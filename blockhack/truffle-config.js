// Allows us to use ES6 in our migrations and tests.
require('babel-register')

module.exports = {
  networks: {
    development: {
      host: '10.0.5.203',
      port: 8545,
      network_id: '*' // Match any network id
    }
  }
}
