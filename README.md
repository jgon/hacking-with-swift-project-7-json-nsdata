# Hacking with Swift - Project 7 - Whitehouse Petitions: JSON and NSData

# Setup
- XCode 7.2.1
- Swift 2.0
- iOS 9.2
- iPad

## Topics covered

- Adding a ```UITabBarController``` to a project using the Master Detail template.
Selecting the Master Navigation controller and from Xcode menu ```Editor -> Embed In -> Tab Bar Controller```.
The Master navigation controller storyboard id is set to ```NavController``` in order to later be able to programmatically create another instance.
- Downloading JSON data using ```NSURL(string: urlString)``` and ```NSData(contentsOfURL: url, options: [])```.
- Parsing JSON data using [SwiftyJSON](https://github.com/SwiftyJSON/SwiftyJSON).
- Modifying the project info.plist to allow insecure HTTP loads. Although after verification it does work without in this example.
- Replacing the default detail view with Web view (```WKWebView```) to render HTML (```WKwebView.loadHTMLString```)
- Creating a second master navigation controller with master view programmatically using ```UIStoryboard.storyboard.instantiateViewControllerWithIdentifier``` and adding in to a ```UITabBarController``` (```tabBarController.viewControllers?.append```).
- Using ```tag``` to differentiate view controllers.
