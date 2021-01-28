//
//  PlaySongViewController.swift
//  Playlist
//
//  Created by kushal on 28/01/21.
//

import UIKit

class PlaySongViewController: UIViewController {
    
    var coverArt: UIImageView!
    var displaySong: UILabel!
    var displayArtist: UILabel!
    var playButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        view.backgroundColor = .white
        title = "Playing Now"
        
        setupViews()
        setupConstraints()
    }
    
    func setupViews() {
        coverArt = UIImageView()
        coverArt.image = UIImage(named: "Cover Art 1")
        coverArt.translatesAutoresizingMaskIntoConstraints = false
        coverArt.contentMode = .scaleAspectFit
        view.addSubview(coverArt)
        
        displaySong = UILabel()
        displaySong.text = "Be Kind"
        displaySong.font = .systemFont(ofSize: 32, weight: .bold)
        displaySong.textColor = .black
        displaySong.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(displaySong)
        
        displayArtist = UILabel()
        displayArtist.text = "Halsey"
        displayArtist.font = .systemFont(ofSize: 24, weight: .regular)
        displayArtist.textColor = .black
        displayArtist.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(displayArtist)
        
        playButton = UIButton()
        playButton.translatesAutoresizingMaskIntoConstraints = false
        playButton.setTitle("Play/Stop", for: .normal)
        playButton.setTitleColor(.black, for: .normal)
        playButton.addTarget(self, action: #selector(playButtonFunctionality), for: .touchUpInside)
        view.addSubview(playButton)
    }
    
    func setupConstraints() {
        NSLayoutConstraint.activate([
            coverArt.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
            coverArt.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 8),
            coverArt.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -8),
            coverArt.heightAnchor.constraint(equalToConstant: 400)
        ])
        
        NSLayoutConstraint.activate([
            displaySong.topAnchor.constraint(equalTo: coverArt.bottomAnchor, constant: 48),
            displaySong.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            displaySong.heightAnchor.constraint(equalToConstant: 24)
        ])
        NSLayoutConstraint.activate([
            displayArtist.topAnchor.constraint(equalTo: displaySong.bottomAnchor, constant: 12),
            displayArtist.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            displayArtist.heightAnchor.constraint(equalToConstant: 24)
        ])
        NSLayoutConstraint.activate([
            playButton.topAnchor.constraint(equalTo: displayArtist.bottomAnchor, constant: 64),
            playButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            playButton.heightAnchor.constraint(equalToConstant: 32)
        ])
    }
    
    @objc func playButtonFunctionality() {
        
    }
}
