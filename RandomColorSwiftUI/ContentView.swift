//
//  ContentView.swift
//  RandomColorSwiftUI
//
//  Created by SCOTT CROWDER on 5/15/24.
//

import SwiftUI

struct ContentView: View {
    
    @State private var colors: [UIColor] = []
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(colors, id: \.self) { color in
                    NavigationLink(value: color) {
                        Text("")
                            .frame(maxWidth: .infinity, maxHeight: .infinity)
                    }
                    .listRowBackground(Color(uiColor: color))
                }
            }
            .navigationTitle("Colors")
            .navigationDestination(for: UIColor.self) { color in
                Text("")
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .background(Color(uiColor: color))
            }
        }
        .onAppear {
            createRandomColors()
        }
    }
    
    func createRandomColors() {
        for _ in 0..<50 {
            colors.append(UIColor.random())
        }
    }
}

#Preview {
    ContentView()
}
