class CreateMornings < ActiveRecord::Migration[5.2]
  def change
    create_table :mornings do |t|
      t.string :time
      t.string :money

      t.timestamps
    end
  end
end
