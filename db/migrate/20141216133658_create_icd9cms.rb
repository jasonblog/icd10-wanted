class CreateIcd9cms < ActiveRecord::Migration
  def change
    create_table :icd9cms do |t|

      t.timestamps
    end
  end
end
