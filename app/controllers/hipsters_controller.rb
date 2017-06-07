class HipstersController < ApplicationController
  def index
  	@hipsters = Unirest.get("localhost:3000/api/v1/hipster.json").body
  end

  def new
  	
  end

  def create
  	hipster = Unirest.post(
  													"localhost:3000/api/v1/hipster.json?word=#{params[:word]}&sentence=#{params[:sentence]}&paragraph=#{params[:paragraph]}",
  													headers: {
  																		"Accept" => "application/json"
  																		},
  												).body
  	redirect_to "/hipster/#{ employee["id"] }"
  	
  end

  def show
  	@hipster = Unirest.get("localhost:3000/api/v1/hipster/#{params[:id]}.json").body
  end
end
