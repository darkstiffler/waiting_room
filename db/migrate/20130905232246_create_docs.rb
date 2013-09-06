class CreateDocs < ActiveRecord::Migration
  def change
    create_table :docs do |t|
      t.string :name
      t.string :licence
      t.string :password_digest

      t.timestamps
    end
  end
end
