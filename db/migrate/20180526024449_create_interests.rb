class CreateInterests < ActiveRecord::Migration[5.2]
  def change
    create_table :interests do |t|
      t.references :member, foreign_key: true
      t.string :name
      t.string :string

      t.timestamps
    end
  end
end
