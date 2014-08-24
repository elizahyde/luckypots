module PotlucksHelper
	require 'instagram'

	CALLBACK_URL = "http://localhost:4567/oauth/callback"

	Instagram.configure do |config|
	  config.client_id = ENV['INSTACLIENTID']
	  config.client_secret = ENV['INSTACLIENTSECRET']
	end

	def get_potluck_pictures
	  results = Instagram.tag_recent_media("potluck")
	  results_array = []
	  while results_array.length < 26
	    results.each do |image|
	      url = image.images.thumbnail.url

	        results_array << url
	    end

	    max_id = results.last.id
	    results = Instagram.tag_recent_media("potluck", options = {max_id:max_id})
	  end
	  return results_array
	end

	def get_singles_photos
		results = Instagram.tag_recent_media("selfie")
	  results_array = []
	  while results_array.length < 26
	    results.each do |image|
	      url = image.images.thumbnail.url
	        results_array << url
	    end

	    max_id = results.last.id
	    results = Instagram.tag_recent_media("selfie", options = {max_id:max_id})
	  end
	  return results_array
	end
end
