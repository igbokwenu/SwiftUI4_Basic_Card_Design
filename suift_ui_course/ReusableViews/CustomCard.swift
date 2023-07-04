//
//  ReusableViews.swift
//  suift_ui_course
//
//  Created by Increase Okechukwu Divine-Wisdom on 04/07/2023.
//

import SwiftUI

struct CustomCard: View {
    var name: String
    var age: String
    var status: String
    var state: String
    var notes: String
    var imageString: String
    var body: some View {
        VStack {
            let dimension: Double = 22
            Image("lion-wallpaper").resizable()
                    .aspectRatio(contentMode: .fit)
                    .cornerRadius(/*@START_MENU_TOKEN@*/15.0/*@END_MENU_TOKEN@*/).padding(/*@START_MENU_TOKEN@*/[.top, .leading, .trailing]/*@END_MENU_TOKEN@*/)
                
            HStack {
                
                Image(systemName: "person.circle").resizable().frame(width: dimension, height: dimension).foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                Text("Name: Mufasa")
                    .font(.title2).foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
            
                Spacer()
                Image(systemName: "arrowshape.turn.up.right").resizable().frame(width: dimension, height: dimension).foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                Text("Age: 17")
                    .font(.title2).foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                  
            }
            .padding(.all)
            HStack {
                Image(systemName: "scribble.variable").resizable().frame(width: dimension, height: dimension).foregroundColor(.orange)
                Text("Status: Leader")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .multilineTextAlignment(.trailing)
                .padding(.top, 1.0).foregroundColor(.orange)
                Spacer()
                Image(systemName: "questionmark.folder").resizable().frame(width: dimension, height: dimension).foregroundColor(.orange)
                Text("State: Dead")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .multilineTextAlignment(.trailing)
                    .padding(.top, 1.0).foregroundColor(.orange)
            }
            .padding(.horizontal)
            HStack {
                Image(systemName: "note.text").resizable().frame(width: dimension, height: dimension).foregroundColor(.blue)
                Text("Cause of death: Betrayed By Brother")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .multilineTextAlignment(.trailing)
                .padding(.top, 1.0).foregroundColor(.blue)
            }
                
                
        }
        .padding(.bottom)
        .background(Color.white.cornerRadius(15))
    }
}

struct ReusableViews_Previews: PreviewProvider {
    static var previews: some View {
        CustomCard()
    }
}
