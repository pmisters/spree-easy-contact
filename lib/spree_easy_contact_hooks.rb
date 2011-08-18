require 'deface'

Deface::Override.new(:virtual_path => "layouts/admin",
                     :name => "spree_easy_contact_admin_tab",
                     :insert_after => "[data-hook='admin_tabs']",
                     :text => "<%= tab(:contacts) %>",
                     :disabled => false)

class SpreeEasyContactHooks < Spree::ThemeSupport::HookListener
  insert_after :admin_tabs, :text => "<li><a href='/admin/contacts/'>Contacts</a></li>"
  insert_after :admin_configurations_menu do
    %(<tr>
        <td><a href="/admin/topics/"><%= t("contacts.topics") %></a></td>
        <td><%= t("contacts.topics_description") %></td>
      </tr>)
  end
end
