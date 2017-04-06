ActiveAdmin.register Project do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
  permit_params :title, :body, :url, :github_url, :description, :screenshot, :screenshot_file_name, :screenshot_content_type, :screenshot_file_size, :screenshot_updated_at

  form do |f|
    f.inputs "Project Details" do
      f.input :title
      f.input :body
      f.input :url
      f.input :github_url
      f.input :description
      f.input :screenshot, :required => false, :as => :file
    end
    f.actions
  end
end
