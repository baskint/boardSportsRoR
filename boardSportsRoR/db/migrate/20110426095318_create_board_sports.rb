class CreateBoardSports < ActiveRecord::Migration
  def self.up
    create_table :board_sports do |t|
      t.string :BoardName
      t.integer :board_id

      t.timestamps
    end
  end

  def self.down
    drop_table :board_sports
  end
end
