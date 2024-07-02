class CreateBoards < ActiveRecord::Migration[7.1]
  def change
    create_table :boards do |t|
      t.string :board_name
      t.date :purchase_date
      t.decimal :purchase_price
      t.decimal :current_price
      t.decimal :board_length
      t.decimal :board_volume
      t.string :board_type
      t.date :last_used_date

      t.timestamps
    end
  end
end
