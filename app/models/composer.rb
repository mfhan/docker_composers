class Composer < ApplicationRecord
  has_many :tunes, dependent: :destroy
end
