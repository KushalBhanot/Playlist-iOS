//
//  ViewController.swift
//  Playlist
//
//  Created by kushal on 27/01/21.
//

import UIKit

class ViewController: UIViewController{
    
    var tableView: UITableView!
    
    let reuseIdentifier = "songCellReuse"
    let cellHeight: CGFloat = 84
    
    let beKind = Song(cover: .coverImage1, name: "Be Kind", artist: "Halsey", album: "Be Kind")
    let tereBina = Song(cover: .coverImage2, name: "tere bina", artist: "Zaeden", album: "tere bina")
    let reality = Song(cover: .coverImage3, name: "Reality", artist: "Lost Frequencies", album: "Less is More")
    let adoreYou = Song(cover: .coverImage4, name: "Adore You", artist: "Harry Styles", album: "Fine Line")
    let liggi = Song(cover: .coverImage5, name: "Liggi", artist: "Ritviz", album: "Liggi")
    
    var songs: [Song]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        title = "Kushal's Playlist"
        view.backgroundColor = .black
        
//        UINavigationBar.appearance().scrollEdgeAppearance = .none
//        UINavigationBar.appearance().titleTextAttributes = [.foregroundColor: UIColor.white]
//        UINavigationBar.appearance().barTintColor = .black
        
        songs = [beKind, tereBina, reality, adoreYou, liggi, beKind, tereBina, reality, adoreYou, liggi, beKind, tereBina, reality, adoreYou, liggi, beKind, tereBina, reality, adoreYou, liggi]
        
        tableView = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(SongTableViewCell.self, forCellReuseIdentifier: reuseIdentifier)
        view.addSubview(tableView)
        
        setupConstraints()
    }
    
    func setupConstraints() {
        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            tableView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor)
        ])
    }
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return songs.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: reuseIdentifier, for: indexPath) as! SongTableViewCell
        let song = songs[indexPath.row]
        cell.configure(for: song)
        return cell
    }
}

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return cellHeight
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let newViewController = PlaySongViewController()
        navigationController?.pushViewController(newViewController, animated: true)
    }
}
