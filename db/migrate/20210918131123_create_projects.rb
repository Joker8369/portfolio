class CreateProjects < ActiveRecord::Migration[6.1]
  def change
    create_table :projects do |t|
      t.string :name
      t.string :url
      t.string :content

      t.timestamps
    end
  end
end
