require “instagram”
Instagram.configure do |config|
	config.client_id = <%= ENV['ELIZAINSTATOKEN'] %>
	config.access_token = <%= ENV['INSTACLIENTID'] %>
end