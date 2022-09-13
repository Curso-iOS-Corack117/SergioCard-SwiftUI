//
//  InfoView.swift
//  SergioCard
//
//  Created by Sergio Ordaz Romero on 12/09/22.
//

import SwiftUI

struct InfoView: View {
    let icon: String
    let content: String
    
    var body: some View {
        RoundedRectangle(cornerRadius: 10)
            .fill(.white)
            .frame(width: 300, height: 50, alignment: .center)
            .overlay {
                HStack {
                    Image(systemName: icon)
                        .foregroundColor(.green)
                    Text(content)
                    
                }
                .padding(.all)
            }
    }
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView(icon: "phone.fill", content: "+52 5581456247")
            .previewLayout(.sizeThatFits)
    }
}
