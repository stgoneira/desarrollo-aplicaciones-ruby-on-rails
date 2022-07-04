class CreateProductos < ActiveRecord::Migration[6.1]
  def change
    create_table :productos do |t|
      t.string :nombre
      t.string :descripcion
      t.decimal :precio
      t.references :categoria, null: false, foreign_key: true

      t.timestamps
    end
  end
end
