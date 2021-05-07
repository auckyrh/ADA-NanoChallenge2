//
//  ExplorerCollectionViewCell.swift
//  NC 2 Explorer Log
//
//  Created by Aucky Riman Halim on 05/05/21.
//

import UIKit

class OldExplorerCollectionViewCell: UICollectionViewCell {
    static let identifier = "OldExplorerCollectionViewCell"
    
    var arrayOfExplorers:[Explorer] = []
    var explorerInitIndex:Int = 0
    
    private let imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        return imageView
    }()
    
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        contentView.addSubview(imageView)
        let explorerManager = ExplorerManager()
        //var images:[UIImage?] = [].compactMap({ $0 })
        
        for explorer in explorerManager.explorers {
            print(explorer.name)
            //images.append(UIImage(named: explorer.photo))
            imageView.image = UIImage(named: explorer.photo)
        }
        
        
//        imageView.image = images.randomElement()!!
        
//        imageView.image = images[explorerInitIndex]
//        explorerInitIndex = explorerInitIndex + 1
//        print(explorerInitIndex)
        
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        imageView.frame = contentView.bounds
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        imageView.image = nil
    }
}
