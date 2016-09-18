When /^I add "([^"]+)" from this project as a dependency$/ do |gem_name|
  append_to_file('Gemfile', %{gem "#{gem_name}", :path => "#{PROJECT_ROOT}"\n})
end
# When /^I add "([^"]+)" as a dependency$/ do |gem_name|
#   append_to_file('Gemfile', %{gem "#{gem_name}"\n})
# end
# When /^I comment out gem "([^"]*)" from my Gemfile$/ do |gem_name|
#   in_current_dir do
#     content = File.read('Gemfile')
#     File.open('Gemfile', 'w') do |f|
#       f.write content.sub(/gem ['"]#{gem_name}/, '#\1')
#     end
#   end
# end
