class Concert < ApplicationRecord
    belongs_to :band

    validates :datetime, :duration, :assistants, presence: true
    
    
end
