require 'deface'

Deface::Override.new(:virtual_path => "layouts/admin",
                     :name => "spree_easy_contact_admin_tab",
                     :insert_after => "[data-hook='admin_tabs']",
                     :text => "<%= tab(:contacts) %>",
                     :disabled => false)

class SpreeEasyContactHooks < Spree::ThemeSupport::HookListener
  insert_after :admin_tabs, :text => "<li><a href='/admin/contacts/'>Contacts</a></li>"
end

# class SpreeEasyContactHooks < Spree::ThemeSupport::HookListener
#   # custom hooks go here
#   insert_after :admin_tabs do
#     %(<%= tab(:contacts) %>)
#   end
#   
#   insert_after :admin_configurations_menu do
#     "<%= configurations_menu_item(I18n.t('topics'), admin_topics_path, I18n.t('topics_description')) %>"
#   end
#   
# end