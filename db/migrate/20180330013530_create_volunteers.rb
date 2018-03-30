class CreateVolunteers < ActiveRecord::Migration[5.1]
  def change
    create_table :volunteers do |t|
      t.string :email
      t.string :first_name
      t.string :last_name
      t.string :phone
      t.boolean :terms_and_conditions
      t.timestamps
    end
  end
end
