class CreatePersonajes < ActiveRecord::Migration[7.0]
  def change
    create_table :personajes do |t|
      t.string :nombre
      t.integer :edad
      t.integer :peso
      t.string :historia
      t.references :pelicula, null: false, foreign_key: true

      t.timestamps
    end
  end
end
