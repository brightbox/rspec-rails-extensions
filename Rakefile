require 'echoe'
Echoe.new('rspec-rails-ext') do | gem | 
  gem.author = 'Rahoul Baruah'
  gem.email = 'support@brightbox.co.uk'
  gem.summary = 'Helpers for prettying up your RSpec-Rails specifications'
  gem.url = 'http://github.com/brightbox-rspec-rails-ext'
end

desc "Generates the manifest and the gemspec"
task :build => [:manifest, :build_gemspec] do
  puts "Built!"
end
