namespace :scraper do
  desc "Fetch events and venues from Eventful"
  task scrape: :environment do
  	require 'open-uri'
  	require 'json'

  	# Set API token and URL
  	auth_token = "XXX"
  	polling_url = "XXX"

  	# Specify request parameters 
  	params = {
  		auth_token: auth_token,
      anchor: XXX,
      source: "XXX",
      category_group: "XXX",
      category: "XXX",
      'location.city' => "USA-NYM-BRL",
      retvals: "location,external_url,heading,body,timestamp,price,images,annotations"
  	}

  	# Prepare API request
  	uri = URI.parse(polling_url)
   	uri.query = URI.encode_www_form(params)

   	# Submit request
   	result = JSON.parse(open(uri).read)

   	# Display results to screen
   	puts JSON.pretty_generate result

  end

  desc "TODO"
  task destroy_all_posts: :environment do
  end

end