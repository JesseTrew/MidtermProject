# PET BnB - Pet Stay App - Boop
## Midterm Team Project for Skill Distillery
## Team Vehement Kitten: Members
- `Full Stack Developer and Scrum Master` Adam Onwan
- `Full Stack Developer ad Github Repo Owner` Jesse Trew
- `Lead Developer` Noel Castillo
- `Full Stack Developer and DBA` Shaun Roach
### Overview
To give hosts opportunity to take in pet owners pets and take care of them while the pet owners are away, usually for a profit. Also vice versa, give pet owners convenience of searching for reputable pet hosts or other services for their pets.
### How to use
1. User starts on landing page.
2. User can search or register/login
3.  If register/login
-  User registers as a client user or service user
-  User logs in
4. After register/login
 - Client user fills out information such as the pet they have
 - Service user fills out information  such as availability, services and type of stay for pet.
 - User lands onto profile page and able to perform CRUD on profile
5. Client user conducts search for services for their pet
 - *Note* Only Denver CO has hardcoded dummy information on pet owners/hosts in the database so searching by city and state other than Denver CO may not show any information
6. User picks a service they want to have done to their pet while in the search menu by clicking on reserve button, which only shows when a user is logged in and has a pet
7. User picks dates to reserve for the service and receives a confirmation message.
8. User can go into profile and check reservation history and give the host a review and rating, and the host can do the same for the pet they serviced.
### Implementation
- Website
 - http://18.216.143.93:8080/PetBnB/
- PetBnB Wireframe and MySQL Database
 - https://miro.com/app/board/o9J_kw3Z9CY=/
- PetBnB Trello Kanban
 - https://trello.com/b/xJIVQhZV/midterm
### Technologies used
* `SQL & MySQL Workbench`
 - For Database
* `Spring Tool Suite, & Spring Boot`
 -  For development
* `Trello`
 -  Using it for Kanban feature to help with managing items to be worked on and the status of every work item.
* `JPA`
 - For communication from development to web
* `JSP, CSS, & HTML`
 - For displaying web information
* `Github, Git`
 - For development coordination
* `Gradle`
 - Used for dependency management
### Why we built PET BnB
- We want to help pet owners find a place for their pets while they are away and allow hosts or people that can provide pet services an opportunity to build their reputation and give service to others.
### Methodologies used to build the application
- Group project - Pair programming by having someone drive while the other person reviews the code being worked on and assisting the driver with ideas and what to input - Swarming by having all team members collaboratively working on in progress items and finishing it before starting work on new items.
- Agile - Collaborative group development, using Kanban and Scrum to work to set requirements and look over solutions as a team. Having frequent inspections to see the status of everyones progress and promote self-organization and accountability and getting help from others.
- Scrum - a subset of Agile methodology that provides framework to allow adjustments to rapidly-changing requirements by holding a daily scrum meeting where members stand and alloted a brief time to go over to the group about what have they accomplished since last meeting, what they plan to do until the next meeting, and what the is keeping them from doing their job.
 - It's also recommended to play music for sometime before a meeting to signify the Scrum meeting is going to take place and get into Agile/Scrum mindset, and the song we played was Meow Mix since it was related to our project and our team name is Vehement Kitten.
### Lessons Learned
1. When doing layout frontend its important to keep user experience and expectations in mind
2. Do frontend styling after bug fixes
3. Think about error checking when making functions, such as we used checkboxes on our host services and had services in a foreach loop in the jsp, and that had us doing complex logic in the controller and the DAO to prevent errors from showing such as no checkboxes being selected, which it could have been simpler to fix if hardcoding each services since there was not that many choices and doing a required statement
### Stretch Goals
1. Calendar feature for reservations, specifically blocking out dates the host cannot do, and showing what their availability is to users searching for a host
2. Breeding matching, a place for people who want to breed their pet with another, and another stretch goal would be to have filters to be more specific of what they want their pet to breed with
3. A listing of pet events in the area
4. Recipes based on ingredients for what pet friendly recipes they can make for their pet
