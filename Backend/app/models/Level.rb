class Level < ActiveRecord::Base
    belongs_to :version
    has_many :level_feats, dependent: :destroy
    has_many :feats, through: :level_feats
end