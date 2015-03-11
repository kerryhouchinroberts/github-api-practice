class WelcomeController < ApplicationController

  def index
    @gh = GithubFetcher.new
    @user = @gh.client.user
  end

  def search
    gh = GithubFetcher.new
    @user = gh.client.user(params[:user])
    @repo = GithubFetcher.new().user_repos(params[:user])
  end
end
