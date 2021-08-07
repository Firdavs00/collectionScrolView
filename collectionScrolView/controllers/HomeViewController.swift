//
//  HomeViewController.swift
//  collectionScrolView
//
//  Created by MacBook Pro on 07/08/21.
//

import UIKit

class HomeViewController: UIViewController,UICollectionViewDataSource, UICollectionViewDelegate{
    @IBOutlet weak var collectionView: UICollectionView!
    
    let numberOfColumns: CGFloat = 2
    var items: Array<Iteam> = Array()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initView()
  
    }
    // Mark: - Methods
    
    func initView()  {
        addNavigationBar()
        collectionView.delegate = self
        collectionView.dataSource = self
        
        self.collectionView.register(UINib(nibName: "IteamCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "myCell")
                if let flowLayout = collectionView?.collectionViewLayout as? UICollectionViewFlowLayout{
                    let scrrenSize: CGRect = UIScreen.main.bounds
                    let cellwidht = scrrenSize.width / numberOfColumns - 15
                    flowLayout.itemSize = CGSize(width: cellwidht, height: cellwidht)
                }
        items.append(Iteam(image: "images1", title: "Best Coding"))
        items.append(Iteam(image: "images2", title: "Amazing Code"))
        items.append(Iteam(image: "images1", title: "Best Coding"))
        items.append(Iteam(image: "images2", title: "Amazing Code"))
        items.append(Iteam(image: "images1", title: "Best Coding"))
        items.append(Iteam(image: "images2", title: "Amazing Code"))
        items.append(Iteam(image: "images1", title: "Best Coding"))
        items.append(Iteam(image: "images2", title: "Amazing Code"))
        items.append(Iteam(image: "images1", title: "Best Coding"))
        items.append(Iteam(image: "images2", title: "Amazing Code"))
        items.append(Iteam(image: "images1", title: "Best Coding"))
        items.append(Iteam(image: "images2", title: "Amazing Code"))
        items.append(Iteam(image: "images1", title: "Best Coding"))
        items.append(Iteam(image: "images2", title: "Amazing Code"))
       
        
        
    }
    func addNavigationBar(){
        let menu = UIImage(named: "ic_menu")
        navigationItem.rightBarButtonItem = UIBarButtonItem(image: menu, style: .plain, target: self, action: #selector(rigtTapped))
        title = "Collection View"
        
    }
    func callScrolViewController(){
        let vc = ScrolViewController(nibName: "ScrolViewController", bundle: nil)
        navigationController?.pushViewController(vc, animated: true)
    }
   
    
    
    // Mark: - Actions
    @objc func rigtTapped(){
        callScrolViewController()
        
    }
    // Mark: - CollectionView
 
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return items.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let item = items[indexPath.row]
              let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "myCell", for: indexPath) as! IteamCollectionViewCell
   
        cell.ImageView.image = UIImage(named: item.image!)
        cell.lableView.text = item.title
        
        
        return cell

    }
}
