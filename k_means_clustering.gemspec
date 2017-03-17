Gem::Specification.new do |gem|
  gem.name        = 'k_means_clustering'
  gem.version     = '0.0.0'
  gem.licenses    = ['MIT']
  gem.summary     = "K Means Clustering in Ruby"
  gem.description = ""
  gem.authors     = ["Victor Mours"]
  gem.email       = 'victor.mours@gmail.com'
  gem.files       = Dir["lib/**/*.rb"]
  gem.executables = []
  gem.homepage    = 'https://github.com/victormours/ruby-k-means-clustering'

  gem.add_development_dependency 'minitest'
end

