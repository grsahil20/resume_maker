class CreateCompanies < ActiveRecord::Migration[5.0]
  def change
    create_table :companies do |t|
      t.string :title
      t.string :url
      t.string :description
      t.date :start_date
      t.date :end_date
      t.references :resume, foreign_key: true

      t.timestamps
    end
  end
end
