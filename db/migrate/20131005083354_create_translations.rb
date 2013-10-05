class CreateTranslations < ActiveRecord::Migration
  def change
    create_table :translations do |t|
      t.string :name
      t.integer :term_id
      t.integer :votes

      t.timestamps
    end
  end
end
