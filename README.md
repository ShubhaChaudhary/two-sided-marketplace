*  A link (URL) to your published App
 # https://sport-time-app.Herokuapp.com
* A link to your GitHub repository
https://github.com/ShubhaChaudhary/two-sided-marketplace
# Description of your project
* Problem definition / purpose
A platform that combines all the different sports into one easy to use application which allows coaches and customers to connect, exchange and book easily and efficiently.
* Functionality / features
Sign-in, Sign-up, Registration ,Payment, Validation(authentication) ,Booking ,Authorization(admin)
* Screenshots
Please find all the screenshots in attached doc folder.
* Tech stack (e.g. html, CSS, deployment platform, etc)
Rails, Bootstrap, Stripe, PostgreSQL, Heroku, devise, rolify etc.
* Instructions on how to setup, configure and use your App.
 App is deployed using Heroku. As a trainer first, you need to register yourself and create a profile page showing your profile. As a customer you need to sign-up before making any booking and then anyone can pay online and confirm their booking.

* Design process
Research Ideation-> Wireframing-> Technical Feasibility Assessment-> Prototype-> Design-> Develop->Testing->Deployment
* User stories
As an Admin I can:
•	log in and log out
•	visit the profiles
•	delete profiles
•	delete comments
•	delete a rating
•	block users
•	change the content of all content within the web page
•	create categories
As a Coach I can:
•	Sign in and sign out
•	Create profile
•	Edit my profile
•	Delete my profile (CRUD)
•	Availability Times
•	Create my Calendar (future implementation)
•	Cannot delete ratings
•	Cannot delete reviews
As a Customer I can:
•	Sign in and sign out
•	Browse profiles
•	Browse categories
•	Make a booking
•	Verify my booking/payment
•	Confirm Booking
•	Add booking
•	Confirm terms and Conditions
•	delete profile
•	cancel my reservation
•	Update / remove payment details
•	Add comments
•	Give a rating
•	I can donate optional (Nice to have)

* A workflow diagram of the user journey/s.
 Reference available on doc folder.

* Wireframes
Reference available on doc folder.

* Database Entity Relationship Diagrams
Reference available on doc folder.

* Project plan & timeline
Project plan:
1.	Created basic Frame work
2.	Created header and Footer
3.	Created seed for the User, Coach, Categories and clients(customers)
4.	Created a listing page for Coaches and deployed to Heroku and pushed to Git-hub
5.	Created a show page (profile) with Booking Option for coach and deployed it to Heroku and pushed to Git-hub.
6.	Created ratings and comments on the service.
7.	Sign up customer and connect customer to coach.
8.	Strip payment form and deploy.
9.	Build acknowledgement and receipt page
10.	Build Test for models and controller
Timeline:
•	Day 1 Ideation Process
•	Day 2 Agreed upon workload, designated tasks, timeframes.
o	Created basic Frame work
o	Began drawing up wireframes
o	Setup Trello, Github, Heroku
•	Day 3 Created header and Footer
o	Begin documentation
•	Day 4 Created seed for the User, Coach, Categories and clients(customers)
o	Created a listing page for Coaches and deployed to Heroku and pushed to Git-hub
•	Day 5 Created a show page (profile) with Booking Option for coach and deployed it to Heroku and pushed to Git-hub.
•	Day 6 Created ratings and comments on the service.
o	Photo selection for website
•	Day 7 Sign up customer and connect customer to coach.
•	Day 8 Stripe payment form and deploy.
•	Day 9 Build acknowledgement and receipt page
o	Begin Presentation
•	Day10 Build Test for models and controller
•	Day11 Complete Readme, screenshots, ERD
•	Day12. Submit all documentation
o	Final Presentation

* Screenshots of Trello board(s)
Please refer to doc folder.
* What is the need (i.e. challenge) that you will be addressing in your project?
No platform exists that combines all the different sports into one easy to use platform which allows coaches and customers to connect, exchange and book easily and efficiently.
* Identify the problem you’re trying to solve by building this marketplace App? Why is it a problem that needs solving?
The problem is that no platform exists that combines all the different sports into one easy to use platform which allows coaches and customers to connect, exchange and book easily. This problem needs to be solved as right now trying to find a specific coach, in a specific area or time availability is a very convoluted and time-consuming process. Often you must contact the sport club, who then give you another number to the trainer, you then have to work out if you can fit in their schedule, price and time. The process needs to be streamlined as currently it is very hit and miss
* Describe the project will you be conducting and how. your App will address the needs.
It's marketplace for people having different skill set in sports and people who need the coaching. It’s Airbnb of sports coaching.
* Describe the network infrastructure the App may be based on.
We used Heroku for our app deployment. It’s an open platform. The Heroku platform uses Git as the primary means for deploying applications (there are other ways to transport your source code to Heroku, including via an API). When anyone creates an application on Heroku, it associates a new Git remote, typically named Heroku, with the local Git repository for your application. Unlike conventional websites which uses app and web server, these are encapsulated by Heroku internal design.
* Identify and describe the software to be used in your App.
   Bootstrap-sass, Device, hirb, Stripe, paperclip and Rsepc for testing.
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
1.	Install PostgreSQL: https://www.enterprisedb.com/downloads/postgres-postgresql-downloads
2.	Downloaded the latest version (10.5 in our case)
3.	The password and username have been set during the installation process and it’s needed every time setting up the database.
4.	The default port is 5432.
5.	Selected the local during the installation.
6.	Stack- Builder was not been launched during installation.
7.	After installation created the demo database and some SQL queries on PgAdmin4.
8.	We were using Postgresql for our rails app and most of the time we run rails db:setup or rails db:migration etc. commonds to interact with database.
9.	Schema file is having details of database tables. 
10.	Rails Active-record gives the ability to run CRUD operation on database Table and moderate the database fields and setting up the relation between tables
* Describe the architecture of your App.
•	Rails used the Model-view-controller (MVC) architecture also, it follows the rule of convention over configuration, (also known as coding by convention) which means that it has already taken some decisions for us and we don't have to worry about these things as long as you follow Rails conventions.
The basic 6 rails architectures are given below: 
•	Models
•	Ruby on Rails Server(puma)
•	Routes
•	Controllers and their Actions
•	Views
•	Assets

