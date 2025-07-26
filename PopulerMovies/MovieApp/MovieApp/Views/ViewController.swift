//
//  ViewController.swift
//  MovieApp
//
//  Created by Koray Urun on 22.07.2025.
//

import UIKit
import SwiftUI

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource{

    
    @IBOutlet var tableView: UITableView!
    
    let movieManager = MovieManager()
    var myMovies : [Movies] = [] {
        didSet {
            tableView.reloadData()
        }
    }
    
    let url = URL(string: "https://api.themoviedb.org/3/movie/popular?api_key=3b4f187bffd4689de170754dc129c939")

    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        self.title = "Popular Movies"
        self.navigationController?.navigationBar.backgroundColor = .systemGray
        
        movieManager.fetchMovies { (movies) in
               DispatchQueue.main.async {
                   self.myMovies = movies.results
               }
           }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let selectedMovie = myMovies[indexPath.row]
        
        let detailView = MovieDetailView(movie: selectedMovie)
        let hostingController = UIHostingController(rootView: detailView)
        
        navigationController?.pushViewController(hostingController, animated: true)
    }

    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myMovies.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! MovieCell
        let movie = myMovies[indexPath.row]
        cell.movieTitleLabel.text = "\(movie.original_title)"
        
        
        let imageURL = URL(string: "https://image.tmdb.org/t/p/w500\(movie.poster_path)")

            
            if let url = imageURL {
                URLSession.shared.dataTask(with: url) { data, response, error in
                    if let data = data, let image = UIImage(data: data) {
                        DispatchQueue.main.async {
                            cell.moviePhotoView.image = image
                        }
                    }
                }.resume()
            }
        return cell
    }


}

