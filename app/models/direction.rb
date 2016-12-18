class Direction < ActiveRecord::Base
  belongs_to :recipe, inverse_of: :directions
end
