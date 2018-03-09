class CreateTreatments < ActiveRecord::Migration
  def change
    create_table :treatments do |t|
      t.integer :cancer_id
      t.string :treatment_name

      t.timestamps

    end
  end
end
