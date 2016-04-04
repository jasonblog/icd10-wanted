class Icd9cmIcd10cmship < ActiveRecord::Base
    belongs_to :icd10cm
    belongs_to :icd9cm
end
