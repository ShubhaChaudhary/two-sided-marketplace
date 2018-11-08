# README

*  A link (URL) to your published App
https://arcane-garden-28449.herokuapp.com/
* A link to your GitHub repository
https://github.com/ShubhaChaudhary/two-sided-marketplace
# Description of your project
* Problem definition / purpose
* Functionality / features
* Screenshots
* Tech stack (e.g. html, css, deployment platform, etc)
* Instructions on how to setup, configure and use your App.
* Design documentation including,
* Design process
* User stories
* A workflow diagram of the user journey/s.
* Wireframes
* Database Entity Relationship Diagrams
* Details of planning process including,
* Project plan & timeline
* Screenshots of Trello board(s)
* What is the need (i.e. challenge) that you will be addressing in your project?
* Identify the problem you’re trying to solve by building this particular marketplace App? Why is it a problem that needs solving?
* Describe the project will you be conducting and how. your App will address the needs.
* Describe the network infrastructure the App may be based on.
* Identify and describe the software to be used in your App.
* Identify the database to be used in your App and provide a justification for your choice.
Choice of database is dictated by many factors. Some of these are outlined below
1. Commercial versus Open Source – Considering the app is being built for internal usage towards a student project, using a commercial database is obviated. Among the choices available among the open source database, we settled for one which can be deployed through Heroku, PostgreSQL being one of them.
2. Quantity of data to be handled – Volume of data was immaterial here as the amount of data being handled is not expected to exceed more than tens of thousands of transactions across multiple users.
3. Atomicity requirement – Atomicity was a requirement as multiple user will log into the app and can potentially attempt to create, modify or delete data at same instance.
4. RDBMS or NoSQL – As data has tabular structure, therefore the relational model is adequate. ActiveRecord is great and easy for relational databases. ActiveRecord is already set up with a typical rail install. Also, there will not be frequent schema changes in the database and hence the RDBMS is more apt choice.
5. Deployment of database – Web deployment is being done through Heroku. It provides the following choices for database options
a. Heroku Postgres
b. Heroku Redis
c. Apache Kafka on Heroku
 
Among the three database choices – SQLite, PostgreSQL & MySQL the choice as to when to use and when not are presented below.
Considering all above, and the deployment options, PostgreSQL was the best choice for our assignment requirement.


* Identify and describe the production database setup (i.e. postgres instance).
* Describe the architecture of your App.
* Explain the different high-level components (abstractions) in your App.
* Detail any third party services that your App will use.
* Describe (in general terms) the data structure of marketplace apps that are similar to your own (e.g. eBay, Airbnb).
* Discuss the database relations to be implemented.
* Describe your project’s models in terms of the relationships (active record associations) they have with each other.
* Provide your database schema design.
* Provide User stories for your App.
* Provide Wireframes for your App.
* Describe the way tasks are allocated and tracked in your project.
* Discuss how Agile methodology is being implemented in your project.
* Provide an overview and description of your Source control process.
* Provide an overview and description of your Testing process.
* Discuss and analyse requirements related to information system security.
* Discuss methods you will use to protect information and data.
Research what your legal obligations are in relation to handling user data.

