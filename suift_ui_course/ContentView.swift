//
//  ContentView.swift
//  suift_ui_course
//
//  Created by Increase Okechukwu Divine-Wisdom on 01/07/2023.


import SwiftUI

struct ContentView: View {
   @State var imageSize = 25.0
    @State var year = Calendar.current.component(.year, from: Date())
    @State var opacityNumber: Double = 0.8
    @State private var isToggled = false
      @State private var buttonText = "To Remove Card Opacity, Click Here"
 
    
    var body: some View {
        let names: String = "Okechukwu"
       
        ZStack {
            Image("_uhdtexture72")
                           .resizable()
            
            
            ScrollView (showsIndicators: true) {
                VStack(alignment: .center) {
                    Spacer().frame(height: 30)
                    Button(buttonText) {
                        if isToggled {
                            opacityNumber = 0.7
                            buttonText = "Click To Remove Card Opacity"
                            isToggled.toggle()
                          
                        } else {
                            opacityNumber = 1
                            buttonText = "Click To Make Card Transparent"
                            isToggled.toggle()
                        }
                        
                    }.padding(.all, 8.0).background(Color.white).cornerRadius(15).opacity(opacityNumber)
     
                    /// Grouped CustomCard: Will use a looop for the view later
                    Group{
                        CustomCard(name: "Mufasa", age: "17", status: "Leader", state: "Dead", notes: "Betrayed and killed by his spieful brother Scar.", imageString: "lion-wallpaper", opacityDouble: opacityNumber)
                        CustomCard(name: "Simba", age: "6", status: "In Exile", state: "Alive", notes: "Was almost killed by his uncle Scar, and was forced into exile.", imageString: "african lion", opacityDouble: opacityNumber)
            
                        CustomCard(name: "Scar", age: "18", status: "Ruler", state: "Alive", notes: "A treacherous uncle and brother who would kill his family for the throne", imageString: "lion_bloody", opacityDouble: opacityNumber)
                        CustomCard(name: "Ada", age: "Eternal", status: "Spirit", state: "Omnipresent", notes: "An ancient guardian spirit of the forests known to appear in different forms.", imageString: "african scenery", opacityDouble: opacityNumber)
                            .padding(.bottom)
                    }
                    Text("Designed by \(names) in the year \(String(year))")
                        .fontWeight(.bold).foregroundColor(Color.white)
                        .multilineTextAlignment(.center)
                        
                    
                    
                
                    Button("Change Year") {
                            year = Int.random(in: 1820...1967)
                            print("Button pressed")
                        
                    }
                    .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                    .background(Color.white)
                    .buttonStyle(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=Button Style@*/DefaultButtonStyle()/*@END_MENU_TOKEN@*/).cornerRadius(10)
                    Button {
                        imageSize = Double.random(in: 20...135)
                        
                        print("I was clicked")
                    } label: {
                        HStack{
                            Image(systemName: "car").resizable().frame(width: imageSize, height: imageSize).foregroundColor(Color.white)
                            Text("Car Size: \(Int(imageSize.nextDown))").foregroundColor(Color.white)

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
        ScrollView(.horizontal, showsIndicators: true) {
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
