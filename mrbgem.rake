MRuby::Gem::Specification.new('mruby-time-strftime') do |spec|
  spec.license = 'MIT'
  spec.authors = 'monochromegane'
  spec.add_dependency 'mruby-time', :core => 'mruby-time'
  spec.add_dependency 'mruby-sprintf', :core => 'mruby-sprintf'
end
