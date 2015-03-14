//
//  CustomCell.swift
//  pokemongacha(swift)
//
//  Created by Yuta Araki on 2015/03/14.
//  Copyright (c) 2015年 Yuta Araki. All rights reserved.
//

import Foundation
import UIKit

class CustomCell: UICollectionViewCell {
    @IBOutlet var title:UILabel!
    @IBOutlet var image:UIImageView!
    
    override init(frame: CGRect){
        super.init(frame: frame)
    }
    required init(coder aDecoder: NSCoder){
        super.init(coder: aDecoder)
    }
    
}
