Pod::Spec.new do |s|
  s.name = 'libsodium'  # You might want to rename it to avoid conflicts
  s.version = '1.0.13'  # Specific version requested
  s.license = 'ISC'
  s.summary = 'Sodium is a portable, cross-compilable, installable, packageable cryptographic library.'
  s.homepage = 'https://github.com/jedisct1/libsodium'
  s.authors = 'Frank Denis'
  
  s.source = {
    :git => 'https://github.com/jedisct1/libsodium.git',
    :tag => '1.0.13'  # Explicitly targeting version 1.0.13
  }
  
  s.ios.deployment_target = '12.0'
  s.osx.deployment_target = '10.13'
  
  s.requires_arc = true
  s.libraries = 'sodium'
  s.preserve_paths = 'src/libsodium/**/*'
  
  # Build settings
  s.prepare_command = <<-CMD
    ./autogen.sh
    ./dist-build/ios.sh
  CMD
  
  s.xcconfig = {
    'HEADER_SEARCH_PATHS' => '$(PODS_ROOT)/#{s.name}/src/libsodium/include',
    'FRAMEWORK_SEARCH_PATHS' => '$(PODS_ROOT)/#{s.name}/dist-build/'
  }
end
