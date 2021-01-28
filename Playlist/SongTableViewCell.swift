//
//  SongTableViewCell.swift
//  Playlist
//
//  Created by kushal on 27/01/21.
//

import UIKit

class SongTableViewCell: UITableViewCell {
    
    var coverImage: UIImageView!
    var songTitle: UILabel!
    var artistName: UILabel!
    var albumName: UILabel!
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        selectionStyle = .none
        
        backgroundColor = .black
        
        coverImage = UIImageView()
        coverImage.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(coverImage)
        
        songTitle = UILabel()
        songTitle.translatesAutoresizingMaskIntoConstraints = false
        songTitle.textColor = .white
        songTitle.font = .systemFont(ofSize: 18, weight: .medium)
        contentView.addSubview(songTitle)
        
        artistName = UILabel()
        artistName.translatesAutoresizingMaskIntoConstraints = false
        artistName.textColor = .white
        artistName.font = .systemFont(ofSize: 16, weight: .regular)
        contentView.addSubview(artistName)
        
        albumName = UILabel()
        albumName.translatesAutoresizingMaskIntoConstraints = false
        albumName.textColor = .white
        albumName.font = .systemFont(ofSize: 16, weight: .regular)
        contentView.addSubview(albumName)
        
        setupConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupConstraints() {
        NSLayoutConstraint.activate([
            coverImage.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 12),
            coverImage.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 12),
            coverImage.heightAnchor.constraint(equalToConstant: 60),
            coverImage.widthAnchor.constraint(equalToConstant: 60)
        ])
        NSLayoutConstraint.activate([
            songTitle.leadingAnchor.constraint(equalTo: coverImage.trailingAnchor, constant: 24),
            songTitle.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 12),
            songTitle.heightAnchor.constraint(equalToConstant: 20)
        ])
        NSLayoutConstraint.activate([
            artistName.leadingAnchor.constraint(equalTo: songTitle.leadingAnchor),
            artistName.topAnchor.constraint(equalTo: songTitle.bottomAnchor),
            artistName.heightAnchor.constraint(equalToConstant: 20)
        ])
        NSLayoutConstraint.activate([
            albumName.leadingAnchor.constraint(equalTo: artistName.leadingAnchor),
            albumName.topAnchor.constraint(equalTo: artistName.bottomAnchor),
            albumName.heightAnchor.constraint(equalToConstant: 20)
        ])
    }
    
    func configure(for song: Song) {
        coverImage.image = UIImage(named: song.getCoverImage())
        songTitle.text = song.name
        artistName.text = "Artist: \(song.artist)"
        albumName.text = "Album: \(song.album)"
    }
}
