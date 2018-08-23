module Spree
  module Api
      class MedicalSaltsController < Spree::Api::BaseController
    		def index
    			if params[:ids]
            @medical_salts = Spree::MedicalSalt.where(id: params[:ids].split(','))
          else
            @medical_salts = Spree::MedicalSalt.order(:id).ransack(params[:q]).result
          end
          # @medical_salts = Spree::MedicalSalt.page(params[:page] || 1).per(50)
          @medical_salts = @medical_salts.page(params[:page]).per(params[:per_page])
  	       respond_with(@medical_salts)
       	end

        def model_class
          Spree::MedicalSalt
        end
      end
  end
end
