class Collection < ApplicationRecord
  belongs_to :user
  has_many :items, dependent: :destroy

  def self.to_csv(fields = column_names, options = {})
    CSV.generate(options) do |csv|
      csv << fields
      all.each do |collection|
        csv << collection.attributes.values_at(*fields)
      end
    end
  end

end
