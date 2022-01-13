class CreateQuestions < ActiveRecord::Migration[6.1]
  def change
    create_table :questions do |t|
      t.string :qname
      t.string :option1
      t.string :option2
      t.string :option3
      t.string :option4
      t.string :correct_ans
      t.string :string

      t.timestamps
    end
  end
end
