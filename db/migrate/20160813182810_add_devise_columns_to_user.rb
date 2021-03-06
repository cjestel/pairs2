class AddDeviseColumnsToUser < ActiveRecord::Migration[5.0]
  def change
    change_table :users do |t|
      t.string :encrypted_password, :null => false, :default => ''
      t.string :reset_password_token
      t.datetime :reset_password_sent_at
      t.datetime :remember_created_at
      t.integer :sign_in_count, :null => false, :default => 0
      t.datetime :current_sign_in_at
      t.datetime :last_sign_in_at
      t.inet :current_sign_in_ip
      t.inet :last_sign_in_ip
    end
  end
end
