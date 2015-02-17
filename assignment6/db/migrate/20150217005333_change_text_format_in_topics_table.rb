class ChangeTextFormatInTopicsTable < ActiveRecord::Migration
  def change
    change_column :topics, :text, :text
  end
end
