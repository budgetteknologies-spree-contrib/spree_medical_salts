Spree::Admin::ProductsController.class_eval do
  before_action :load_medical_salts, except: :index
  before_action :convert_medical_salts_to_params, only: [:update, :create]

  def convert_medical_salts_to_params
    if params[:product][:medical_salt_ids].present?
          params[:product][:medical_salt_ids] = params[:product][:medical_salt_ids].split(',')
    end
  end

	def load_medical_salts
		@medical_salts = Spree::MedicalSalt.order(:name)
	end
  # def medical_salts
  #   load_resource
  #   @medical_salts = Spree::MedicalSalt.order(:name)
  # end
  def update_medical_salts
    @medical_salts = Spree::MedicalSalt.order(:name)
  end
end
