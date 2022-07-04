class CreateLicitaciones < ActiveRecord::Migration[6.1]
  def change
    create_table :licitaciones do |t|
      t.string :titulo
      t.string :descripcion
      t.integer :presupuesto
      t.references :categoria, null: false, foreign_key: true
      t.references :licitante, null: false, foreign_key: true

      t.timestamps
    end
  end
end
