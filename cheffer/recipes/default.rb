gem_package "activesupport" do
  version '3.0.5'
end

gem_package "rocking_chair"
ruby_block 'test rocking chair' do
  block do
    Gem.use_paths(nil, Gem.path << '/usr/local/lib/ruby/gems/1.8')
    require "rocking_chair"
    Chef::Log.info "XXX: RockingChair: #{defined?(RockingChair).inspect}"
  end
end
