Feature: Install parasut_rails

  Scenario: Using rubygems
    Given I successfully run `gem install parasut_rails`
    Then parasut_rails should be installed on the local system

  Scenario: Using bundler
    Given I successfully run `bundle exec rails new testapp`
    And I cd to "testapp"
    And I add "parasut_rails" from this project as a dependency
    And I run `bundle install` with a clean environment
    Then parasut_rails should be installed on the local system
