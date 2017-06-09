class HipstersController < ApplicationController
  def index
    @hipsters = []
    Unirest.get("#{ ENV["API_HOST"] }/api/v2/hipster.json").body.each do |hipster_hash|
      @hipsters << Hipster.new(hipster_hash)
    end
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
  	redirect_to "/hipster/#{ hipster.id }"
  	
  end

  def show
  	@hipster = Hipster.find(hipster.id)
  end
end
