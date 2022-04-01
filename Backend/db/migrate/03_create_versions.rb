class CreateVersions < ActiveRecord::Migration[6.1]
    def change
        create_table :versions do |t|
            t.belongs_to :character
            t.string :version_name
            t.string :first_name
            t.string :last_name
            t.string :middle_name
            t.string :character_title
            t.string :image
            t.boolean :is_wip
            t.timestamps
        end
    end
end