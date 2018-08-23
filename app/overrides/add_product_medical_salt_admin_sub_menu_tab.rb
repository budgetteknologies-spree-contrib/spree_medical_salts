Deface::Override.new(
  virtual_path: 'spree/admin/shared/sub_menu/_product',
  name: 'add_product_medical_salt_admin_sub_menu_tab',
  insert_bottom: '[data-hook="admin_product_sub_tabs"]',
  text: '<%= tab :medical_salts, label: plural_resource_name(Spree::MedicalSalt) %>'
)
