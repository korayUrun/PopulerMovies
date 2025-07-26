//
//  MovieDetailView.swift
//  MovieApp
//
//  Created by Koray Urun on 26.07.2025.
//

import Foundation
import SwiftUI

struct MovieDetailView: View {
    let movie: Movies

    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                AsyncImage(url: URL(string: "https://image.tmdb.org/t/p/w500\(movie.poster_path)")) { image in
                    image
                        .resizable()
                        .scaledToFit()
                } placeholder: {
                    ProgressView()
                }
                .cornerRadius(10)

                Text(movie.original_title)
                    .font(.title)
                    .bold()
                    .padding(.horizontal)

                Text(movie.overview)
                    .font(.body)
                    .padding(.horizontal)
            }
        }
        .navigationTitle("Details")
        .navigationBarTitleDisplayMode(.inline)
    }
}
