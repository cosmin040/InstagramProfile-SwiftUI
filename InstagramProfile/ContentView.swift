//
//  ContentView.swift
//  InstagramProfile
//
//  Created by Laptop on 06.05.2022.
//

import SwiftUI

struct SecondView: View {
    var body: some View {
        Color.green
    }
}

struct FirstView: View {
    
    @Environment(\.colorScheme) var colorScheme
    @State private var selectedLogo = "circle.grid.3x3"
    let imageLogo = ["circle.grid.3x3", "play", "person"]
    let layout = [
        GridItem(.flexible(), spacing: 1, alignment: .leading),
        GridItem(.flexible(), spacing: 1, alignment: .center),
        GridItem(.flexible(), spacing: 1, alignment: .trailing)
    ]
    
    var body: some View {
        ScrollView {
            VStack(){
                HStack{
                    Button(action: {}){
                        Image(systemName: "chevron.left")
                            .foregroundColor(colorScheme == .dark ? Color.white : Color.black)
                    }
                    .padding(.leading, 0.0)
                    Spacer()
                    Spacer()
                    Spacer()
                    HStack(alignment: .center){
                        Text("rockstargames").bold()
                        Image("verified_logo")
                            .resizable()
                            .frame(width: 20, height: 15, alignment: .center)
                            .padding(.leading, -6.0)
                    }
                    Spacer()
                    HStack(spacing: 25.0){
                        Image(systemName: "bell")
                        Image(systemName: "ellipsis")
                    }
                    .padding(.trailing, 20.0)
                }
                
                HStack{
                    Image("rockstar")
                        .resizable()
                        .frame(width: 130, height: 130)
                        .clipShape(Circle())
                        .overlay(Circle().stroke(colorScheme == .dark ? Color.black : Color.white, lineWidth: 10))
                        .overlay(Circle().stroke(Color.gray, lineWidth: 2))
                        .padding(.leading, 5.0)
                    Spacer()
                    HStack(spacing: 20.0){
                        VStack{
                            Text("3.789").bold()
                            Text("Postari")
                        }
                        VStack{
                            Text("22.2mil").bold()
                            Text("Urmaritori")
                        }
                        VStack{
                            Text("990").bold()
                            Text("Urmareste")
                        }
                    }
                    .padding(.trailing, 5.0)
                }
                
                VStack(alignment: .leading){
                    Text("Rockstar Games").bold()
                    Text("The official home of Rockstar Games on IG, feat screenshots from upcoming game releases, event photos, favorite fan art from the community & much more")
                    Text("www.rockstargames.com/newswire")
                    Text("Vezi traducerea").bold()
                }
                
                HStack{
                    ZStack(alignment: .leading){
                        Image("playstation")
                            .resizable()
                            .clipShape(Circle())
                            .frame(width: 30, height: 30)
                            .overlay(Circle().stroke(Color.black, lineWidth: 2))
                            .zIndex(3)
                            .padding(.leading, 10)
                        Image("ign")
                            .resizable()
                            .clipShape(Circle())
                            .frame(width: 30, height: 30)
                            .overlay(Circle().stroke(Color.black, lineWidth: 2))
                            .zIndex(2)
                            .padding(.leading, 25)
                        Image("xbox")
                            .resizable()
                            .clipShape(Circle())
                            .frame(width: 30, height: 30)
                            .overlay(Circle().stroke(Color.black, lineWidth: 2))
                            .zIndex(1)
                            .padding(.leading, 40)
                    }
                    HStack(spacing: 5){
                        Text("Urmaritori:")
                        Text("playstation,").bold()
                        Text("igndotcom").bold()
                        Text("si")
                        Text("alti 10").bold()
                    }
                }
                
                HStack{
                    Button(action: {}){
                        HStack(spacing: 5){
                            Text("Urmaresti")
                                .bold()
                                .foregroundColor(colorScheme == .dark ? Color.white : Color.black)
                            Image(systemName: "chevron.down")
                                .resizable()
                                .frame(width: 8, height: 5)
                                .font(Font.title.weight(.bold))
                                .foregroundColor(colorScheme == .dark ? Color.white : Color.black)
                        }
                    }
                    .padding(.vertical, 8.0)
                    .padding(.horizontal, 15)
                    .background(RoundedRectangle(cornerRadius: 5)
                        .stroke(Color.gray, lineWidth: 1))
                    Button(action: {}){
                        Text("Mesaj")
                            .bold()
                            .foregroundColor(colorScheme == .dark ? Color.white : Color.black)
                            .padding(.vertical, 8.0)
                            .padding(.horizontal, 35.0)
                            .background(RoundedRectangle(cornerRadius: 5)
                                .stroke(Color.gray, lineWidth: 1))
                    }
                    Button(action: {}){
                        Text("E-mail")
                            .bold()
                            .foregroundColor(colorScheme == .dark ? Color.white : Color.black)
                            .padding(.vertical, 8.0)
                            .padding(.horizontal, 35.0)
                            .background(RoundedRectangle(cornerRadius: 5)
                                .stroke(Color.gray, lineWidth: 1))
                    }
                    Button(action: {}){
                        Image(systemName: "person.badge.plus")
                            .foregroundColor(colorScheme == .dark ? Color.white : Color.black)
                            .padding(.vertical, 8.0)
                            .padding(.horizontal, 10.0)
                            .background(RoundedRectangle(cornerRadius: 5)
                                .stroke(Color.gray, lineWidth: 1))
                    }
                }.padding(.bottom, 10)
                
                VStack{
                    Picker(selection: $selectedLogo, label: Text("Picker")) {
                        ForEach(imageLogo.indices) { index in
                            Image(systemName: imageLogo[index]).tag(imageLogo[index])
                        }
                    }
                    .pickerStyle(SegmentedPickerStyle())

                    ZStack {
                        if selectedLogo == "circle.grid.3x3"{
                            LazyVGrid(columns: layout, spacing: 1){
                                ForEach(1..<13) {index in
                                    Image("\(index)")
                                        .resizable()
                                        .frame(width: 142, height: 142)
                                }
                            }
                        }else if selectedLogo == "play"{
                            Text("Video")
                        }else if selectedLogo == "person"{
                            Text("Etichete")
                        }
                    }
                    
                }
            }
        }
    }
}

struct ThirdView: View {
    var body: some View {
        Color.red
    }
}

struct ForthView: View {
    var body: some View {
        Color.purple
    }
}

struct FifthView: View {
    var body: some View {
        Color.cyan
    }
}

struct ContentView: View {
    @Environment(\.colorScheme) var colorScheme
    
    init() {
        UITabBar.appearance().backgroundColor = colorScheme == .dark ? UIColor.white : UIColor.black
        UITabBar.appearance().unselectedItemTintColor = colorScheme == .dark ? UIColor.black : UIColor.white
    }
    
    var body: some View {
        TabView{
            FirstView()
                .tabItem{
                    Image(systemName: "house")
                }
            SecondView()
                .tabItem{
                    Image(systemName: "magnifyingglass")
                }
            ThirdView()
                .tabItem{
                    Image(systemName: "airplayvideo")
                }
            ForthView()
                .tabItem{
                    Image(systemName: "bag")
                }
            FifthView()
                .tabItem{
                    Image(systemName: "person.circle")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
    }
}
