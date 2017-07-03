class CreateAdmissions < ActiveRecord::Migration[5.1]
  def up
    create_table :admissions do |t|
      t.string :name
      t.integer :dob
      t.string :city
      t.integer :reg_no

      t.timestamps
    end
  end

  def down
    drop_table :admissions
  end
end
