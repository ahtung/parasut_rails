Then(/^parasut_rails should be installed on the local system$/) do
  run('gem list parasut_rails')
  expect(last_command_started).to have_output(/parasut_rails/)
end
