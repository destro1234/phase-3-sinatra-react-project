class Dog < ActiveRecord::Base
    has_many :walks

    serialize :walks
    
    after_initialize do |b|
        b.walks = [] if b.walks == nil
    end
end