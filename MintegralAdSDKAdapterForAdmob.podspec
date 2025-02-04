Pod::Spec.new do |spec|

  sdkVersion = '7.1.9'
  
  spec.name         = 'MintegralAdSDKAdapterForAdmob'
  spec.version      =  sdkVersion + '.0'
  spec.summary      = 'Mintegral Network CustomEvent for Admob Ad Mediation'
  spec.homepage     = 'http://cdn-adn.rayjump.com/cdn-adn/v2/markdown_v2/index.html?file=sdk-m_sdk-ios&lang=en'
  spec.description  = <<-DESC   
    Mintegral's  AdSDK allows you to monetize your iOS and Android apps with Mintegral ads. And this CustomEvent  for use Mintegral via Admob sdk 
                       DESC

  spec.license      = { :type => 'MIT', :file => 'LICENSE' }
  spec.author             = 'Mintegral'
  spec.social_media_url   = 'https://www.facebook.com/mintegral.official'
  spec.platform     = :ios, '10.0'
  spec.source       = { :git => 'https://github.com/MTGSDK/mintegral_admob_adapter_ios.git', :tag => spec.version}
  spec.requires_arc = true
  spec.static_framework = true
  spec.pod_target_xcconfig = { 'VALID_ARCHS' => 'x86_64 armv7 arm64 arm64e' }


# ――― Source Code ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
spec.default_subspecs =  'RewardVideoAdAdapter'

spec.subspec 'NativeAdAdapter' do |ss|

  ss.dependency 'Google-Mobile-Ads-SDK', '~> 10.0'
  ss.dependency  'MintegralAdSDK/NativeAd', '~> 7.1'
  ss.source_files = 'MintegralCustomEvent/MTGCommon/*.{h,m}','MintegralCustomEvent/MTGNativeAd/*.{h,m}'
end

spec.subspec 'InterstitialVideoAdAdapter' do |ss|

  ss.dependency 'Google-Mobile-Ads-SDK', '~> 10.0'
  ss.dependency 'MintegralAdSDK/InterstitialVideoAd', '~> 7.1'
  ss.source_files = 'MintegralCustomEvent/MTGCommon/*.{h,m}','MintegralCustomEvent/MTGInterstitialVideoAd/*.{h,m}'
end


spec.subspec 'RewardVideoAdAdapter' do |ss|

  ss.dependency 'Google-Mobile-Ads-SDK', '~> 10.0'
  ss.dependency 'MintegralAdSDK/RewardVideoAd', '~> 7.1'
  ss.source_files = 'MintegralCustomEvent/MTGCommon/*.{h,m}','MintegralCustomEvent/MTGRewardVideoAd/*.{h,m}'

end


spec.subspec 'InterstitialAdAdapter' do |ss|

  ss.dependency 'Google-Mobile-Ads-SDK', '~> 10.0'
  ss.dependency 'MintegralAdSDK/NewInterstitialAd', '~>7.1'
  ss.source_files = 'MintegralCustomEvent/MTGCommon/*.{h,m}','MintegralCustomEvent/MTGNewInterstitialAd/*.{h,m}'
end


spec.subspec 'BannerAdAdapter' do |ss|

  ss.dependency 'Google-Mobile-Ads-SDK', '~> 10.0'
  ss.dependency 'MintegralAdSDK/BannerAd', '~> 7.1'
  ss.source_files = 'MintegralCustomEvent/MTGCommon/*.{h,m}','MintegralCustomEvent/MTGBannerAd/*.{h,m}'
end


 
end
