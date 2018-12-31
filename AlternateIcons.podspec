require 'json'

Pod::Spec.new do |s|
  # NPM package specification
  package = JSON.parse(File.read(File.join(File.dirname(__FILE__), 'package.json')))

  s.name           = 'AlternateIcons'
  s.version        = package['version']
  s.license        = 'MIT'
  s.summary        = 'Alternate icons pod for react-native'
  s.author         = package['author']
  s.homepage       = package['homepage']
  s.source         = { :git => 'https://github.com/threecee/react-native-alternate-icons.git', :tag => "v#{s.version}"}
  s.platform     = :ios, "10.0"

  s.preserve_paths = '*.js'

  s.dependency 'React'

  s.source_files = 'ios/ReactNativeAlternateIcons*.{h,m}'
  s.public_header_files = 'ios/ReactNativeAlternateIcons.h'
end
