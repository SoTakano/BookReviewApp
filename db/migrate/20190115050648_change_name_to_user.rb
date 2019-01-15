class ChangeNameToUser < ActiveRecord::Migration[5.1]
  def change
  	def up
    	change_column :users, :name, :string, default: "名無し"
  	end

  #変更前の型
  	def down
    	change_column :users, :name, :string
  	end
  end
end
