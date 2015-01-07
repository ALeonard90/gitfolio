class UsersController < ApplicationController
  def show
    url = "https://api.github.com/users/" + params[:username]
    url += '?access_token=2739cb35d03083f537e8dbf00f432f0e1b781866'
    res = HTTParty.get( url )
    response = JSON.parse(res.body)
    @text = response["login"] + " has " + response["public_repos"].to_s + " public repos."
  end
end
