# Uncomment the next line to define a global platform for your project
# platform :ios, '9.0'

target 'iOS_Restructure_Project' do
  # Comment the next line if you don't want to use dynamic frameworks
  use_frameworks!
  
  # Pods for iOS_Restructure_Project
  
  pod 'SnapKit', '~> 5.7.0'
  pod 'NVActivityIndicatorView', '~> 5.2.0'
  #  pod 'CoreModuleBase-iOS', :git => 'https://github.com/saryphly/CoreModuleBase-iOS.git', :tag => '0.0.2'
  
  post_install do |installer|
    installer.pods_project.targets.each do |target|
    end
    installer.generated_projects.each do |project|
      project.targets.each do |target|
        target.build_configurations.each do |config|
          if config.build_settings['IPHONEOS_DEPLOYMENT_TARGET'].to_f < 9.0
            config.build_settings['IPHONEOS_DEPLOYMENT_TARGET'] = '12.0'
          end
        end
      end
    end
  end
end

