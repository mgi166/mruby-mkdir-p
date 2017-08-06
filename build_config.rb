MRuby::Build.new do |conf|
  toolchain :gcc

  conf.gem mgem: 'mruby-dir'
  conf.gem mgem: 'mruby-io'
  conf.gem __dir__
end
