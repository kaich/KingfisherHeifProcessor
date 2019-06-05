//
//  KingfisherHEIFProcessor.swift
//  Kingfisher
//
//  Created by mk on 2019/6/2.
//

import UIKit
import AVFoundation
import Kingfisher

public struct KingfisherHEIFProcessor: ImageProcessor {
    public var identifier: String = "com.kingfisher.heifprocessor"
    
    public init() {}
    
    public func process(item: ImageProcessItem, options: KingfisherOptionsInfo) -> Image? {
        switch item {
        case .image(let image):
            return image
        case .data(let data):
            let coder = KingfisherHEIFCoder()
            if coder.canDecode(from: data) {
                if #available(iOS 11.0, *) {
                    if !supports(type: AVFileType.heic.rawValue) {
                        let image = coder.decodedImage(with: data)
                        return image
                    }
                }
            }
            
            let image = UIImage(data: data)
            return image
        }
    }
    
    func supports(type: String) -> Bool {
        let supportedTypes = CGImageDestinationCopyTypeIdentifiers() as NSArray
        return supportedTypes.contains(type)
    }
    
}
