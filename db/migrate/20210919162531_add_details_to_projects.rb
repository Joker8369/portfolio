class AddDetailsToProjects < ActiveRecord::Migration[6.1]
  def change
    add_column :projects, :text, :string
  end
end
