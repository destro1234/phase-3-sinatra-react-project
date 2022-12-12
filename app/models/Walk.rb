class Walk < ActiveRecord::Base
    belongs_to :walker
    has_many :dogs
end