Pod::Spec.new do |s|
    s.name         = 'StytchDFPWrapper'
    s.version      = '1.0.3'
    s.license      = { :type => 'Apache-2.0', :file => 'LICENSE' }
    s.authors      = 'Stytch,'
    s.homepage     = 'https://github.com/stytchauth/stytch-ios-dfp'
    s.summary      = 'StytchDFP podspec for iOS'

    s.platform = :ios, '13.4'
    s.swift_version = '5.9'

    s.source       = { 
        :git => 'https://github.com/stytchauth/stytch-ios-dfp.git', 
        :tag => s.version.to_s
    }

    s.source_files = [
        'Sources/stytch-ios-dfp/*.swift',
    ]

    s.pod_target_xcconfig = {
        "VALID_ARCHS[sdk=iphonesimulator*]" => "x86_64 arm64",
        "VALID_ARCHS[sdk=iphoneos*]" => "arm64"
    }
    s.vendored_frameworks = 'Sources/stytch-ios-dfp/StytchDFP.xcframework'
    s.preserve_path = 'Sources/stytch-ios-dfp/StytchDFP.xcframework'
  end