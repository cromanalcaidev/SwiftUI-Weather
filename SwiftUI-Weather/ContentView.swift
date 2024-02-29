//
//  ContentView.swift
//  SwiftUI-Weather
//
//  Created by Carlos Román Alcaide on 29/2/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack { //estamos creando el background de la app, es una capa jerarquizada vertical
            LinearGradient(gradient: Gradient(colors: [.blue, .lightBlue]),
                           startPoint: .topLeading,
                           endPoint: .bottomTrailing)
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/) //ignoramos los bordes y llenamos TODA la pantalla de azul
            VStack {
                Text("Cupertino, CA")
                    .font(.system(size: 32, weight: .medium, design: .default))
                    .foregroundColor(.white)
                    .padding()
                
                VStack(spacing: 10) {
                    Image(systemName: "cloud.sun.fill")
                        .renderingMode(.original)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 180, height: 180)
                    
                    Text("76º")
                        .font(.system(size: 70, weight: .medium))
                        .foregroundColor(.white)
                }
                .padding(.bottom, 40)

                
                HStack(spacing: 20) {
                    WeatherDayView(dayOfWeek: "TUE",
                                   imageName: "cloud.sun.fill",
                                   temperature: 74)
                    
                    WeatherDayView(dayOfWeek: "WED",
                                   imageName: "cloud.sun.bolt.fill",
                                   temperature: 70)
                    
                    WeatherDayView(dayOfWeek: "THU",
                                   imageName: "wind.snow",
                                   temperature: 55)
                    
                    WeatherDayView(dayOfWeek: "FRI",
                                   imageName: "sun.snow.fill",
                                   temperature: 60)
                    
                    WeatherDayView(dayOfWeek: "SAT",
                                   imageName: "cloud.bolt.fill",
                                   temperature: 42)
                }
                Spacer()
            }
        }
    }
}

#Preview {
    ContentView()
}

struct WeatherDayView: View {
    
    var dayOfWeek: String
    var imageName: String
    var temperature: Int
    
    var body: some View {
        VStack {
            Text(dayOfWeek)
                .font(.system(size: 16, weight: .medium, design: .default))
                .foregroundColor(.white)
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 40, height: 40)
            Text("\(temperature)º")
                .font(.system(size: 28, weight: .semibold, design: .default))
                .foregroundColor(.white)
        }
    }
}
