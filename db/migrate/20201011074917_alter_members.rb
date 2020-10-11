class AlterMembers < ActiveRecord::Migration[6.0]
  def up
    add_column :members, :phone , :string
    rename_column :members, :name , :nickname
    change_column :members, :sex, :integer, null: false,default: 2
  end
  def down
    remove_column :members, :phone , :string
    rename_column :members, :nickname , :name
    change_column :members, :sex, :integer, null: false,default: 1
  end
end
