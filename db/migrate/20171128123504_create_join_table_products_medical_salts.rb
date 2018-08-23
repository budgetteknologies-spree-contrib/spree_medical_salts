class CreateJoinTableProductsMedicalSalts < ActiveRecord::Migration[5.1]
  def change
    create_table :spree_products_medical_salts, id: false do |t|
      t.integer :product_id
      t.integer :medical_salt_id
      t.index [:product_id]
      t.index [:product_id, :medical_salt_id], :name => 'spree_products_medical_salts_product_medical_salt'
      t.index [:medical_salt_id, :product_id], :name => 'spree_products_medical_salts_medical_salt_product'
    end
  end
end
