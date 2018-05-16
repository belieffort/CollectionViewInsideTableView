//
//  MainTableViewCell.swift
//  collectionViewInsideTableView5
//
//  Created by 한병두 on 2018. 5. 16..
//  Copyright © 2018년 Byungdoo Han. All rights reserved.
//

import UIKit

class MainTableViewCell: UITableViewCell {
    @IBOutlet var clCollectionView: UICollectionView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

extension MainTableViewCell
{
    func setControllerViewDataSourceDelegate
        <D: UICollectionViewDelegate & UICollectionViewDataSource>
        (_ dataSourceDelegate: D, forRow row: Int)
    {
        clCollectionView.delegate = dataSourceDelegate
        clCollectionView.dataSource = dataSourceDelegate
        
        clCollectionView.reloadData()
    }
    
}
