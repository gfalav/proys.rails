class CreateProyectos < ActiveRecord::Migration[6.0]
  def change
    create_table :proyectos do |t|
      t.string :nombre
      t.string :desc
      t.string :proyectista
      t.string :comitente
      t.string :contratista
      t.string :expediente
      t.string :ubicacion

      t.timestamps
    end
  end
end
