#
# Be sure to run `pod lib lint BQMineModule.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'BQMineModule'
  s.version          = '0.3'
  s.summary          = 'BQMineModule'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/JieZhang-1/BQMineModule'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'JieDevelper' => 'zhangjie@baiwenbao.com' }
  s.source           = { :git => 'https://github.com/JieZhang-1/BQMineModule.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  #s.source_files = 'BQMineModule/Classes/**/*'
  s.subspec 'API' do |ss|
      ss.source_files = 'BQMineModule/Classes/Api/BQMine.h'
      end
  
  s.subspec 'Model' do |ss|
      ss.source_files = 'BQMineModule/Classes/Model/*.{h,m}'
  end
  
  s.subspec 'Request' do |ss|
      ss.source_files = 'BQMineModule/Classes/Request/*.{h,m}'
      ss.dependency 'BQMineModule/Model'
  end
  s.subspec 'View' do |ss|
      ss.source_files = 'BQMineModule/Classes/Views/*.{h,m}'
      ss.dependency 'BQMineModule/Model'
  end
  s.subspec 'Controllers' do |ss|
      ss.dependency 'BQMineModule/Request'
      ss.dependency 'BQMineModule/View'
      ss.dependency 'BQMineModule/Model'
      ss.dependency  'BQMineModule/API'
      ss.source_files = 'BQMineModule/Classes/Controllers/*.{h,m}'
  end
  
  s.resource_bundles = {
     'BQMineModule' => ['BQMineModule/Assets/*.png']
  }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
  s.dependency 'MGJRouter'
  s.dependency 'Masonry'
  s.dependency 'BQBaseComponent'
end
