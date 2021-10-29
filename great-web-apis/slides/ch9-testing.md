# Testing

!SLIDE

# Testing Tools

- Shell scripts that call `curl` or `wget`
- Framework's native tests, eg. Rails integration tests
- Language-agnostic tools, eg. Postman GUI + Newman CLI

!SLIDE

# Testing Rails: [Integration Tests](https://guides.rubyonrails.org/testing.html#integration-testing)

```ruby
test "should get /projects" do
  get v0_projects_url
  assert_response :success
end

test "should get list of projects" do
  get v0_projects_url
  assert_equal config_projects.to_json(), @response.body
end

test "should return a 404 if project is not found" do
  project_name = 'unknownProjectX'
  get v0_project_url(project_name)
  assert_response :missing
  response_body = JSON.parse @response.body
  assert_equal 'Project Not Found', response_body['error']['name']
  assert_equal "Unable to find project '#{project_name}'", response_body['error']['message']
end
```
