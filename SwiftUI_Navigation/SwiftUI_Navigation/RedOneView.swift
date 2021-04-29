//
//  ContentView.swift
//  SwiftUI_Navigation
//
//  Created by Hiroki Kayanuma on 2021/04/29.
//

import SwiftUI

struct RedOneView: View {
    var body: some View {
        NavigationView {
            VStack {
            CircleNumberView(backgroundColor: .red, number: 1)
                .navigationTitle("Red One")
                .offset(y: -60)
                NavigationLink(
                    destination: BlueTwoView(color: .orange),
                    label: {
                        Text("Next Screen")
                            .bold()
                            .frame(width: 280, height: 50)
                            .background(Color.blue)
                            .foregroundColor(.white)
                            .cornerRadius(10)
                            .font(.system(size: 25))
                    })
            }
        }.accentColor(Color(.label))
    }
}
struct BlueTwoView: View {
    var color: Color
    var body: some View {
            VStack {
            CircleNumberView(backgroundColor: color, number: 2)
                .navigationTitle("Blue Twe")
                .offset(y: -60)
                NavigationLink(
                    destination: GreenThreeView(),
                    label: {
                        Text("Next Screen")
                            .bold()
                            .frame(width: 280, height: 50)
                            .background(Color.green)
                            .foregroundColor(.white)
                            .cornerRadius(10)
                            .font(.system(size: 25))
                    })
            }
    }
}

struct GreenThreeView: View {
    var body: some View {
            VStack {
                CircleNumberView(backgroundColor: .green, number: 3)
                .navigationTitle("Green Three")
                .offset(y: -60)
            }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        RedOneView()
            .preferredColorScheme(.dark)
    }
}


struct CircleNumberView: View {
    
    var backgroundColor: Color
    var number: Int
    
    var body: some View {
        ZStack(content: {
            Circle()
                .frame(width: 200, height: 200)
                .foregroundColor(backgroundColor)
            Text("\(number)")
                .font(.system(size: 80, weight: .bold))
                .foregroundColor(.white)
        })
    }
}

