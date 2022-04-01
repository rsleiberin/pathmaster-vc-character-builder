class CreateCharacters < ActiveRecord::Migration[6.1]
    def change
        create_table :characters do |t|
            t.belongs_to :user
            t.integer :primary_version
            t.integer :work_in_progress
            t.timestamps
        end
    end
end