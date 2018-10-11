class CreateComentarios < ActiveRecord::Migration
  def change
    create_table :comentarios do |t|
      t.string :comentarista
      t.text :contendio
      
      t.references :articulo, index: true

      t.timestamps
    end
    add_foregin_key :comentarios,:articulos
  end
end
