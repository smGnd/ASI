class CreateLibs < ActiveRecord::Migration
  def change
    create_table :libs do |t|
      t.string :cover
      t.string :author
      t.string :title
      t.string :isbn

      t.timestamps
    end
  end
end
