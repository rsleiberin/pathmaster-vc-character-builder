class CreateFeats < ActiveRecord::Migration[6.1]
    def change
        create_table :feats do |t|
            t.string :feat_name 
            t.integer :feat_level
        end
    end
end