class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
			t.string :email, null:false
			t.string :password, null:false
			t.string :phone, null:false
         t.string :nickname, null:false

      t.timestamps
    end
  end
end
