class CreateAthletes < ActiveRecord::Migration[5.0]
  def change
    create_table :athletes do |t|
      t.string :name
      t.string :skill
      t.integer :crazy_scale
      t.boolean :very_crazy
      t.boolean :could_be_normal
      t.boolean :funny
      t.integer :age
      t.boolean :dangerous
      t.belongs_to :team

      t.timestamps
    end
  end
end
