//
//  ReusableViews.swift
//  suift_ui_course
//
//  Created by Increase Okechukwu Divine-Wisdom on 04/07/2023.
//

import SwiftUI

struct CustomCard: View {

    
    @State private var isHidden = true
    var name: String = ""
    var age: String = ""
    var status: String = ""
    var state: String = ""
    var notes: String = ""
    var imageString: String = "lion-wallpaper"
    var opacityDouble: Double = 0.8
    @State private var isZoomed = false
    var body: some View {
        let dimension: Double = 22
        
        VStack{
            if isHidden {
                VStack {
                            Image(imageString).resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .cornerRadius(/*@START_MENU_TOKEN@*/15.0/*@END_MENU_TOKEN@*/).padding(/*@START_MENU_TOKEN@*/[.top, .leading, .trailing]/*@END_MENU_TOKEN@*/)
                                
                            HStack {
                                
                                Image(systemName: "person.circle").resizable().frame(width: dimension, height: dimension).foregroundColor(.orange)
                                Text("Name: \(name)")
                                    .font(.title2).foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                            
                                Spacer()
                                Image(systemName: "arrowshape.turn.up.right").resizable().frame(width: dimension, height: dimension).foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                                Text("Age: \(age)")
                                    .font(.title2).foregroundColor(.brown)
                                  
                            }
                            .padding(.all)
                            HStack {
                                Image(systemName: "scribble.variable").resizable().frame(width: dimension, height: dimension).foregroundColor(.blue)
                                Text("Status: \(status)")
                                    .font(.subheadline)
                                    .fontWeight(.semibold)
                                    .multilineTextAlignment(.trailing)
                                .padding(.top, 1.0).foregroundColor(.black)
                                Spacer()
                                Image(systemName: "questionmark.folder").resizable().frame(width: dimension, height: dimension).foregroundColor(.orange)
                                Text("State: \(state)")
                                    .font(.subheadline)
                                    .fontWeight(.semibold)
                                    .multilineTextAlignment(.trailing)
                                    .padding(.top, 1.0).foregroundColor(.black)
                            }
                            .padding(.horizontal)
                            HStack {
                                Image(systemName: "note.text").resizable().frame(width: dimension, height: dimension).foregroundColor(.green)
                                Text(notes)
                                    .font(.subheadline)
                                    .fontWeight(.semibold)
                                    .multilineTextAlignment(.leading)
                                    .padding(.top, 1.0).foregroundColor(.black.opacity(0.7))
                            }
                                
                                
                        }
                        .padding(.all, 10)
                        .background(Color.white.opacity(opacityDouble).cornerRadius(15)).shadow(radius: 10)
            } else {
                Color.pink
                    .frame(width: 10, height: 60)
                    .opacity(0)
                    .onAppear {
                        withAnimation(Animation.easeInOut(duration: 1.0).delay(2.0)) {
                            isHidden.toggle()
                        }
                    }
                            }
        }.onAppear {
            withAnimation {
                isHidden.toggle()
            }
        }
                    }
        }



//let f = CustomCard(name: "")

struct ReusableViews_Previews: PreviewProvider {
    static var previews: some View {
//        ContentView3()
        CustomCard(name: "Ada", age: "Eternal", status: "Spirit", state: "Omnipresent", notes: "Adanna is the guardian spirit of the forests of the earth. She is known to appear in different forms throughout human history", imageString: "african scenery")
    }
}
