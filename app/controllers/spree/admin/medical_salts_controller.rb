module Spree
  module Admin
    class MedicalSaltsController < ResourceController
      def index
        params[:q] ||= {}
        @search = Spree::MedicalSalt.ransack(params[:q])
        @medical_salts = @search.result(distinct: true).
              page(params[:page] || 1).
              per(params[:per_page] || Spree::Config[:admin_products_per_page])
      end
    end
  end
end
