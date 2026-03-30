source 'https://github.com/CocoaPods/Specs.git'

platform :ios, '13.0'

# 使用静态 framework 避免动态 framework 写资源问题
use_frameworks! :linkage => :static

target 'rewardHub' do
  # 如果 SDK 内部需要第三方库，可以在这里加
  pod 'SnapKit', '~> 5.0'
  pod 'MakeMoneyOnline', :path => '../MakeMoneyOnline' # SDK 本地路径
end

post_install do |installer|
  installer.pods_project.targets.each do |target|
    target.build_configurations.each do |config|
      
      # ✅ 关键：排除 arm64（模拟器）
      config.build_settings["EXCLUDED_ARCHS[sdk=iphonesimulator*]"] = "arm64"
      
      # ✅ 强制架构
      config.build_settings["ARCHS[sdk=iphonesimulator*]"] = "x86_64"
      
      # 最低版本
      if config.build_settings['IPHONEOS_DEPLOYMENT_TARGET'].to_f < 13.0
        config.build_settings['IPHONEOS_DEPLOYMENT_TARGET'] = '13.0'
      end
      
    end
  end
end
