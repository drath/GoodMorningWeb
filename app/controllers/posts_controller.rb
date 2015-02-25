require 'gcm'

class PostsController < ApplicationController
	def index
		gcm = GCM.new("AIzaSyB8lrrC-q5ECkzPLmJ5Mi9fA03nZPzbii0")
		registration_ids= ["APA91bHvVBpz8vmeKmoSutzpq-olxY9cAvfagqLu-l-H4ue2LQHjR76IgxhzxGzKglRNnPno6X5RB7fsXVXtpwt8PeuQoU9uG8GHGXIJU6jeBU8YPKT4oeMiNTeHf9rhFAFimgp3LY-XGBJKZx2DKDUpcX_AALAeXrGXWrD5PFNgGN9puwROHVE"]
		options = {data: {message: "123"}, collapse_key: "updated_score"}
		response = gcm.send(registration_ids, options)
		response.each do |key, value|
		    logger.debug key 
		    logger.debug value
		end
		render :text => "Response is..." + response[:response] 
	end
end
