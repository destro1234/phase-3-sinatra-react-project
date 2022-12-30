class Walk < ActiveRecord::Base
    belongs_to :dog
    # has_many :dogs, through: :walks
end