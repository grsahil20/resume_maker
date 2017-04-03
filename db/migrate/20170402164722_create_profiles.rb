class CreateProfiles < ActiveRecord::Migration[5.0]
  def change
    create_table :profiles do |t|
      t.string :full_name
      t.string :email
      t.datetime :dob
      t.string :phone
      t.string :linkedin_url
      t.string :blog_url
      t.string :title
      t.string :description
      t.references :resume

      t.timestamps
    end
  end
end
