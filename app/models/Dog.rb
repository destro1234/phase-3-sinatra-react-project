class Dog < ActiveRecord::Base
    belongs_to :walker

    serialize :walks
    
    after_initialize do |b|
        b.walks = [] if b.walks == nil
    end
end