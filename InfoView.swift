//
//  InfoView.swift
//  Hyeon Card
//
//  Created by Hyeon Kim on 2020/03/27.
//  Copyright © 2020 Hyeon Kim. All rights reserved.
//

import SwiftUI

struct InfoView: View {
    
    let name: String
    let imageName: String
    
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .frame(height: 50)
            .foregroundColor(.white)
            .overlay(HStack {
                Image(systemName: imageName)
                    .foregroundColor(.green)
                Text(name)
            })
    }
}


struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView(name: "Defalt", imageName: "envelope.fill")
            .previewLayout(.sizeThatFits)
    }
}
