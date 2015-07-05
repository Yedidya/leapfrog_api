Welcome to the Leapfrog API!

 requires ruby 2.1.3

 To get started:
  - fork this repo
  - change into the directory
  - run `bundle install` in your command prompt.
 
To set up the database:
  - run `mysql` in terminal or command prompt
  - run `CREATE DATABASE leapfrog_api_dev`
    - if you get an error, this may mean your account doesn't have the privelages to do so. Instead, add the database using your mysql GUI
  - if the above step worked, run `USE leapfrog_api_dev` from the mysql console. If you created it via the GUI, run `mysql -u root leapfrog_api_dev`  

Create database table with following command in the mysql console: 

`CREATE TABLE users ( id INT NOT NULL AUTO_INCREMENT, last_name VARCHAR(45) NOT NULL, first_name VARCHAR(45) NOT NULL, gender VARCHAR(45) NOT NULL, PRIMARY KEY (id));`
 
Now that the database is all set up, it is time to get the server running and make the POST request.

In your teminal/command prompt, run `rackup` from the shell. The server should run on port 9292.

In you browser, go to localhost:9292/users. There should be an empty array.

Make a POST request from whatever tool you use. In my case, I use Postman.

example: `post` locahost:9292/users?first_name=John&last_name=Doe&gender=Male

You should get a `200` status code and the JSON should display similar to:
`{"id":1, "first_name":"John", "last_name":"Doe", "gender":"Male"}`

TO RUN THE TEST SUITE:
`rspec PATH/TO/SPEC/FILE.rb`
