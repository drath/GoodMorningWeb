require 'gcm'
ActiveAdmin.register Post do


  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  permit_params :quote, :picture

  form :html => { :enctype => "multipart/form-data" } do |f|
    f.inputs "Details" do
      f.input :quote
      f.input :picture, :as => :file, :hint => f.template.image_tag(f.object.picture.url(:medium))
    end

    f.actions

  end

  before_create do |post|
    logger.debug "Creating a new post...url is:" + post.picture.url(:medium)
    gcm = GCM.new("AIzaSyB8lrrC-q5ECkzPLmJ5Mi9fA03nZPzbii0")
    registration_ids= ["APA91bHvVBpz8vmeKmoSutzpq-olxY9cAvfagqLu-l-H4ue2LQHjR76IgxhzxGzKglRNnPno6X5RB7fsXVXtpwt8PeuQoU9uG8GHGXIJU6jeBU8YPKT4oeMiNTeHf9rhFAFimgp3LY-XGBJKZx2DKDUpcX_AALAeXrGXWrD5PFNgGN9puwROHVE"]
    options = {data: {message: "http://upload.wikimedia.org/wikipedia/commons/4/44/Jelly_cc11.jpg"}, collapse_key: "updated_score"}
    response = gcm.send(registration_ids, options)
    logger.debug "Registration Response is............" + response[:response]
  end

end
