class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.text :content
      t.string :city
      t.string :state
      t.string :country


      t.timestamps null: false
    end
  end
end
