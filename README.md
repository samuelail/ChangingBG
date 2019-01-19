# ChangingBG
A swift class to create an animated backgroud image that changes from day to night based on the time of the day.


## Installation
#### Drag and drop the "Resources" folder into your project
#### Add a UIImageView to yor storyboard
#### Make ChangingBG the custom class of the image view
#### Create an IBOutlet for your imageview in your Viewcontroller.swift file
#### Initialize the Custom function
```swift
background.initialize()
```
![screen shot 2019-01-07 at 12 43 22 pm](https://user-images.githubusercontent.com/34909046/50783824-e3944a80-1279-11e9-95f7-9b9215b3e570.png)

#### To display an emitted image (currently valentine hearts)
```swift
releaseHearts()
```
#### Finally create the releaseHearts() function
```swift
func releaseHearts() {
        let image = UIImage(named: "heart.png")
        let emitter = ChangingBG.getEmitterThat(emits: image!)
        emitter.emitterPosition = CGPoint(x: view.frame.size.width / 2, y: 0)
        emitter.emitterSize = CGSize(width: view.frame.size.width, height: 2.0)
        view.layer.addSublayer(emitter)
    }
```
