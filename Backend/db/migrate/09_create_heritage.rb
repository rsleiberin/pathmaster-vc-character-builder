class CreateHeritage < ActiveRecord::Migration[6.1]
    def change
        create_table :heritages do |t|
            t.belongs_to :version
        end
    end
end