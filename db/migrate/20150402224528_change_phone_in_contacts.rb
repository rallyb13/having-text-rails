class ChangePhoneInContacts < ActiveRecord::Migration
  def change
    remove_column :contacts, :phone, :integer
    add_column :contacts, :phone, :string
  end
end
