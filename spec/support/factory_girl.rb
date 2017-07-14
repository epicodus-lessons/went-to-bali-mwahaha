RSpec.configure do |config|
  config.include FactoryGirl::Syntax::Methods
  config.include Warden::Test::Helpers
end