#
# Be sure to run `pod lib lint BQLoginModule.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'BQLoginModule'
  s.version          = '0.5'
  s.summary          = 'BQLoginModule.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/JieZhang-1/BQLoginModule'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'JieDevelper' => 'zhangjie@baiwenbao.com' }
  s.source           = { :git => 'https://github.com/JieZhang-1/BQLoginModule.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'
  
  s.ios.deployment_target = '8.0'

  s.subspec 'API' do |ss|
      ss.source_files = 'BQLoginModule/Classes/API/BQLogin.h'
      end
  
  s.subspec 'Model' do |ss|
      ss.source_files = 'BQLoginModule/Classes/Model/*.{h,m}'
  end
  
  s.subspec 'Request' do |ss|
      ss.source_files = 'BQLoginModule/Classes/Request/*.{h,m}'
      ss.dependency 'BQLoginModule/Model'
  end
  s.subspec 'View' do |ss|
      ss.source_files = 'BQLoginModule/Classes/View/*.{h,m}'
      ss.dependency 'BQLoginModule/Model'
  end
  s.subspec 'Controllers' do |ss|
      ss.dependency 'BQLoginModule/Request'
      ss.dependency 'BQLoginModule/View'
      ss.dependency 'BQLoginModule/Model'
      ss.dependency  'BQLoginModule/API'
      ss.source_files = 'BQLoginModule/Classes/Controllers/*.{h,m}'
  end
  
  
  
   s.resource_bundles = {
     'BQLoginModule' => ['BQLoginModule/Assets/*.png']
   }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
    s.dependency 'MGJRouter'
    s.dependency 'BQBaseComponent'
    s.dependency 'Masonry'
    
end
