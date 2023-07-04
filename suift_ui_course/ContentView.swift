//
//  ContentView.swift
//  suift_ui_course
//
//  Created by Increase Okechukwu Divine-Wisdom on 01/07/2023.


import SwiftUI

struct ContentView: View {
   @State var imageSize = 25.0
    @State var age: Int = 33
    var body: some View {
        let names: String = "Increase Okechukwu"
        
// Note: -ZStack
       
        ZStack {
            let dimension: Double = 22
            Color.teal
            
            
            VStack(alignment: .center) {
                VStack {
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
                
                
                Image(systemName: "globe")
                    .padding(.bottom)
                    .imageScale(.large)
                    .foregroundColor(.accentColor)
                Text("Hello, \(names) to the new world of wonders! Age is \(age)!")
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                    .padding(.bottom, 1.0)
                
                
                Text("Hello People").font(.headline).fontWeight(.heavy)
                Button("Press Me") {
    //                if age > 32 {
                        age = Int.random(in: 30...45)
                        print("Button pressed")
    //                }
                    
                }
                .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color.black/*@END_MENU_TOKEN@*/)
                .buttonStyle(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=Button Style@*/DefaultButtonStyle()/*@END_MENU_TOKEN@*/).cornerRadius(10)
                Button {
                    imageSize = Double.random(in: 20...35)
                    
                    print("I was clicked")
                } label: {
                    HStack{
                        Image(systemName: "car").resizable().frame(width: imageSize, height: imageSize)
                        Text("Size: \(Int(imageSize.nextDown))")

                    }
                }
                .padding(.top)

                
            }
            .padding()
        }
        .ignoresSafeArea()
        
        
    }
}



struct ContentView2: View {
    let items = Array(1...10) // Sample data
    @State private var selectedItem: Int = 0

    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 20) {
                ForEach(items, id: \.self) { item in
                    Text("\(item)")
                        .font(.title)
                        .foregroundColor(.white)
                        .frame(width: 100, height: 100)
                        .background(Color.blue)
                        .cornerRadius(10)
                        .scaleEffect(item == selectedItem ? 1.5 : 1)
                        .onTapGesture {
                            withAnimation {
                                selectedItem = item
                            }
                        }
                }
            }
            .padding()
        }
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            
    }
}
