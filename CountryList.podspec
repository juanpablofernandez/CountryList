Pod::Spec.new do |s|

  s.name                  = "CountryList"
  s.version               = "1.0"
  s.summary               = "Easily present a list of countries and their respective information."
  s.description           = <<-DESC
CountryList makes it easy to present the user with a list of Countries and their respective information, like country code, phone extension and flag.
                            DESC
  s.homepage              = "https://github.com/juanpablofernandez/CountryList"
  s.license               = { :type => 'MIT', :file => 'LICENSE' }
  s.author                = "Juan Pablo Fernandez"
  s.social_media_url      = "https://github.com/juanpablofernandez"
  s.ios.deployment_target = '9.0'
  s.source                = { :git => "https://github.com/juanpablofernandez/CountryList.git", :tag => "#{s.version}" }
  s.source_files          = "CountryList", "CountryList/**/*.{swift}"

end
