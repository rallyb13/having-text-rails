class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :name
      t.integer :phone
      t.string :email
      t.integer :user_id

      t.timestamps
    end
  end
end
