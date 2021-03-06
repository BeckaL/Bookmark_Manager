ENV['RACK_ENV'] = 'test'
require File.join(File.dirname(__FILE__), '..', 'MyApp.rb')
require 'capybara'
require 'capybara/rspec'
require 'rspec'
require_relative './setup_test_database'
Capybara.app = MyApp

RSpec.configure do |config|
  config.before(:each) do
    setup_test_database
  end
end

# configure.before(:each) do
#   ENV["database"] = "bookmark_manager_test"
# end
# This file was generated by the `rspec --init` command. Conventionally, all
# specs live under a `spec` directory, which RSpec adds to the `$LOAD_PATH`.
# The generated `.rspec` file contains `--require spec_helper` which will cause
# this file to always be loaded, without a need to explicitly require it in any
# files.
#
# Given that it is always loaded, you are encouraged to keep this file as
# light-weight as possible. Requiring heavyweight dependencies from this file
# will add to the boot time of your test suite on EVERY test run, even for an
# individual file that may not need all of that loaded. Instead, consider making
# a separate helper file that requires the additional dependencies and performs
# the additional setup, and require it from the spec files that actually need
# it.
#
# The `.rspec` file also contains a few flags that are not defaults but that
# users commonly want.
#
# See http://rubydoc.info/gems/rspec-core/RSpec/Core/Configuration

  # have no way to turn it off -- the option exists only for backwards
  # inherited by the metadata hash of host groups and examples, rather than
  # triggering implicit auto-inclusion in groups with matching metadata.
