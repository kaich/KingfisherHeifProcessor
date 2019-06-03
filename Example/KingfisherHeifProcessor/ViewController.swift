//
//  ViewController.swift
//  KingfisherHeifProcessor
//
//  Created by chengkai1853@163.com on 06/02/2019.
//  Copyright (c) 2019 chengkai1853@163.com. All rights reserved.
//

import UIKit
import Kingfisher
import KingfisherHeifProcessor

class ViewController: UIViewController {

    @IBOutlet weak var ivImage: UIImageView!
    @IBOutlet weak var ivBottom: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //HEIC
        let url = Bundle.main.url(forResource: "ski_jump_1440x96", withExtension: "heic")
        let processor = KingfisherHEIFProcessor()
        ivImage.kf.setImage(with: url, options: [.processor(processor)])
        
        //JPG
        let urlStr = "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1559535524477&di=6ba92c5b23f4715f2ca1758c3a3839c8&imgtype=0&src=http%3A%2F%2Ff.hiphotos.baidu.com%2Fimage%2Fpic%2Fitem%2Fb151f8198618367aa7f3cc7424738bd4b31ce525.jpg"
        let url2 = URL(string: urlStr)
        ivBottom.kf.setImage(with: url2, options: [.processor(processor)])
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

