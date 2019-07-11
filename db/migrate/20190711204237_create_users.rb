class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :name
      t.float :uid
      t.string :password_digest
    end
  end
end
