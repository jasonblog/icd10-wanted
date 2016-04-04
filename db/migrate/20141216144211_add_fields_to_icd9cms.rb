class AddFieldsToIcd9cms < ActiveRecord::Migration
  def change
    add_column :icd9cms, :code, :string
    add_column :icd9cms, :disease_en, :string
    add_column :icd9cms, :disease_zhtw, :string
    add_column :icd9cms, :disease_synonym, :text
    add_column :icd9cms, :clinical, :text

  end
end
