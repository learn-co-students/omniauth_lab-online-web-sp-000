class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :uid
      t.datetime :created_at
      t.datetime :updated_at

      t.timestamps
    end
  end
end
