class CreateAfternoons < ActiveRecord::Migration[5.2]
  def change
    create_table :afternoons do |t|
      t.string :time
      t.string :money

      t.timestamps
    end
  end
end
