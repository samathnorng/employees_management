# Employee Management System 
Employee Management System is the 3-Tier web application, which was created for simplifying task managing and other daily routines which are everyday life in many companies. 

<br>

<p align="center">
  <img src="https://github.com/samathnorng/employees_management/blob/main/Screenshots/02.PNG">
</p>

<br>

## Tech stack:
### Frontend: 
+ Angular CLI v. 10
+ Angular Material UI Component library (mat-table, mat-buttons, mat-dialog, color theme Indigo-pink).
+ Toastr notifications

### Backend: [link to Backend](https://github.com/samathnorng/employees_management/tree/main/ems_backend)
+ Spring Boot
+ Spring Data JPA
+ Spring Security
+ PosgreSQL database
+ API secured by Spring Security and JWT generated token.
+ API docummented by Swagger

## Frontend-Backend communication:
For comunication purposes REST API in JSON format is used. API uses 5 methods of HTTP protocol: GET, POST, PUT, PATCH, and DELETE

## Detailed app description

The app offers two roles of the users: normal user and admin. As app was initially created as intern system, adding new users (who are basically employees at the same time) function is only limited to accounts which have "ADMIN" priviledges. Every user need to log in to grant access to app functionality:

<br>

<p align="center">
  <img src="https://github.com/samathnorng/employees_management/blob/main/Screenshots/01.PNG">
</p>

<br>

Login with bad credentials is impossible, which is indicated by Toastr non-blocking notification:

<br>

<p align="center">
  <img src="https://github.com/samathnorng/employees_management/blob/main/Screenshots/03.PNG">
</p>

<br>

App layout consists of sliding side navigation menu, which enables access to different functionality, from which the most important is edit profile and tasks. Edit profile simply allows to change user credentials (first name, last name, email or password). As app uses JWT token to authorize users, every change in credentials is followed by logout from system action and login request, as token is no loger valid.

<p align="center">
  <img src="https://github.com/samathnorng/employees_management/blob/main/Screenshots/04.PNG">
</p>

### User role app functionality
Task module enables user to see, what tasks are assigned to him by admin and which of them have "NEW" status. After completing task, user can mark it as "DONE":

<br>

<p align="center">
  <img src="https://github.com/samathnorng/employees_management/blob/main/Screenshots/05.PNG">
</p>

<br>


Admin can assign task to employee, edit task, and change task status from "DONE" to "NEW" as well as unassign. As tasks and employees are stored in DB using 1:N relationship, deleting particular empolyee indicates that all of his tasks become automatically unassigned.

There is also dashboard card for admin:

<br>

<p align="center">
  <img src="https://github.com/rwedzony/EmployeeManagementSystem_Front/blob/master/src/assets/img/admin_dashboard.png">
</p>

<br>

which serves admin basic inforamtions of the current company state. This means how many employees are currently in DB, what is the sum of their salary. Also the detailed information about all system tasks is delivered: How many, how many of them are currently assigned / unassigned, how many has "NEW" as well as "DONE" status.

## TODO
1. Add unit tests
2. Add Vacation planning calendar
3. Refactor components
4. Add separate app docs instead of readme
