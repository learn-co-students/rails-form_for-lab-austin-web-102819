class ChangeTableNameToSchoolclasses < ActiveRecord::Migration[5.0]
  def change
    rename_table :schoolclass_tables, :schoolclasses
  end
end
