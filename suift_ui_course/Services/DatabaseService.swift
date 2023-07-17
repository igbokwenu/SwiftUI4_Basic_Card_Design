//
//  DatabaseService.swift
//  suift_ui_course
//
//  Created by Increase Okechukwu Divine-Wisdom on 15/07/2023.
//

import Foundation

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
            ///If you want to add CardItems for a new series eg tarzan, add it below this line, then copy and paste this triple quote comment text after your last CardItem. Do not forget to add your image in the Assets folder and reference it properly in the imageString. happy coding!
        ]
    }
}
