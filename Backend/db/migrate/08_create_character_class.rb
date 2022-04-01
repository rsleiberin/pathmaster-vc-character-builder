class CreateCharacterClass < ActiveRecord::Migration[6.1]
    def change
        create_table :character_classes do |t|
            t.belongs_to :version
        end
    end
end