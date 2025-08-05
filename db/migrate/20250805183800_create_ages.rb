class CreateAges < ActiveRecord::Migration[8.0]
  def change
    create_table :ages do |t|
      t.string :age
      t.timestamps
    end
  end
end
