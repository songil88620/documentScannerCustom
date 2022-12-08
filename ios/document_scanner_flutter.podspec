#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html.
# Run `pod lib lint document_scanner_flutter.podspec` to validate before publishing.
#
Pod::Spec.new do |s|
  s.name             = 'document_scanner_flutter'
  s.version          = '0.0.1'
  s.summary          = 'A document scanner plugin for flutter'
  s.description      = 'A document scanner plugin for flutter'
  s.homepage         = 'http://example.com'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'Your Company' => 'email@example.com' }
  s.source           = { :path => '.' }
  s.source_files = 'Classes/**/*'
  s.dependency 'Flutter'
  s.dependency 'WeScan', '>= 0.9'

  # Flutter.framework does not contain a i386 slice.
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES', 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386' }
  s.swift_version = '5.0'
  s.ios.deployment_target = '10.0'
end
