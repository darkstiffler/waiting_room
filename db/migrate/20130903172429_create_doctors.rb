class CreateDoctors < ActiveRecord::Migration
  def change
    create_table :doctors do |t|

    	t.string 	:name
      t.integer 	:age
      t.string 	:location
      t.string		:licence
      t.string 	:salt   
      t.string 	:fish
      t.string 	:code
      t.timestamp :expires_at

      t.timestamps
    end
  end
end
