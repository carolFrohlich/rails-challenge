class CreateFriendships < ActiveRecord::Migration[5.2]
  def change
    create_table :friendships do |t|
      t.references :member1, foreign_key: true
      t.references :member2, foreign_key: true

      t.timestamps
    end
  end
end
