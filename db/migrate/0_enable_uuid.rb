# config/db/migrate/enable_uuid.rb
class EnableUuid < ActiveRecord::Migration[6.1]
  def change
    enable_extension 'uuid-ossp'
    enable_extension 'pgcrypto'
  end
end