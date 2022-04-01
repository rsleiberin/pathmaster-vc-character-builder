class Version < ActiveRecord::Base
    belongs_to :character
    has_one :ancestry, dependent: :destroy
    has_one :heritage, dependent: :destroy
    has_one :character_class, dependent: :destroy
    has_many :levels, dependent: :destroy
end