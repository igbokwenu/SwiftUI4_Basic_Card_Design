//
//  CardInfo.swift
//  suift_ui_course
//
//  Created by Increase Okechukwu Divine-Wisdom on 06/07/2023.
//

import Foundation
// The Identifiable protocol lets the system know that this structure should conform to the Identifiable protocol
struct CardItem: Identifiable {
    /* The id property below makes this structure to actually conform to the Identifiable protocol by creating a variable of type UUID and assigning each instance of the CardItem a universal unique ID (Thats's what the = UUID() does). This will help swift sort out the items in a loop.
    */
    var id: UUID = UUID()
    var name:String
    var age:String
    var status:String
    var state:String
    var notes:String
    var imageString:String
    var opacityDouble:Double
}
