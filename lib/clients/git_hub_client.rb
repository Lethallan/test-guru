# class GitHubClient
#   ROOT_ENDPOINT = 'https://api.github.com'
#   ACCESS_TOKEN = '0dc201ab7995a715208e2dc2c20027479860738b'

#   def initialize
#     @http_client = setup_http_client
#   end

#   def create_gist(params)
#     @http_client.post('gists') do |request|
#       request.headers['Authorization'] = "token #{ACCESS_TOKEN}"
#       request.headers['Content-type'] = 'application/json'
#       request.body = params.to_json
#     end
#   end

#   private

#   def setup_http_client
#     Octokit::Client.new(:access_token => ACCESS_TOKEN)
#   end
# end
