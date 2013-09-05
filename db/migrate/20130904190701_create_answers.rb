class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.text :message
      t.text :from

      t.timestamps
    end
  end
end
