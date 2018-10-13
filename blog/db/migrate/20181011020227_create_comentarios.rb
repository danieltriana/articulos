class CreateComentarios < ActiveRecord::Migration
  def change
    create_table :comentarios do |t|
      t.string :comentarista
      t.text :contendio
      
      t.references :articulo, foreign_key: true

      t.timestamps
    end
    
  end
end
