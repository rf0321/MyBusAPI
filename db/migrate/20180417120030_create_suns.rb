class CreateSuns < ActiveRecord::Migration[5.2]
  def change
    create_table :suns do |t|
      t.string :time
      t.string :money

      t.timestamps
    end
  end
end
