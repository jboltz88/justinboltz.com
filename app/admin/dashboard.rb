ActiveAdmin.register_page "Dashboard" do

  menu priority: 1, label: proc{ I18n.t("active_admin.dashboard") }

  content title: proc{ I18n.t("active_admin.dashboard") } do
    columns do
      column do
        panel "Posts" do
          ul do
            Post.all.map do |post|
              li link_to(post.title, admin_post_path(post))
            end
          end
        end
      end

      column do
        panel "Projects" do
          ul do
            Project.all.map do |project|
              li link_to(project.title, admin_project_path(project))
            end
          end
        end
      end
    end
  end # content
end
