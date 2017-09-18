# APIsand3Scale
RestAPI-AcmeTravels

Following node practices defined here:
https://github.com/felixge/node-style-guide
https://blog.risingstack.com/node-js-best-practices/

1. Clone this project on local file system
2. Pre-requisistes
      A. Imported the data available in the repository and MangoBD

3. Run > npm install
      Deploys the packages
          express
          body-parser
          mongoose
          
 4. Use Cases
      GetVacatins
      Post Vacations With Error Handling
      GetPartialResponse
      Pagination
      Caching --> http://localhost:3000/ will open the html page.
            a. API enabled caching
            b. Browser disables caching
5. Security-Basic
      basic authentication, you can use browser or postman.
      url: http://localhost:3000/private
      Issues with url: http://localhost:3000/v1/basicauth
5. Security-JWT
      GetNewToekn-> POST--> http://localhost:3000/token
      Gethttp://localhost:3000/privatejwt