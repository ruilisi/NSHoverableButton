Pod::Spec.new do |s|
  s.name         = "NSHoverableButton"
  s.version      = "1.0"
  s.summary      = "NSButton with two images for hovering and not hovering seperately."
  s.homepage     = "https://github.com/rallets-network/NSHoverableButton"
  s.license      = "MIT"
  s.author             = { "Rallet" => "info@rallets.com" }
  s.source       = { :git => "https://github.com/rallets-network/NSHoverableButton", :tag => "#{s.version}" }
  s.source_files  = "NSHoverableButton/NSHoverableButton.{swift}"
end
