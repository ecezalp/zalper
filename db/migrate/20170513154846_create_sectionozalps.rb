class CreateSectionozalps < ActiveRecord::Migration[5.0]
  def change
    create_table :sectionozalps do |t|
      t.belongs_to :zalp
      t.belongs_to :section

      t.timestamps
    end
  end
end
