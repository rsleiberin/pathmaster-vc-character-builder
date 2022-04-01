class CreateLevels < ActiveRecord::Migration[6.1]
    def change
        create_table :levels do |t|
            t.belongs_to :version
            t.integer :level_number
        end
    end
end