class Hipster
	attr_accessor :word, :sentence, :paragraph

	def initialize(hash_options)
		@word = hash_options["word"]
		@sentence = hash_options["sentence"]
		@paragraph = hash_options["paragraph"]
	end

	def self.find(id)
		Hipster.new(Unirest.get("localhost:3000/api/v1/hipster/#{params[:id]}.json").body)
	end

end