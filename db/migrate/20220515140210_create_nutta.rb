class CreateNutta < ActiveRecord::Migration[7.0]
  def change
    create_table :nutta do |t|
      t.string :Article
      t.string :title
      t.text :body

      t.timestamps
    end
  end
end
