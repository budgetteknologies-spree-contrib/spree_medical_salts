object false
node(:count) { @medical_salts.count }
node(:total_count) { @medical_salts.total_count }
node(:current_page) { params[:page] ? params[:page].to_i : 1 }
node(:per_page) { params[:per_page].try(:to_i) || Kaminari.config.default_per_page }
node(:pages) { @medical_salts.total_pages }
child(@medical_salts => :medical_salts) do
  extends "spree/api/medical_salts/show"
end
