Pod::Spec.new do |s|
  s.name             = "Interstellar+Extra"
  s.version          = "0.1.0"
  s.summary          = "Foundation and UIKit extension to Interstellar."
  s.description      = <<-DESC
                       DESC

  s.homepage         = "https://github.com/siuyinh/Interstellar+Extra"
  s.license          = 'MIT'
  s.author           = { "Francis Chong" => "francis@ignition.hk" }
  s.source           = { :git => "https://github.com/siuying/Interstellar-Extra.git", :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/siuying'

  s.platform     = :osx, '10.10'
  s.platform     = :tvos, '9.0'
  s.platform     = :watchos, '2.0'
  s.platform     = :ios, '8.0'
  s.requires_arc = true

  s.dependency 'Interstellar'

  s.subspec 'Core' do |cs|
    cs.dependency 'Interstellar+Extra/UIKit'
    cs.dependency 'Interstellar+Extra/Foundation'
  end

  s.subspec 'UIKit' do |cs|
    s.source_files = 'Pod/Classes/UIKit/**/*'
  end

  s.subspec 'Foundation' do |cs|
    s.source_files = 'Pod/Classes/Foundation/**/*'
  end
end
