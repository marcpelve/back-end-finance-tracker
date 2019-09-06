# Finance management tracker - Rails API

## Development documentation

### API - Backend
##### Setup and intialize to local/remote and heroku
Change information, where need be, with proper project name.
   - `config/application.rb` contains app module name
   - `config/database.yml` contains project database name

##### Resource planning
Create resource required for project.
- `User` resource provided for authentication
- `Expense` resource to be created as primary resource
  - Protected resource will require to inherit from Protected Controller


  `Users` -|--< `Expenses`

  **Expenses** belong to **User**

  **User** has many **Expenses**

  <table style="display:inline">
  <th colspan="2" style="text-align:center">Expenses</th>
  <th colspan="2" style="text-align:center">User</th>
  <tr>
  <td>id</td>
  <td>primary key</td>
  <td>id</td>
  <td>primary key</td>
  </tr>
  <tr>
  <td>amount</td>
  <td>integer</td>
  <td>email</td>
  <td>string</td>
  </tr>
  <tr>
  <td>currency</td>
  <td>string</td>
  <td>password</td>
  <td>string</td>
  </tr>
  <tr>
  <td>description</td>
  <td>string</td>
  <td>password_confirmation</td>
  <td>string</td>
  </tr>
  <tr>
  <td>user_id</td>
  <td>foreign key</td>
  <td></td>
  <td></td>
  </tr>
  <tr>
  <td>transaction_date</td>
  <td>date</td>
  <td></td>
  <td></td>
  </tr>
  <tr>
  <td>created_at</td>
  <td>datetime</td>
  <td>created_at</td>
  <td>datetime</td>
  </tr>
  <tr>
  <td>updated_at</td>
  <td>datetime</td>
  <td>updated_at</td>
  <td>datetime</td>
  </tr>
  </table>


##### End Point Testing
Create curl scripts to test routing and resource end points

<ul style="list-style-type:none;">
  <li>get -> #index, #show<li>
  <li>post -> #create</li>
  <li>patch -> #update</li>
  <li>delete -> #destroy</li>
</ul>

#### Potential updates
1. Resource `profile` with to allow more constraints for data manipulation
2. Custom routes and/or queries on route for new data manipulation
3. Use 3rd party API for more app functionality


### Documentation
Produce documentation in the form of a **README**, which must:
1.  [ ] Pin both repositories on GitHub as a Popular Repository
1.  [ ] Each repo will need a README.md file with a link to the other repo and an explanation of the what the app does and how it works.
1.  [ ] Each repo must contain the link to both deployed sites
1.  [ ] Complete the repository `Description` field and `Website` field with a meaningful sentence description of the application and link to the live URL
![github image](https://git.generalassemb.ly/storage/user/3667/files/beae41ae-aaaa-11e7-8867-63958d376a0b)
1.  [ ] List technologies used
1.  [ ] List unsolved problems which would be fixed in future iterations.
1.  [ ] Document your planning and tell a story about your development process and problem-solving strategy.

Your front-end repo's README should also have
1.  [ ] Link to wireframes and user stories.

Your back-end repo's README should also have
1.  [ ] Link to Entity Relationship Diagram (ERD).


As a user, I want to be able to sign in.
As a user, I want to be able to log in.
As a user, I want to be able to change passwords.
As a user, I want to be able to sign out.

As a user, I want to be able to see all my transactions.
As a user, I want to be able to create a transaction.
As a user, I want to be able to edit a transaction.
As a user, I want to be able to delete a transaction.
As a user, I want to be able to set a budget.
As a user, I want to see a very basic budget analysis of the month.



### Auth Specifications
1.  [ ] Signup with email, password, and password confirmation.
1.  [ ] Login with email and password.
1.  [ ] Logout when logged in.
1.  [ ] Change password with current and new password.
1.  [ ] Signup and Signin must only be available to not signed in users.
1.  [ ] Logout and Change password must only be available to signed in users.
1.  [ ] Give feedback to the user after each action's success or failure.
1.  [ ] All forms must clear after submit success and user sign-out
    - [ ] (Optional) Reset form to initial state on failure

### Client Specifications
1.  [ ] Use a front-end Javascript app to communicate with your API (both read and write) and render data that it receives in the browser.
1.  [ ] Use jQuery for DOM manipulation and event handling.
1.  [ ] Use Handlebars for view rendering.
1.  [ ] Have semantically clean HTML and CSS
1.  [ ] User must be able to create a new resource
1.  [ ] User must be able to update a resource
1.  [ ] User must be able to delete a resource
1.  [ ] User must be able to view a single or multiple resource(s)
1.  [ ] All resource actions that change data must only be available to a signed in user.
1.  [ ] Give feedback to the user after each action's success or failure.
1.  [ ] All forms must clear after submit success and user sign-out
    - [ ] (Optional) Reset form to initial state on failure


### API Specifications
1.  [ ] Build an API using Ruby on Rails and Postgresql.
1.  [ ] Create at least 4 RESTful routes for handling GET, POST, PUT/PATCH, and DELETE requests.
1.  [ ] Any actions which change data must be authenticated and the data must be "owned" by the user performing the change.
1.  [ ] Have at least 1 resource that has a relationship to User

### DO NOT!!
Your app **must not**:
1.  [ ]   Delete your repository at any time or start over.
1.  [ ]   Rely on refreshing the page for any functionality.
1.  [ ]   Have any user-facing bugs.
    - [ ] Display non-functional buttons, nor buttons that do not successfully complete a task.
    - [ ] Show actions at inappropriate times (example:  change password form when a user is not signed in).
    - [ ] Forms not clearing at appropriate times (example: sign up form not clearing after success).
1.  [ ]   Use alerts for anything.
1.  [ ]   Display errors or warnings in the console.
1.  [ ]   Display debugging messages in the console.
