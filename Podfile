# Uncomment the next line to define a global platform for your project
platform :ios, '11.0'
# Comment the next line if you're not using Swift and don't want to use dynamic frameworks
use_frameworks!
# ignore all warnings from all pods
inhibit_all_warnings!

def pods
    pod 'Fabric'
    pod 'Crashlytics'
    pod 'FBSDKCoreKit'
    pod 'FBSDKLoginKit'
    pod 'FBSDKShareKit'
    pod 'AccountKit'
    pod 'JVFloatLabeledTextField'
    pod 'Pulsator'
    pod 'Alamofire'
    pod 'AlamofireNetworkActivityIndicator'
    pod 'AlamofireNetworkActivityLogger'
    pod 'SwiftyJSON'
    pod 'Gifu'
    pod 'Kingfisher'
    pod 'SZTextView'
    pod 'Toast-Swift'
    pod 'Appirater'
    pod 'NextLevel'
    pod 'AudioKit'
    pod 'SCSiriWaveformView'
    pod 'PagedArray'
    pod 'SnapKit'
    pod 'ImageSlideshow'
    pod 'ImageSlideshow/Kingfisher'
    pod 'Firebase/Core'
    pod 'Firebase/Database'
    pod 'MessageKit', '~> 0.3'
    pod 'TwitterKit'
    pod 'DeviceKit'
    pod 'ACBAVPlayer'
    pod 'RPCircularProgress'
    pod 'IOStickyHeader'
end


target 'RecordGram' do
    # Pods for RecordGram
    pods
end

target 'RecordGram Staging' do
    # Pods for RecordGram Staging
    pods
end

post_install do |installer|
    installer.pods_project.targets.each do |target|
        target.build_configurations.each do |config|
            config.build_settings['ENABLE_BITCODE'] = 'NO'
        end
    end
    
    # Workaround for Cocoapods issue #7606
    # https://github.com/CocoaPods/CocoaPods/issues/7606#issuecomment-381279098
    installer.pods_project.build_configurations.each do |config|
        config.build_settings.delete('CODE_SIGNING_ALLOWED')
        config.build_settings.delete('CODE_SIGNING_REQUIRED')
    end
end
