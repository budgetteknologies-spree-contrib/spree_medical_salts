Spree::Api::ApiHelpers.module_eval do
  class_variable_set(:@@medical_salt_attributes, [
          :id, :name, :description, :how_it_works, :uses, :side_effects,
          :pretty_name, :potency, :potency_type,
           :created_at, :updated_at
        ])

  mattr_reader :medical_salt_attributes
end
