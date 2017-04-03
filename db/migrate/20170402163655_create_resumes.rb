class CreateResumes < ActiveRecord::Migration[5.0]
  def change
    create_table :resumes do |t|
      t.string :slug

      t.timestamps
    end
    add_index :resumes, :slug, unique: true
  end
end
