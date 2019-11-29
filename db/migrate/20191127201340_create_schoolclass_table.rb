class CreateSchoolclassTable < ActiveRecord::Migration[5.0]
  def change
    create_table :schoolclass_tables do |t|
      t.string :title
      t.integer :room_number
    end
  end
end
