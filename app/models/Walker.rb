class Walker < ActiveRecord::Base
    has_many :dogs
    # has_many :dogs, through: :walks
end