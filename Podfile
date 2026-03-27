# Uncomment the next line to define a global platform for your project
# platform :ios, '13.0'
# Podfile for rewardHub on Apple Silicon (M1/M2)
source 'https://github.com/CocoaPods/Specs.git'

platform :ios, '13.0'
use_frameworks! :linkage => :static

target 'rewardHub' do
  pod 'MakeMoneyOnline', :path => '../MakeMoneyOnline'  # SDK 本地路径
  
  
end

post_install do |installer|
  installer.pods_project.build_configurations.each do |config|
    # 排除模拟器 arm64 架构
    config.build_settings["EXCLUDED_ARCHS[sdk=iphonesimulator*]"] = "arm64"
  end

  installer.pods_project.targets.each do |target|
    target.build_configurations.each do |config|
      # 确保最低 iOS 版本
      if config.build_settings['IPHONEOS_DEPLOYMENT_TARGET'].to_f < 13.0
        config.build_settings['IPHONEOS_DEPLOYMENT_TARGET'] = '13.0'
      end
    end
  end
end
