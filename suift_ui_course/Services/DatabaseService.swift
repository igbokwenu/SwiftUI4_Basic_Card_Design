//
//  DatabaseService.swift
//  suift_ui_course
//
//  Created by Increase Okechukwu Divine-Wisdom on 15/07/2023.
//

import Foundation

struct Database {
    func getData() -> [CardItem] {
        return [
            CardItem(name: "Mufasa", age: "17", status: "Leader", state: "Dead", notes: "Betrayed and killed by his spiteful brother Scar.", imageString: "lion-wallpaper", opacityDouble: 0.8),
            CardItem(name: "Simba", age: "6", status: "In Exile", state: "Alive", notes: "Was almost killed by his uncle Scar, and was forced into exile.", imageString: "african lion", opacityDouble: 0.8),
            CardItem(name: "Scar", age: "18", status: "Ruler", state: "Alive", notes: "A treacherous uncle and brother who would kill his family for the throne", imageString: "scar", opacityDouble: 0.8),
            CardItem(name: "Ada", age: "Eternal", status: "Spirit", state: "Omnipresent", notes: "An ancient guardian spirit of the forests known to appear in different forms.", imageString: "african scenery", opacityDouble: 0.8)]
    }
}
