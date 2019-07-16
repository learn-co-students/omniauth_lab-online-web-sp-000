class ChangeIntegerLimitInUser < ActiveRecord::Migration[5.0]
  def change
    def change
      change_column :users, :uid, :integer, limit: 17
    end
  end
end
