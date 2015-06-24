# Sunny

An example app to connect to the Sunlight Foundation's Congress API. This is the final result of the exercise. We recommend that you write your own tests and try to implement the functionality using the tests as a guide.

### Setup

1. Get a Sunlight API key. Remember to confirm the key by clicking on the link that you received on an email.
2. Create an application.yml file under the `config` folder
3. Put the api key in a yaml field `sunlight_api_key`
4. Profit

### Functionality

Once the setup is complete, start the server and visit http://localhost:3000/legislators/90210 to check the congressman available in the `90210` zipcode. You can enter your own zipcode to see the legislators that represent you.
