#
# Be sure to run `pod lib lint KingfisherHeifProcessor.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'KingfisherHeifProcessor'
  s.version          = '0.1.0'
  s.summary          = 'A short description of KingfisherHeifProcessor.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/chengkai1853@163.com/KingfisherHeifProcessor'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'chengkai1853@163.com' => 'chengkai1853@163.com' }
  s.source           = { :git => 'https://github.com/chengkai1853@163.com/KingfisherHeifProcessor.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.source_files = 'KingfisherHeifProcessor/Classes/**/*'
  
  s.subspec 'libheif' do |ss|
      ss.dependency 'libheif/libheif', '>= 1.4.0'
  end
  
  # HEIF Decoding need libde265
  s.subspec 'libde265' do |ss|
      ss.dependency 'libheif/libde265'
      ss.dependency 'KingfisherHeifProcessor/libheif'
      ss.xcconfig = {
          'GCC_PREPROCESSOR_DEFINITIONS' => '$(inherited) HAVE_LIBDE265=1'
      }
  end
  
  # HEIF Encoding need libx265
  s.subspec 'libx265' do |ss|
      ss.dependency 'libheif/libx265'
      ss.dependency 'KingfisherHeifProcessor/libheif'
      ss.xcconfig = {
          'GCC_PREPROCESSOR_DEFINITIONS' => '$(inherited) HAVE_X265=1'
      }
  end
  
  s.subspec 'Kingfisher' do |ss|
      s.dependency 'Kingfisher'
  end
  
end
