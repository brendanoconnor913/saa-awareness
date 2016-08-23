class Feedback < ActiveRecord::Base
    validates :email, presence: true
    validates :content, presence: true
end
