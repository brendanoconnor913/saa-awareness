class Post < ActiveRecord::Base
    validates :content, presence: true
    validate do
        valid_location
    end
    
    
    
    private
        def valid_location
           self.errors.add(:base, "test")
        end
end
