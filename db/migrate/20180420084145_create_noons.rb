class CreateNoons < ActiveRecord::Migration[5.2]
  def change
    create_table :noons do |t|
      t.string :time
      t.string :money

      t.timestamps
    end
  end
end
