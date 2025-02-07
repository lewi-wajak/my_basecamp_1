# Welcome to My Basecamp 2
***

## Task
This project is a Basecamp-style task management system that allows users to register, authenticate, manage projects, and assign admin roles.  
It includes user authentication, project management, and role-based access control (RBAC).

## Features
 User Registration & Authentication
*User Registration
  - Create a new user account (`User new`, `User create`).
  - View user profile (`User show`).
  - Delete an account (`User destroy`).

*User Sessions
  - Log in (`User sign_in`).
  - Log out (`User Sign_out`).

*Role Permissions
- Set an admin role (`User setAdmin`).
- Remove an admin role (`User removeAdmin`).
- Only admins can manage user roles and access the admin dashboard.

*Project Management
- Create a project (`Project new`).
- **View project details** (`Project show`).
- **Edit an existing project** (`Project edit`).
- **Delete a project** (`Project destroy`).
- Users can own and manage multiple projects.

## Description
We solved the problem by watching the video resource provided and others from youtube. we went as far as reading documentation on rails and understanding how it works in order to understand the concept of it all. and where we find it difficult we call the attention of our guidian.

## Installation
-clone the repository locally to your device.
-navigate to your project folder.
- bundle install
-Set up the Database
    -rails db:create
    -rails db:migrate
    -rails db:seed
-Start the server
    -rails server

NOTE: To make a user admin
    -rails console   
    -user = User.find_by(email: "user email")   # Replace with the user's email
    -user.add_role(:admin) if user.present?


## Usage
*User Registration
    -New users can sign up and create an account.
    -Users can delete their accounts if they wish.
*Authentication
    -Users can log in and log out.
    -Devise handles session management securely.
*Project Management
    -Users can create, edit, and delete projects.
    -Projects are associated with users through a ProjectUser join table.
*Admin Dashboard & Role Management
    -Admins can promote or demote users between normal users and admins.
    -The admin dashboard is only visible if the user has an admin role.
    -The first admin must be created manually via the Rails console, by finding the user first and then assigning the admin role.

*Tech Stack
-Ruby on Rails (Backend)
-Devise (User Authentication)
-Rolify (Role-based Access Control)
-Bootstrap (UI Styling)
-SQLite (Database

### The Core Team
Mr Lewi Wajak Abbai 
Mr Ibrahim Sani Ibrahim



<span><i>Made at <a href='https://qwasar.io'>Qwasar SV -- Software Engineering School</a></i></span>
<span><img alt='Qwasar SV -- Software Engineering School's Logo' src='https://storage.googleapis.com/qwasar-public/qwasar-logo_50x50.png' width='20px' /></span>