* Explain the different high-level components (abstractions) in your App.
1.	Registration component - Login & Sign-Up
2.	Booking Component
3.	Payment Component
4.	Cancellation Component

* Detail any third party services that your App will use.
1.	For image upload -> paperclip & mini_magick
2.	For deployment -> Heroku
3.	For payment -> stripe

* Describe (in general terms) the data structure of marketplace apps that are similar to your own (e.g. eBay, Airbnb).
 We thought that idea we are presenting is unique. However, we realised that there exists a website https://findmycoach.com/ which has some functionality matching ours.
* Discuss the database relations to be implemented.
    There are four models in the app. These are 
1.	Customer Table (User )
2.	Trainer Table 
3.	Booking Table
4.	Category table
       Category has many trainers, trainer belongs to the category.
        Trainer has many booking and user can book for many trainers.
       
   * Describe your project’s models in terms of the relationships (active record associations) they have with each other.
    Customer can have many bookings.  Coach can have many bookings.
    Category has many trainers, user can belongs to the category.
    Hence it is many to many relationships in our app and hence there was a requirement of through table to maintain the relationship.
* Provide your database schema design.
Please find the attached diagram in doc folder. 
* Provide User stories for your App.
As an Admin I can:
•	log in and log out
•	visit the profiles
•	delete profiles
•	delete comments
•	delete a rating
•	block users
•	change the content of all content within the web page
•	create categories
As a Coach I can:
•	Sign in and sign out
•	Create profile
•	Edit my profile
•	Delete my profile (CRUD)
•	Availability Times
•	Create my Calendar (future implementation)
•	Cannot delete ratings
•	Cannot delete reviews
As a Customer I can:
•	Sign in and sign out
•	Browse profiles
•	Browse categories
•	Make a booking
•	Verify my booking/payment
•	Confirm Booking
•	Add booking
•	Confirm terms and Conditions
•	delete profile
•	cancel my reservation
•	Update / remove payment details
•	Add comments
•	Give a rating
•	I can donate optional (Nice to have)

* Provide Wireframes for your App.
We created the wireframe for laptop, mobile and tab. Reference available on doc folder.
* Describe the way tasks are allocated and tracked in your project.
Allocation and tracking were done through Trello and GitHub respectively. We used GitHub for collaborating, making remarks and resolving the issues.
* Discuss how Agile methodology is being implemented in your project.
Agile methodology was applied to this project via Trello, after every feature was applied and overall local testing as we built the platform to completion.
* Provide an overview and description of your Source control process.
For our rail app, we created the git repository. One person in the team is assigned as maintainer and another member of the team, fork the project repo and worked on their local. For every feature of our app, we created a branch and worked on those branches and pulled those changes for reviews and its maintainers to review the changes and merge back the right code to the masters. Code has been tested before merging back with masters.
* Provide an overview and description of your Testing process.
We used RSpec for testing. Screenshot for testing results is available on doc folder.
* Discuss and analyse requirements related to information system security.
The primary benefit of information system security is the ability to provide a user with the information needed to do any task effectively and efficiently on the site, providing the appropriate data about each user's tasks in a format best suited to that user.
* Discuss methods you will use to protect information and data.
1.	Implemented Legal KYC (know your customer) process for customers and coaches– Background Check: Accurate and honest representation of qualifications, skills, knowledge, and experience.
2.	Offered Stripe /Financial Transaction Security.
3.	Protecting Customers Data and confidentiality by limiting access to it.
4.	We collect only what is necessary information from Coaches and customers.
5.	Every user’s data has password controls applied.
6.	Formulated a legal agreement covering all procedures on sharing information. Set up security KYC controls to ensure that they comply with the agreed upon customer data protection standards.
7.	Children-safety controls, e.g. Blue card requirements for anyone working with children.

* Research what your legal obligations are in relation to handling user data.
Legal Obligation are listed for different aspect of the website
1.	Minimize the risk of user-generated content
2.	Obtain the necessary licenses for content
3.	Follow the exception of fair use
4.	Act quickly when you suspect the law has been violated
5.	Prepare yourself in case you get hacked
6.	Make sure your website has a privacy policy
7.	Follow the rules for selling things online
8.	Know your software rights
9.	Prioritize fulfilling your website legal requirements
