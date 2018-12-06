ActiveAdmin.register_page "Dashboard" do

  menu priority: 1, label: proc{ I18n.t("active_admin.dashboard") }

  content title: proc{ I18n.t("active_admin.dashboard") } do
    columns do
      column do
        panel 'Users' do
          ul do
            li "Total registered users: #{User.count}"
            li "Total registered admins: #{AdminUser.count}"
          end
        end
      end
    end
  end # content
end
