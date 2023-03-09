class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :name, null: false
<<<<<<< HEAD
      t.string :email, null: false
=======
      # t.string :email, null: false
>>>>>>> c2a746d4af0cfc768a74e19c2bef226bfdfbc1f0
      t.timestamps
    end
  end
end
