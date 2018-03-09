class Cancer < ApplicationRecord
  # Direct associations

  has_many   :treatments,
             :dependent => :destroy

  belongs_to :user

  # Indirect associations

  # Validations

end
