class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users, id: :uuid do |t|
      t.string :first_name
      t.string :last_name
      t.string :desc
      t.string :type
      t.string :email

      t.timestamps
    end
  end
end
