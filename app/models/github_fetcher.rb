class GithubFetcher

  attr_reader :client

  def initialize
    @client = Octokit::Client.new(:access_token => Rails.application.secrets.access_token)
  end

  def user_repos(username)
    @client.repositories(username)
  end
  

end
