class CreateBooks < ActiveRecord::Migration[6.1]
  def change
    create_table :books do |t|
      t.string :title
      t.string :author
      t.float :price
      t.string :published_date

      t.timestamps
    end
  end
end
