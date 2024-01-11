//
//  DefaultImageView.swift
//  Course List
//
//  Created by Andy Dobbs on 1/11/24.
//

import SwiftUI

struct DefaultImageView: View {
    var body: some View {
        
        VStack {
            ProgressView()
                .padding()
            Image(systemName: "books.vertical")
                .font(.largeTitle)
                .padding(.bottom, 3)
            Text("Loading image...")
                .foregroundStyle(.secondary)
        }
        .padding(.vertical, 50)
        .frame(maxWidth: .infinity)
        .background {
            Color.gray
                .opacity(0.5)
        }
    }
}

#Preview {
    DefaultImageView()
}
