//
//  CustomCardViewModel.swift
//  suift_ui_course
//
//  Created by Increase Okechukwu Divine-Wisdom on 15/07/2023.
//

import SwiftUI

struct CustomCardViewModel: View {
    @StateObject private var opacityModel = OpacityModel()
    
    var item: CardItem
    var body: some View {
        CustomCard(name: item.name, age: item.age, status: item.status, state: item.state, notes: item.notes, imageString: item.imageString, opacityDouble: opacityModel.opacityDouble)
    }
}

struct CustomCardViewModel_Previews: PreviewProvider {
    @StateObject private var opacityModel = OpacityModel()
    static var previews: some View {
        CustomCardViewModel(item: CardItem(name: "Ada", age: "Eternal", status: "Spirit", state: "Omnipresent", notes: "Adanna is the guardian spirit of the forests of the earth. She is known to appear in different forms throughout human history", imageString: "african scenery", opacityDouble: 0.8))
    }
}
