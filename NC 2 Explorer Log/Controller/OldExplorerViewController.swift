//
//  ExplorerViewController.swift
//  NC 2 Explorer Log
//
//  Created by Aucky Riman Halim on 05/05/21.
//

import UIKit

class OldExplorerViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    
    private let collectionView = UICollectionView(
        frame: .zero,
        collectionViewLayout: UICollectionViewFlowLayout()
    )
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let explorerManager = ExplorerManager()
        for explorer in explorerManager.explorers {
            print(explorer.name)
        }
        
        collectionView.register(ExplorerCollectionViewCell.self, forCellWithReuseIdentifier: OldExplorerCollectionViewCell.identifier)
        collectionView.delegate = self
        collectionView.dataSource = self
        view.addSubview(collectionView)
    
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        collectionView.frame = view.bounds
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 100
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: OldExplorerCollectionViewCell.identifier, for: indexPath)
        return cell
    }

}
