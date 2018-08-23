Deface::Override.new(
  virtual_path: 'spree/admin/products/_form',
  name: 'add_medical_salts_mutli_select',
  insert_after: '[data-hook="admin_product_form_taxons"]',
  partial: 'spree/admin/products/medical_salts_multiselect'
)
