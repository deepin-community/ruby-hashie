require 'gem2deb/rake/spectask'

ENV.delete('CI')

Gem2Deb::Rake::RSpecTask.new do |spec|
  spec.pattern = FileList['./spec/**/*_spec.rb'] - FileList['./spec/integration/rails/integration_spec.rb','./spec/integration/omniauth-oauth2/integration_spec.rb']
end
