class Character < ActiveRecord::Base
    belongs_to :user
    has_many :versions, dependent: :destroy
end