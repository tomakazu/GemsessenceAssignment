class AddTime < ActiveRecord::Migration[6.1]
  def change
    add_column :questions, :time, :datetime
  end
end
