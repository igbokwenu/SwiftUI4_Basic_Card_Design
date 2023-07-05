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
            
//            Color.teal
            
            
            
            ScrollView {
                VStack(alignment: .center) {
                    Spacer().frame(height: 30)
                    
                    CustomCard(name: "Mufasa", age: "17", status: "Leader", state: "Dead", notes: "Was setup, betrayed and killed by his brother Scar.", imageString: "lion-wallpaper")
                    
        
                    CustomCard(name: "Simba", age: "6", status: "In Exile", state: "Alive", notes: "Was setup by his uncle Scar, and was forced to go into exile.", imageString: "african lion")
                    
                    CustomCard(name: "Ada", age: "Eternal", status: "Spirit", state: "Omnipresent", notes: "An ancient guardian spirit of the forests known to appear in different forms.", imageString: "african scenery")
                    
                   
                   
                    
                    
               
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
