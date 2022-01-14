class ChangeColumn < ActiveRecord::Migration[6.1]
  def change
    change_column_default :users, :score, false
  end
end
