

Pod::Spec.new do |s|

  s.name         = "FPSLabel"
  s.version      = "0.1.2"
  s.summary      = "A short description of FPSLabel."
  s.description  = <<-DESC
            FPS监控
                   DESC

  s.homepage     = "https://github.com/MrQiuHaHa/FPSLabel"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author             = { "邱天真" => "2574282239@qq.com" }
  s.source       = { :git => "https://github.com/MrQiuHaHa/FPSLabel.git", :tag => "#{s.version}" }

  s.source_files  = "FPSLabel/Classes/**/*.{h,m}"

  s.ios.deployment_target = "8.0"
end
