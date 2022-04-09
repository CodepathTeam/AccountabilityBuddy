
# AccountabilityBuddy

## Table of Contents
1. [Overview](#Overview)
1. [Product Spec](#Product-Spec)
1. [Wireframes](#Wireframes) 
2. [Schema](#Schema)
3. [Networking](#Networking)
## Overview
### Description
It is hard starting something new, and finding someone who is going through the same journey could be hard. By connecting with people who are going through the same journey you can learn and keep each other accountable. We could also had real coaches who can teach the people in the journey the best way to progress. There could also be a social forum posting place for people to learn about different topics they want to work on.

### App Evaluation
- **Category:** Social Networking / Productivity
- **Mobile:** This app would be primarily developed for mobile
- **Story:** A habit and goal tracking app that matches you with another person on the same journey so that you can keep each other accountable.
- **Market:** Any individual could choose to use this app, but it's focused on adults who want to keep habits.
- **Scope:** The user can look for it's contacts and send them a goal, then a goal is created were the two users can see the progress of each other.

## Product Spec
### 1. User Stories (Required and Optional)

**Required Must-have Stories**

* User logs in to access account and contacts
* User creates a goal and it's able to send it.
* There will be a forum to see good habits and health tips
* Profile pages for each user
* Settings (Accesibility, Notification, General, etc.)

### 2. Screen Archetypes

* Login 
* Register - User signs up or logs into their account
   * Upon Download/Reopening of the application, the user is prompted to log in to gain access to their profile information.
   * ...
* Profile Screen 
   * Allows user to upload a photo and fill in information that is interesting to them and others
* Goal screen
   * User has a variety of options to create a goal : daily/monthly/weekly, min/hours/days, name of the goal, etc.
* Settings Screen
   * Lets people change language, and app notification settings.

### 3. Navigation

**Tab Navigation** (Tab to Screen)

* Contacts
* Profile
* Settings

**Flow Navigation** (Screen to Screen)
* Forced Log-in -> Account creation if no log in is available
* Create Goal
* Goal Tracker
* Profile -> Text field to be modified. 
*Contacts-> Search contacts
*Forum 
* Settings -> Toggle settings


## Schema
### Models
 
<html xmlns:o="urn:schemas-microsoft-com:office:office"
xmlns:w="urn:schemas-microsoft-com:office:word"
xmlns:m="http://schemas.microsoft.com/office/2004/12/omml"
xmlns="http://www.w3.org/TR/REC-html40"><p class="MsoNormal" style="margin: 0.25in 0in 12pt; font-size: medium; font-family: Calibri, sans-serif; caret-color: rgb(0, 0, 0); color: rgb(0, 0, 0); font-style: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px; text-decoration: none;"><b><span style="font-family: &quot;Segoe UI&quot;, sans-serif; color: rgb(36, 41, 47);">Goal<o:p></o:p></span></b></p>

Property | Type | Description
-- | -- | --
goalId | String | unique id for the user goal (default field)
author | Pointer to User | image autor
user | Pointer to User | Identifier for which user is updating a goal
goalTitle | String | Caption of the goal
completionCount | Number | Number of completion/frequency of a goal (daily/weekly/monthly)
createdAt | DateTime | date when post is created (default field)
updatedAt | DateTime | date when post is last updated (default field)
barImage | File | Bar for each user, that increases every time the goal is uptated.

<p class="MsoNormal" style="margin: 0in; font-size: medium; font-family: Calibri, sans-serif; caret-color: rgb(0, 0, 0); color: rgb(0, 0, 0); font-style: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px; text-decoration: none;"><span lang="EN-US"><o:p> </o:p></span></p></html>


## Wireframes
### Digital Wireframes & Mockups
<img src="https://i.postimg.cc/jqgyDszX/865a63a23f176f0cf311b9ee3d366bf6.png" height=200>

## Networking
### Network Requests Outline
* Home Screen
* (Read/GET) Query all goals where user is a buddy
* (Create/POST) Create a new goal for a user
* (Delete) Delete existing goal
* (Create/POST) Create a new user on a goal
* (Delete) Delete existing goal
* Create Goal Screen
* (Create/POST) Create a new goal object
* Profile Screen
* (Read/GET) Query logged in user object
* (Update/PUT) Update user profile image

### Parse Query code snippet
* // iOS
* // (Read/GET) Query all goals where user is author
* let query = PFQuery(className:"Goal")
* query.whereKey("author", equalTo: currentUser)
* query.order(byDescending: "createdAt")
* query.findObjectsInBackground { (posts: [PFObject]?, error: Error?) in
*    if let error = error {
*       print(error.localizedDescription)
*    } else if let goals = goals {
*       print("Successfully retrieved \(posts.count) posts.")
*       // TODO: Do something with posts...
*    }
* }

##Gift progress



