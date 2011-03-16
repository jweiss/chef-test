gem_package "right_aws"
require "right_aws"
Chef::Log.info "XXX: AWS: #{defined?(RightAws).inspect}"

gem_package "activesupport" do
  version '3.0.5'
end

gem_package "rocking_chair"
ruby_block 'test rocking chair' do
  block do
    require "rocking_chair"
    Chef::Log.info "XXX: RockingChair: #{defined?(RockingChair).inspect}"
  end
end
