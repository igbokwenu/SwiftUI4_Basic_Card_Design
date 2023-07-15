//
//  ContentView.swift
//  suift_ui_course
//
//  Created by Increase Okechukwu Divine-Wisdom on 01/07/2023.


import SwiftUI

struct ContentView: View {
    @State private var isHidden = true
   @State var imageSize = 25.0
    @State var year = Calendar.current.component(.year, from: Date())
    @State var opacityNumber: Double = 0.8
    @State private var isToggled = false
      @State private var buttonText = "To Remove Card Opacity, Click Here"
    //Here you can add your own card by specifying your own card details to expand the list. You can send me a pull request to add your expansion or modifications to the main branch. Use real life pictures to represent your favourite cartoon characters and do not forget to add the image(s) to the Assets folder
    var cardItems: [CardItem] = [CardItem]()
    
    
    var body: some View {

        ZStack {
            Image("_uhdtexture72")
                           .resizable()
            VStack {
                if isHidden {
                    Color.clear
                } else {
                    Text("A Project by Okechukwu \(String(year))©").font(.title3).foregroundColor(.white).onAppear {
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

                List(cardItems) { item in
                    if let index = cardItems.firstIndex(where: { $0.id == item.id }) {
                        // Check if it's the first item in the list
                        if index == 0 {
                            // Place your item at the beginning
                            VStack(alignment: .center) {
                                Spacer().frame(height: 50)
                                HStack {
                                    Spacer()
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
                                    Spacer()
                                }
                            }.listRowBackground(Color(.clear))
                        }
                        
                        // Render your custom card here
                        CustomCard(name: item.name, age: item.age, status: item.status, state: item.state, notes: item.notes, imageString: item.imageString, opacityDouble: opacityNumber)
                            .listRowSeparator(.hidden)
                            .listRowBackground(Color(.clear)).onTapGesture {
                                // Code to be executed when the view is tapped
                                if isToggled {
                                    opacityNumber = 0.7
                                    buttonText = "Click To Remove Card Opacity"
                                    isToggled.toggle()
                                    
                                } else {
                                    opacityNumber = 1
                                    buttonText = "Click To Make Card Transparent"
                                    isToggled.toggle()
                                }
                            }
                        
                        // Check if it's the last item in the list
                        if index == cardItems.count - 1 {
                            // Place your item at the end
                            VStack {
                                Text("Designed by Okechukwu in the year \(String(year))")
                                    .fontWeight(.bold).foregroundColor(Color.white)
                                    .multilineTextAlignment(.center)
                                    .padding(.bottom)
                                ReusableButton (buttonText: "Change Year", buttonForegroundColor: Color.black, buttonBackgroundColor: Color.white) {
                                    year = Int.random(in: 1820...1967)
                                    
        
                                }
                                
//                                Button("Change Year") {
//                                        year = Int.random(in: 1820...1967)
//                                        
//            
//                                }
//                                .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
//                                .background(Color.white)
//                                .buttonStyle(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=Button Style@*/DefaultButtonStyle()/*@END_MENU_TOKEN@*/).cornerRadius(10)
                                Spacer().frame(height: 30)
                                    
                            }.listRowBackground(Color(.clear))
                        }
                    }
                }.listStyle(.plain)

        }
        .ignoresSafeArea()
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            
    }
}
