//
//  ViewController.swift
//  MALApp
//
//  Created by Taro Altrichter on 12.03.24.
//

import UIKit

class AnimeListViewController: UIViewController, UICollectionViewDelegate {
    
    enum Section {
        case main
    }
    
    var animes: [Anime] = []
    
    var collectionView: UICollectionView!
    var dataSource: UICollectionViewDiffableDataSource<Section, Anime>!
    
    init() {
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        configureCollectionView()
        
        Task {
            do {
                let data = try await NetworkManager.shared.getData()
                print(data)
            }
        }
        // Do any additional setup after loading the view.
    }
    
    func configureCollectionView() {
        collectionView = UICollectionView(frame: view.bounds, collectionViewLayout: UIHelper.createThreeColumnFlowLayout(in: view))
        view.addSubview(collectionView)
        collectionView.delegate = self
        collectionView.backgroundColor = .systemBackground
        collectionView.register(AnimeCell.self, forCellWithReuseIdentifier: AnimeCell.reuseID)
    }


}

#Preview {
    AnimeListViewController()
}
