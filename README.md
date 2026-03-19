# Popular Movies App

A hybrid iOS application that lists popular movies and displays detailed information using the TMDB API. It leverages both UIKit and SwiftUI frameworks to provide a modern and efficient structure.

## 🚀 Features

*   **Discover Popular Movies:** Instantly fetches and lists the most popular movies via The Movie Database (TMDB) API.
*   **Movie Details:** Presents detailed information for a selected movie, including the poster, title, and overview.
*   **Hybrid Architecture:**
    *   **List View:** Utilizes `UIKit` (`UITableView`) for a high-performance list experience.
    *   **Detail View:** Uses `SwiftUI` for a modern and declarative interface.
*   **Image Handling:** Movie posters are loaded asynchronously for a smooth user experience.

## 🛠 Technologies Used

*   **Language:** Swift 5
*   **User Interface:** UIKit & SwiftUI (Interoperability via `UIHostingController`)
*   **Networking:** URLSession (Native Networking)
*   **Data Handling:** JSONDecoder & Codable Protocols
*   **Architecture:** MVC (Model-View-Controller)

## 📂 Project Structure

*   **Models:** Contains data models (`MovieModel`) and the network manager class (`MovieManager`).
*   **Views:**
    *   `ViewController.swift`: The main list screen (implemented with UIKit).
    *   `MovieDetailView.swift`: The detail screen (implemented with SwiftUI).
    *   `MovieCell.swift`: Custom table view cell.

## ⚙️ Setup & Run

1.  Clone or download this repository:
    ```bash
    git clone https://github.com/username/PopulerMovies.git
    ```
2.  Open the `PopulerMovies/PopulerMovies/MovieApp/MovieApp.xcodeproj` file in Xcode.
3.  The necessary API key is already integrated into the source code.
4.  Select a Simulator or a physical device and press **Run (Cmd + R)** to launch the application.

## 📸 Screenshots

<p align="center">
  <img src="PopulerMovies/1.png" width="45%" />
  <img src="PopulerMovies/2.png" width="45%" /> 
</p>

---
**Developer:** Koray Urun
