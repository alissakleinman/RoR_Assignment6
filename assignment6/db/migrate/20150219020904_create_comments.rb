class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :author
      t.text :body
      t.integer :topic_id

      t.timestamps null: false
    end
  end
end
