Feature: Allow configuration via block

  Background:
    When I successfully run `bundle exec rails new testapp`
    And I cd to "testapp"
    And I add "parasut_rails" from this project as a dependency
    And I run `bundle install` with a clean environment

  Scenario: generate a Rails application and configure parasut_rails
    When I write to "config/initializers/parasut.rb" with:
      """
      require 'parasut'

      Parasut.options do |option|
        option.client_id = 'client_id'
        option.client_secret = 'client_secret'
        option.username = 'username'
        option.password = 'password'
        option.company_id = 'company_id'
      end
      """
    When I run `bundle exec rails s` with a clean environment in background
    Then the output should contain "localhost:3000"
