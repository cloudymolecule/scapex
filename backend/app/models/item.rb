class Item < ApplicationRecord
    belongs_to :room

    validates :name, :description, :looked_message, presence: true
    validates :take_message, presence: true, if: :take_validation
   
    
    validates :closed_message, presence: true, if: :closed_validation
    validates :talk_message, presence: true, if: :talk_validation
    validates :locked_message, presence: true, if: :locked_validation
    validates :opened_message, presence: true, if: :locked_validation

    def take_validation
        take 
    end

    def closed_validation
        closed
    end

    def talk_validation
        talk
    end

    def locked_validation
        locked
    end


end
