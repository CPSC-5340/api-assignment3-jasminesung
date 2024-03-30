//
//  Characters.swift
//  Assignment3
//
//  Created by Jasmine Sung on 30/3/2024.
//

import SwiftUI

struct Characters: View {
    @ObservedObject var charactersvm = CharactersViewModel()
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(charactersvm.characterData) {
                    character in NavigationLink {
                        CharacterDetail(character: character)
                    } label: {
                        Text(character.name)
                    }
                }
            }
            .task {
                await charactersvm.fetchData()
            }
            .navigationTitle("Characters")
            .alert(isPresented: $charactersvm.hasError, error: charactersvm.error) {
                Text("OK")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Characters()
    }
}
