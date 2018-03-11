class CreateCancers < ActiveRecord::Migration
  def change
    create_table :cancers do |t|
      t.string :cancer_name
      t.integer :user_id

      t.timestamps

    end
  end
end
