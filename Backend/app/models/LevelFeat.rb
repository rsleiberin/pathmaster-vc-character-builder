class LevelFeat < ActiveRecord::Base
    belongs_to :feat
    belongs_to :level
end