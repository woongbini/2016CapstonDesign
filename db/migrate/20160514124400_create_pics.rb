class CreatePics < ActiveRecord::Migration
  def change
    create_table :pics do |t|

      t.timestamps
    end
  end
end
