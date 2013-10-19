class CreateAlumnis < ActiveRecord::Migration
  def change
    create_table :alumnis do |t|
      t.string :firstname
      t.string :lastname
      t.string :description

      t.timestamps
    end
  end
end
