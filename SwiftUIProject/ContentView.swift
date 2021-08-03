//
//  ContentView.swift
//  SwiftUIProject
//
//  Created by Mihail on 03.08.2021.
//

import SwiftUI

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct ContentView: View {
    
    @State var isOn = false
    @State var isEditing = false
    @State var speed = 50.0
    
    var body: some View {
        NavigationView {
            VStack {
                Toggle("Toggle", isOn: $isOn)
                Text("\(isOn.description)").foregroundColor(isOn ? .black : .red)
                Slider(value: $speed, in: 0...100, onEditingChanged: { editing in
                    self.isEditing = editing
                })
                Text("\(speed)").foregroundColor(isEditing ? .green : .black)
                NavigationLink(
                    destination: SecondView(),
                    label: {
                        Text("Navigate to SecondView")
                    })
                NavigationLink(
                    destination: ThirdView(),
                    label: {
                        Text("Navigate to ThirdView")
                    })
            }.padding()
        }
    }
}

struct SecondView: View {
    var body: some View {
        VStack {
            Text("TitleText").modifier(Title())
            Text("MainText").modifier(MainText())
        }.padding()
    }
}

struct ThirdView: View {
    @State var email = ""
    @State var password = ""
    
    var body: some View {
        VStack {
            Image("logo")
                .resizable()
                .frame(width: 120.0, height: 120.0)
            TextField("Email or phone", text: $email)
                .padding()
                .overlay(
                    RoundedRectangle(cornerRadius: 10.0)
                            .strokeBorder(Color.black, style: StrokeStyle(lineWidth: 1.0)))
                .padding()
            TextField("Password", text: $password)
                .padding()
                .overlay(
                    RoundedRectangle(cornerRadius: 10.0)
                            .strokeBorder(Color.black, style: StrokeStyle(lineWidth: 1.0)))
                .padding()
            
            TabView {
               Text("")
                 .tabItem {
                    Image(systemName: "house.fill")
                    Text("Feed")
                  }
                Text("")
                  .tabItem {
                     Image(systemName: "person.fill")
                     Text("Profile")
                   }
                Text("")
                  .tabItem {
                     Image(systemName: "music.note")
                     Text("Player")
                   }
                Text("")
                  .tabItem {
                     Image(systemName: "play.fill")
                     Text("Video")
                   }
                Text("")
                  .tabItem {
                     Image(systemName: "mic.fill")
                     Text("Recorder")
                   }
            }
        }
    }
}
