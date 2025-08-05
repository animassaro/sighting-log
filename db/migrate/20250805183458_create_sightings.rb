class CreateSightings < ActiveRecord::Migration[8.0]
  def change
    create_table :sightings do |t|
      t.references :user
      t.references :specie
      t.references :location
      t.references :sex
      t.references :status
      t.references :age
      t.timestamps
    end
  end
end
