class CreateHolidays < ActiveRecord::Migration[7.0]
  def change
    create_table :holidays do |t|
      t.date :startdate
      t.date :enddate
      t.references :employee, null: false, foreign_key: true

      t.timestamps
    end
  end
end
