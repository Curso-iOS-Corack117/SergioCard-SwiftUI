//
//  ContentView.swift
//  SergioCard
//
//  Created by Sergio Ordaz Romero on 12/09/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(.orange)
                .ignoresSafeArea()
            VStack {
                Image("sergio")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 200, height: 200, alignment: .center)
                    .clipShape(Circle())
                    .overlay {
                        Circle()
                            .stroke(.white, lineWidth: 5)
                    }
                Text("Sergio Ordaz")
                    .font(.custom("Pacifico-Regular", size: 40))
                    .bold()
                    .padding()
                Text("Desarrollador iOS")
                    .foregroundColor(.blue)
                    .font(.system(size: 25))
                Divider()
                InfoView(icon: "phone.fill", content: "+51 5581456247")
                InfoView(icon: "envelope.fill", content: "orcheko@gmail.com")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
