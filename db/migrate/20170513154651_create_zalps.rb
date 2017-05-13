class CreateZalps < ActiveRecord::Migration[5.0]
  def change
    create_table :zalps do |t|
      t.string :title
      t.string :comment

      t.timestamps
    end
  end
end
