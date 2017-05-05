class CreateLoginusers < ActiveRecord::Migration[5.1]
  def change
    create_table :loginusers do |t|
      t.string :name
      t.string :password_digest

      t.timestamps
    end
  end
end
