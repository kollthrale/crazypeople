class CreateTeams < ActiveRecord::Migration[5.0]
  def change
    create_table :teams do |t|
      t.string :sport
      t.string :country
      t.integer :medals_won
      t.boolean :good_or_not
      t.string :color
      t.boolean :loud

      t.timestamps
    end
  end
end
