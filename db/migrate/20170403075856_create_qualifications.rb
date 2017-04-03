class CreateQualifications < ActiveRecord::Migration[5.0]
  def change
    create_table :qualifications do |t|
      t.string :title
      t.string :description
      t.string :school_name
      t.date :start_date
      t.date :end_date
      t.references :resume, foreign_key: true

      t.timestamps
    end
  end
end
