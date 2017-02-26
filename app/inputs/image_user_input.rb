class ImagePreviewInput < SimpleForm::Inputs::FileInput
  def input(wrapper_options = nil)
    # :preview_version is a custom attribute from :input_html hash, so you can pick custom sizes
    User.all.each_with_index do |user, index|
       cl_image_tag user.photo, width: 50, height: 50
      end
  end
end
