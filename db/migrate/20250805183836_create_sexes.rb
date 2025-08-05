class CreateSexes < ActiveRecord::Migration[8.0]
  def change
    create_table :sexes do |t|
      t.string :sex
      t.timestamps
    end
  end
end
