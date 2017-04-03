class CreateCertifications < ActiveRecord::Migration[5.0]
  def change
    create_table :certifications do |t|
      t.string :title
      t.string :year
      t.references :resume, foreign_key: true

      t.timestamps
    end
  end
end
