class CreateLevelFeats < ActiveRecord::Migration[6.1]
    def change
        create_table :level_feats do |t|
            t.belongs_to :level
            t.belongs_to :feat
            t.string :feat_source
            t.string :feat_slot
        end
    end
end