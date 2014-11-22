class CreateIcd10cms < ActiveRecord::Migration
  def change
    create_table :icd10cms do |t|
      t.string :code
      t.string :disease_en
      t.string :disease_zhtw
      t.text :disease_synonym
      t.text :clinical

      t.timestamps
    end
  end
end
