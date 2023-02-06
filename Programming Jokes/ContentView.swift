//
//  ContentView.swift
//  Programming Jokes
//
//  Created by Jack Kamaryt on 2/6/23.
//

import SwiftUI

struct ContentView: View {
    
    @State private var jokes = [Joke]()
    
    var body: some View {
        NavigationView {
            List(jokes){ joke in
                NavigationLink(destination: Text(joke.punchline).padding())
                {
                    Text(joke.setup)
                }
            }
            .navigationTitle("Programming Jokes")
        }
        .onAppear(){ getJokes()}
    }
    func getJokes() {
            let apiKey = "?rapidapi-key=b17bc0642fmshebd29ff68c7a379p10ba43jsndde2f61e9523"
        }

}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Joke: Identifiable {
    let id = UUID()
    var setup = ""
    var punchline = ""
}
