class CreateIcd9cmIcd10cms < ActiveRecord::Migration
  def change
    create_table :icd9cm_icd10cms do |t|
      t.integer :icd9cm_id
      t.integer :icd10cm_id

      t.timestamps
    end
  end
end
