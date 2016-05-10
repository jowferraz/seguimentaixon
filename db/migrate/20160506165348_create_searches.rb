class CreateSearches < ActiveRecord::Migration
  def change
    create_table :searches do |t|
      t.string :keywords
      t.string :email
      t.string :estado
      t.string :cargo
      t.integer :idade
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
