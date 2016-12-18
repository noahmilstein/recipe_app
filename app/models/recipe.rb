class Recipe < ActiveRecord::Base
  has_attached_file :image, styles: { medium: "400x400#", thumb: "100x100#" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
  validates :title, :description, :image, presence: true

  has_many :ingredients, inverse_of: :recipe
  has_many :directions, inverse_of: :recipe

  accepts_nested_attributes_for :ingredients, reject_if: :all_blank, allow_destroy: true
  accepts_nested_attributes_for :directions, reject_if: :all_blank, allow_destroy: true
end
