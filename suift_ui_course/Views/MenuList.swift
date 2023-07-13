//
//  MenuList.swift
//  suift_ui_course
//
//  Created by Increase Okechukwu Divine-Wisdom on 07/07/2023.
//

import SwiftUI

struct MenuList: View {
    var videos: [String] = ["The death of Mufasa", "Scar tries to kill Simba", "Scar takes over the throne", "Simba returns", "Simba confronts Scar"]
    @State private var itemList: [String] = []
    @State var item: Int = 0
    
    var body: some View {
        VStack {
            
            List(videos, id: \.self) { video in
                Button(video) {
                
                }
            }
            List(itemList, id: \.self) { item in
                          Text(item)
                      }
            ReusableButton (buttonText: "Randomize and Update List", buttonBackgroundColor: Color.brown) {
                item = Int.random(in: 0...4)
                itemList.append(videos[item])
            }
            ReusableButton (buttonText: "Remove Last Item", buttonBackgroundColor: Color.black) {
                item = Int.random(in: 0...4)
                itemList.popLast()
            }
           
                Spacer().frame(height: 30)
        }
    }
}

struct MenuList_Previews: PreviewProvider {
    static var previews: some View {
        MenuList()
    }
}
