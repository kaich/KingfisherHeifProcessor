# KingfisherHeifProcessor

[![CI Status](https://img.shields.io/travis/chengkai1853@163.com/KingfisherHeifProcessor.svg?style=flat)](https://travis-ci.org/chengkai1853@163.com/KingfisherHeifProcessor)
[![Version](https://img.shields.io/cocoapods/v/KingfisherHeifProcessor.svg?style=flat)](https://cocoapods.org/pods/KingfisherHeifProcessor)
[![License](https://img.shields.io/cocoapods/l/KingfisherHeifProcessor.svg?style=flat)](https://cocoapods.org/pods/KingfisherHeifProcessor)
[![Platform](https://img.shields.io/cocoapods/p/KingfisherHeifProcessor.svg?style=flat)](https://cocoapods.org/pods/KingfisherHeifProcessor)

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.


![Screen](./ScreenShot/IMG_3673.jpg)

## Requirements

## Installation

KingfisherHeifProcessor is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'KingfisherHeifProcessor'
```

## Usage 

让Kingfisher支持Heif格式的图片。具体使用如下：

```
        let url = Bundle.main.url(forResource: "ski_jump_1440x96", withExtension: "heic")
        let processor = KingfisherHEIFProcessor()
        ivImage.kf.setImage(with: url, options: [.processor(processor)])
```

## Author

chengkai1853@163.com

## License

KingfisherHeifProcessor is available under the MIT license. See the LICENSE file for more info.
