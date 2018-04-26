**Ruby on Rails Project 2 Write-up**

Title: RecipeMate
Team Members: Kevin (Taehyung) Kim, Kristine Lin
Demo Link: 

Idea: An application in which users can share and comment on food recipes created by either themselves or other users on the platform. 

Models and Description:
User: 
- has a first name, last name, email, password
- has many recipes and comments

Recipe: 
- Has a name, description, instructions on how to make it, time to make
- belongs to a user, has many comments

Comment:
- has text and belongs to both user and recipe

Features:
- Users can login/signup
- Users can create and search recipes
- Users can comment on recipes
- Users can change password, update profile
- Users can logout

Division of Labor:
- Kristine: Views, controllers, seed, recipe search. 
- Kevin: Models, controllers, relationships, views, login, comments
