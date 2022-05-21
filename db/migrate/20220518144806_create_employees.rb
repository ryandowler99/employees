class CreateEmployees < ActiveRecord::Migration[7.0]
  unless table_exists? :employees  
    def change
      create_table :employees do |t|
        t.string :name
        t.string :email

        t.timestamps
      end
    end
  end
end
