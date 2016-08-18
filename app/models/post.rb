class Post < ActiveRecord::Base
    validates :content, presence: true
    validates :city, presence: true
    validate {valid_location}
    
    private
        def valid_location
            if self.country.empty? && self.state.empty?
                self.errors.add(:base, "You must enter a state (if in U.S.) or Country")
            end
        end

end
