class CreateBoards < ActiveRecord::Migration[6.0]
  def change
    create_table :boards do |t|
      t.string :theme
      t.string :difficulty
      t.integer :moves
      t.references :user, null: false, foreign_key: true

    
    end
  end
end
