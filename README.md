## Dropbox

The purpose of this homework is to use Xcode to implement the flow between the screens of an application. We're going to use the techniques from this week to implement the Dropbox app from the signed out state to the basic signed in state.

Time spent: `6`

### Features

#### Required

- [x] User can tap through the 3 welcome screens.
- [x] User can follow the create user flow.
  - [x] On the create user form, the user can tap the back button to go to the page where they can sign in or create an account.
  - [x] Before creating the account, user can choose to read the terms of service.
  - [x] After creating the account, user can view the placeholders for Files, Photos, and Favorites as well as the Settings screen.
  - [x] User can log out from the Settings screen.
- [x] User can follow the sign in flow.
  - [x] User can tap the area for "Having trouble signing in?".
  - [x] User can log out from the Settings screen.

#### Optional

- [ ] User can view a detail view for one of the files and favorite the file.
- [ ] User can actually type in the forms and tap to dismiss the keyboard.
- [x] User can swipe through the welcome screens instead of just tapping them.
- [ ] User sees updated page indicator dots using page control.
- [ ] User can view actual Dropbox Terms of Service in a web view.
- [ ] User is presented with native action sheet to view and agree with terms of service.
- [ ] User sees updated password strength as they type in password field.

#### The following **additional** features are implemented:

- [x] New account creation pages are all in one view controller, added code to enable/disable the different buttons based on which screen is visible

Please list two areas of the assignment you'd like to **discuss further with your peers** during the next class (examples include better ways to implement something, how to extend your app in certain ways, etc):

1. How can I pass information from one view controller to another view controller? In this project, I want the Sign In Root View Controller to behave differently if it is accessed from the welcome screens, vs. if it is accessed from the sign out button.
2. How do I save a state of a view controller when I leave it and come back to it? For example, if I entered some info in the create account screen but then go back to the welcome screen, is there a way to have that info still be there when I click "create account" again? (This isn't necessarily a good use case for this, but in other situations I may need to save some information entered in a view controller)

### Video Walkthrough 

Here's a walkthrough of implemented user stories:

<img src='http://i.imgur.com/DKSOff8.gif' title='Video Walkthrough' width='' alt='Video Walkthrough' />

GIF created with [LiceCap](http://www.cockos.com/licecap/).

## Notes

Many challenges encountered were just little things in getting used to Xcode. In particular one thing that caused issues was when I created outlets or actions for UI elements, and later didn't need them. It seems like in some cases simply deleting the outlet or action fuction does not remove a reference that is deeper in the code. In once case I had to re-add an empty action function to prevent errors.
Another thing that was tricky is getting scroll views to display as expected, especially when there are navigation bars or tab bars in the view - it seems that sometimes the storyboard view does not match what you will actually see when running the app.

