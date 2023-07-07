//
//  Buttons.swift
//  suift_ui_course
//
//  Created by Increase Okechukwu Divine-Wisdom on 08/07/2023.
//

import SwiftUI

struct ReusableButton: View {
    var buttonText:String = "Button Text"
    var buttonForegroundColor = Color.white
    var buttonBackgroundColor = Color.black
    var onClicked: () -> Void = {
        print("Reusable button clicked")
    }
    var body: some View {
        Button(buttonText) {
        onClicked()
        }.padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            .background(buttonBackgroundColor).cornerRadius(10).foregroundColor(buttonForegroundColor)
    }
}

struct Buttons_Previews: PreviewProvider {
   
    static var previews: some View {
        ReusableButton {
           
        }
    }
}
