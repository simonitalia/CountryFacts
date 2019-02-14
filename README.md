# Application Name
Country Facts

# Course
Hacking with Swift

# Education supplier
This iOS app is developed as a "self challenge" project in the iBook tutorial "Hacking with Swift" which forms part of the "Hacking with Swift" tutorial series, authored by Paul Hudson. Self challenges are apps developed from scratch, solo and un-assisted. The requirements are provided by the instructor in text base, list form. Some helpful hints are sometimes provided.

# Project Type
Self challenge

# Topics / milestones
- JSON data / JSONDecoder

- Custom Delegate (and Protocol) design pattern

- Custom classes

- UITableViewController

- WebKit and WKWebView

- NavigationContoller and UIBarButtonItem

- ActivityViewController (Share button)

# Project goals / instructions

Your challenge is to make an app that contains facts about countries: 
- show a list of country names in a table view, then when one is tapped bring in a new screen that contains its capital city, size, population, currency, and any other facts that interest you. The type of facts you include is down to you – Wikipedia has a huge selection to choose from.

- To make this app, I would recommend you blend parts of project 1, project 4, and project 7. That means showing the country names in a table view, then showing the detailed information in a web view. You could make the detail view controller a table view too, but it might prove tricky – perhaps try it and see how you do?

- How you load data into the app is going to be an interesting problem for you to solve. I suggested project 7 above because a sensible approach would be to create a JSON file with your facts in, then load that in using contentsOfFile and parse it using SwiftyJSON. Regardless of how you end up solving this, I suggest you don’t just hard-code it into the app – i.e., typing all the facts manually into your Swift code. You’re better than that!
- Before you start, here’s a tip that will probably be useful: - once you have a string containing JSON, you can convert it to a Data object using yourString.data(using: String.Encoding.utf8).

</br> <strong> Additional hints: </strong> </br>
Go ahead and try coding it now. If you hit problems, here are some hints:</br>
• You will need to copy the SwiftyJSON.swift file from project 7.</br>
• You should create a custom Country class that has properties for each of the facts you
have in your JSON file. You can then have a [Country] array in your view controller.</br>
• Make sure you use import WebKit in your detail view controller, so you have access to
the WKWebView class for HTML rendering.</br>
• If you try to use a table view in your detail view controller, try setting the numberOfLines
property of the cell’s text label to be 0. That ought to allow the cell to fill up to two lines of
text by default.</br>
• You don’t need to use complicated HTML to make your layout work; just using
www.hackingwithswift.com 51
Milestone 6: Core Image and Core Animation
Just basic html for paragraphs, and to put things in bold
ought to be enough.</br>
• Don’t forget all the little UI touches: adding a disclosure indicator to the countries table,
adding titles to the navigation controller, and so on. You could even add an action button to the detail view that shares a fact about the selected country.

# Stretch goals
Some features included are not part of the guided project, but are added as stretch goals. Stretch goals apply learned knowledge to accomplish and are completed unassisted. Stretch goals may either be suggested by the teaching instructor or self imposed. Strecth goals / features implemented (if any) will be listed here.

- Create custom JSON data file (written with Atom text editor. Parse tested with https://jsoneditoronline.org) (self imposed)

- Navigation Bar titles (suggested)

- Disclosure indicators (suggested)

- HTML presentation markup (suggested)


# Completed
January, 2019
