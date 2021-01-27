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
    let cellHeight: CGFloat = 100
    
    let beKind = Song(name: "Be Kind", artist: "Halsey", album: "Be Kind")
    let tereBina = Song(name: "tere bina", artist: "Zaeden", album: "tere bina")
    let reality = Song(name: "Reality", artist: "Lost Frequencies", album: "Less is More")
    let adoreYou = Song(name: "Adore You", artist: "Harry Styles", album: "Fine Line")
    let liggi = Song(name: "Liggi", artist: "Ritviz", album: "Liggi")
    
    var songs: [Song]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        title = "Kushal's Playlist"
        view.backgroundColor = .white
        
        songs = [beKind, tereBina, reality, adoreYou, liggi]
        
        tableView = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.delegate = self
        tableView.dataSource = self
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
        return UITableViewCell()
    }
}

extension ViewController: UITableViewDelegate {
    
}
