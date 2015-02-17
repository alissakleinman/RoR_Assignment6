class AddTextToTopics < ActiveRecord::Migration
  def change
    add_column :topics, :text, :string
  end
end
