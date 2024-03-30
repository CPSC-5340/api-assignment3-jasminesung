//
//  CharacterDetail.swift
//  Assignment3
//
//  Created by Jasmine Sung on 30/3/2024.
//

import SwiftUI

struct CharacterDetail: View {
    var character : CharacterModel
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 10) {
                if !character.name.isEmpty {
                    Text(character.name).font(.system(size: 20))
                }
                if !character.gender.isEmpty {
                    Text(character.gender).font(.system(size: 15))
                }
                if !character.species.isEmpty {
                    Text(character.species).font(.system(size: 15))
                }
                if !character.type.isEmpty {
                    Text(character.type).font(.system(size: 15))
                }
                if !character.image.isEmpty {
                    ImageCardView(url: character.image)
                }
            }.frame(maxWidth: .infinity)
        }
    }
}
//
//#Preview {
//    CharacterDetail()
//}
