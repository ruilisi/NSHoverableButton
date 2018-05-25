Pod::Spec.new do |s|
  s.name         = "NSHoverableButton"
  s.version      = "1.0"
  s.summary      = "NSButton with two images for hovering and not hovering seperately."
  s.homepage     = "https://github.com/rallets-network/NSHoverableButton"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author             = { "Rallet" => "info@rallets.com" }
  s.source       = { :git => "https://github.com/rallets-network/NSHoverableButton.git", :tag => "#{s.version}" }
  s.source_files  = "NSHoverableButton/NSHoverableButton.{swift}"
  s.requires_arc = true
  s.platform     = :osx, '10.9'
end
