Pod::Spec.new do |s|
  s.name         = "TOBrowserActivityKit"
  s.version      = "1.0.1"
  s.summary      = "A set of UIActivity subclasses for opening NSURL objects in Chrome or Safari."
  s.homepage     = "https://github.com/TimOliver/TOBrowserActivityKit"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author             = { "Tim Oliver" => "info@timoliver.com.au" }
  s.platform     = :ios, "6.0"
  s.source       = { :git => "https://github.com/TimOliver/TOBrowserActivityKit.git", :tag => "1.0.1" }
  s.source_files  ="TOBrowserActivityKit/**/*.{h,m}"
  s.requires_arc = true
end
