class InitializeDb < ActiveRecord::Migration[6.1]
    def change
        create_table :users do |t|
            t.timestamps
        end
        create_table :characters do |t|
            t.belongs_to :user, foreign_key: true
            t.integer :primary_version
            t.timestamps
        end
        create_table :versions do |t|
            t.belongs_to :character
            t.has_one :ancestry
            t.has_one :heritage
            t.string :version_name
            t.string :character_name
            t.string :image
            t.string :heritage
            t.string :character_class
            t.boolean :is_wip
            t.timestamps
        end
        create_table :wips do |t|
            t.belongs_to :version
            t.has_one :version
        end
        create_table :ancestrys do |t|
            t.belongs_to :version
            t.string :name
            t.integer :speed
            t.integer :hit_points
            t.integer :size
            t.integer :constitution
            t.integer :strength
            t.integer :dexterity
            t.integer :constitution
            t.integer :intelligence
            t.integer :wisdom
            t.integer :charisma
            t.integer :vision
        end
        create_table :ancestry_features do |t|
            t.belongs_to :ancestry
            t.string :name
        end
        create_table :languages do |t|
            t.string :name
            t.string :rarity
        end
        create_table :version_languages do |t|
            t.belongs_to :version
            t.belongs_to :langauge
        end
        create_table :backgrounds do |t|
            t.belongs_to :version
            t.string :name
            t.string :skill
            t.string :skill_replacement
            t.string :lore
            t.integer :constitution
            t.integer :strength
            t.integer :dexterity
            t.integer :constitution
            t.integer :intelligence
            t.integer :wisdom
            t.integer :charisma
        end
        create_table :heritages do |t|
            t.belongs_to :version
            t.string :name
        end
        create_table :version_classs do |t|
            t.belongs_to :version
            t.string :name
            t.string :key_ability
            t.integer :hit_points
        end
        create_table :levels do |t|
            t.belongs_to :version
            t.integer :level
        end
        create_table :feats do |t|
            t.string :name 
            t.integer :feat_level
            t.string :feat_type
        end
        create_table :feat_prerequisites do |t|
            t.belongs_to :feat
            t.belongs_to :feat
        end
        create_table :version_feats do |t|
            t.belongs_to :version
            t.string :source
            t.integer :level
            t.belongs_to :feats
        end
        create_table :trainings do |t|
            t.string :skill
            t.string :skill_type
            t.integer :training_level
        end
        create_table :version_trainings do |t|
            t.belongs_to :version
            t.string :source
            t.belongs_to :training
        end
        create_table :traits do |t|
    end
end