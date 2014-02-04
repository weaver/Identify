Pod::Spec.new do |s|
  s.name         = "Identify"
  s.version      = "0.1.0"
  s.summary      = "Create compact, unique identifiers."
  s.homepage     = "https://github.com/weaver/Identify"
  s.license      = 'MIT'
  s.author       = { "Ben Weaver" => "ben@benweaver.com" }
  s.source       = { :git => "https://github.com/weaver/Identity.git", :tag => s.version.to_s }

  s.requires_arc = true

  s.platform = :ios
  s.source_files = 'Classes'
  s.resources = 'Assets'
end