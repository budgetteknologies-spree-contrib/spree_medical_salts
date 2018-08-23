module Spree
  class MedicalSalt < Spree::Base
	# extend FriendlyId
   #  friendly_id :permalink, slug_column: :permalink, use: :history
   #  before_validation :set_permalink, on: :create, if: :name

  	has_and_belongs_to_many :products

    self.whitelisted_ransackable_associations = %w[]
    self.whitelisted_ransackable_attributes = %w[name potency potency_type]
    self.whitelisted_ransackable_scopes = %w[]

  	validates :name, presence: true
    # validates :permalink, uniqueness: { case_sensitive: false }

    # # Creates permalink base for friendly_id
    # def set_permalink
    #     self.permalink = name.to_url if permalink.blank?
    #   end
    # end

    def pretty_name
      "#{name} #{potency} #{potency_type}"
    end

    def name_for_sql_search
      [name, potency].join(' ')
    end
  end
end
