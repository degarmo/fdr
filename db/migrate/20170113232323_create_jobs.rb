class CreateJobs < ActiveRecord::Migration[5.0]
  def change
    create_table :jobs do |t|
      t.string :title
      t.string :company
      t.string :pay
      t.string :location
      t.text :description

      t.timestamps
    end
  end
end
