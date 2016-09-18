When /^I run `([^"]+)` with a clean environment$/ do |command|
  step %{I successfully run `ruby -e 'system({"BUNDLE_GEMFILE" => nil, "DISABLE_SPRING" => "true"}, "#{command}")'`}
end

When /^I run `([^"]+)` with a clean environment in background$/ do |command|
  step %{I run `ruby -e 'system({"BUNDLE_GEMFILE" => nil, "DISABLE_SPRING" => "true"}, "#{command}")'` in background}
end


# system({'BUNDLE_GEMFILE' => nil}, "cd tmp/aruba/testapp && #{command} && cd -")
