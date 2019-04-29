Pod::Spec.new do |s|
  s.name                = 'SwiftLintFramework'
  s.version             = `make get_version`
  s.summary             = 'A tool to enforce Swift style and conventions.'
  s.homepage            = 'https://github.com/realm/SwiftLint'
  s.source              = { :git => s.homepage + '.git', :tag => s.version }
  s.license             = { :type => 'MIT', :file => 'LICENSE' }
  s.author              = { 'JP Simard' => 'jp@jpsim.com' }
  s.platform            = :osx, '10.10'
  s.source_files        = 'Source/SwiftLintFramework/**/*.swift'
  s.swift_version       = '5.0' # TODO: Add Swift 4.2 when CocoaPods 1.7.0 is out.
  s.pod_target_xcconfig = { 'APPLICATION_EXTENSION_API_ONLY' => 'YES' }
  s.dependency            'SourceKittenFramework', '~> 0.23'
  s.dependency            'Yams', '~> 2.0'
end
