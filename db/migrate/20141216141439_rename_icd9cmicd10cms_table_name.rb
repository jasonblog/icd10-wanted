class RenameIcd9cmicd10cmsTableName < ActiveRecord::Migration
  def change
    rename_table :icd9cm_icd10cms, :icd9cm_icd10cmship
  end
end
