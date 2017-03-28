ActiveAdmin.register Post do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
  permit_params :title, :body, :date, :image, :image_file_name, :image_content_type, :image_file_size, :image_updated_at


  form do |f|
    f.inputs "Project Details" do
      f.input :title
      f.input :body
      f.input :date
      f.input :image, :required => false, :as => :file
    end
    f.actions
  end
end
