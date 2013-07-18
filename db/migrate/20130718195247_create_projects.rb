class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|

      t.timestamps
      t.string :project_name
      t.text :project_content

    end
  end
end
