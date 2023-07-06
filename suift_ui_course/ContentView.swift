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
    //Here you can add your own card by specifying 
    var cardItems: [CardItem] = [
        CardItem(name: "Mufasa", age: "17", status: "Leader", state: "Dead", notes: "Betrayed and killed by his spieful brother Scar.", imageString: "lion-wallpaper", opacityDouble: 0.8),
        CardItem(name: "Simba", age: "6", status: "In Exile", state: "Alive", notes: "Was almost killed by his uncle Scar, and was forced into exile.", imageString: "african lion", opacityDouble: 0.8),
        CardItem(name: "Scar", age: "18", status: "Ruler", state: "Alive", notes: "A treacherous uncle and brother who would kill his family for the throne", imageString: "lion_bloody", opacityDouble: 0.8),
        CardItem(name: "Ada", age: "Eternal", status: "Spirit", state: "Omnipresent", notes: "An ancient guardian spirit of the forests known to appear in different forms.", imageString: "african scenery", opacityDouble: 0.8)]
    
    
    var body: some View {

        ZStack {
            Image("_uhdtexture72")
                           .resizable()
            VStack {
                if isHidden {
                    Color.clear
                } else {
                    Text("Designed by Okechukwu \(String(year))©").font(.title3).foregroundColor(.white).onAppear {
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
            
            
            
            
                                Button("Change Year") {
                                        year = Int.random(in: 1820...1967)
                                        print("Button pressed")
            
                                }
                                .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                                .background(Color.white)
                                .buttonStyle(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=Button Style@*/DefaultButtonStyle()/*@END_MENU_TOKEN@*/).cornerRadius(10)
                                Spacer().frame(height: 30)
                                    
                            }.listRowBackground(Color(.clear))
                        }
                    }
                }.listStyle(.plain)

//                    Button {
//                        imageSize = Double.random(in: 20...135)
//
//                        print("I was clicked")
//                    } label: {
//                        HStack{
//                            Image(systemName: "car").resizable().frame(width: imageSize, height: imageSize).foregroundColor(Color.white)
//                            Text("Car Size: \(Int(imageSize.nextDown))").foregroundColor(Color.white)
//
//                        }
//                    }
//                    .padding(.top)
//
//
//                }
//                .padding()
//            }
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
