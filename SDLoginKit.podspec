Pod::Spec.new do |s|
  s.name = 'SDLoginKit'
  s.version = '0.0.1'
  s.license = 'MIT'
  s.summary = 'Login/Sign-Up ViewControllers Ready-To-Use with your Custom Backend.'
  s.homepage = 'https://github.com/steve21124/SDLoginKit'
  s.authors = { 'Steve Derico' => 'Steve@bixbyapps.com' }
  s.source = { :git => 'https://github.com/steve21124/SDLoginKit.git', :submodules => true }
  s.requires_arc = true

  # Temporary add the SDKit dependency this way, waiting the SDKit pod to be ready :)
  s.source_files = 'SDLoginExample/SDLoginKit/**/*.{h,m}'

  s.subspec 'SDKit' do |sdkit|
    sdkit.source_files = 'SDLoginExample/SDKit/**/*.{h,m}'
    sdkit.resources = 'SDLoginExample/SDKit/**/Assets/*.png'
  end

  s.platform = :ios, '5.0'
end