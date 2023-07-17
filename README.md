# ToonCards

ToonCards is a project that is designed to bring cartoon characters to "life" by assigning a picture of a real life animal or character that corresponds. 
Below is a video example of Disney's lion king characters assigned pictures of real lions.

The project is designed in SwiftUI. Contributions are welcome. This is a side project but I am commited to seeing it published on the app store and perharps play store.

You can make a simple contribution by navigating to suift_ui_course/Services/DatabaseService.swift and modifying the code in the Database structure. 
Below is a snipet of the Database structure. For order, follow the instructions for your pull request to be accepted. Feel free to make other changes you think improves the quality of the project.

```
struct Database {
    func getData() -> [CardItem] {
        //Here you can add your own card by specifying your own card details to expand the list. You can send me a pull request to add your expansion or modifications to the main branch. Use real life pictures to represent your favourite cartoon characters and do not forget to add the image(s) to the Assets folder
        return [
            ///Lion King Starts here
            CardItem(name: "Mufasa", age: "17", status: "Leader", state: "Dead", notes: "Betrayed and killed by his spiteful brother Scar.", imageString: "lion-wallpaper", opacityDouble: 0.8),
            CardItem(name: "Simba", age: "6", status: "In Exile", state: "Alive", notes: "Was almost killed by his uncle Scar, and was forced into exile.", imageString: "african lion", opacityDouble: 0.8),
            CardItem(name: "Scar", age: "18", status: "Ruler", state: "Alive", notes: "A treacherous uncle and brother who would kill his family for the throne", imageString: "scar", opacityDouble: 0.8),
            CardItem(name: "Ada", age: "Eternal", status: "Spirit", state: "Omnipresent", notes: "An ancient guardian spirit of the forests known to appear in different forms.", imageString: "african scenery", opacityDouble: 0.8)
            
            //If you want to add more lion king characters you can do so above.
            ///If you want to add CardItems for a new series eg tarzan, add it below this comment, then copy and paste this comment after your last CardItem. Do not forget to add your image in the Assets folder and reference it properly in the imageString. happy coding!
        ]
    }
}
```


https://github.com/igbokwenu/ToonCards/assets/68666335/02f8f95d-a101-4f35-a458-e38aab66f068

<img src="https://github.com/igbokwenu/ToonCards/assets/68666335/aa8ae326-9e40-48d6-a577-42b377692b22" width="300" > 
<img src="https://github.com/igbokwenu/ToonCards/assets/68666335/aacdc584-211a-49b0-9c28-8c67ab68f40a" width="300" >
<img src="https://github.com/igbokwenu/ToonCards/assets/68666335/7014bd61-39fa-4b23-a54d-2a8200006185" width="300" >





