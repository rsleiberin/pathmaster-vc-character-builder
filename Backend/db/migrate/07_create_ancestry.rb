class CreateAncestry < ActiveRecord::Migration[6.1]
    def change
        create_table :ancestries do |t|
            t.belongs_to :version
            t.string :ancestry_name
            t.integer :ancestry_speed
            t.integer :ancestry_hit_points
            t.integer :ancestry_size
            t.integer :ancestry_strength
            t.integer :ancestry_dexterity
            t.integer :ancestry_constitution
            t.integer :ancestry_intelligence
            t.integer :ancestry_wisdom
            t.integer :ancestry_charisma
            t.integer :ancestry_vision
        end
    end
end