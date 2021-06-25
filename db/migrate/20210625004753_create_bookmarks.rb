class CreateBookmarks < ActiveRecord::Migration[6.0]
  def change
    create_table :bookmarks do |t|
      t.string :comment
      t.references :movie
      t.references :list

      t.timestamps
    end
  end
end
