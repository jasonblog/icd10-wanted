require 'elasticsearch/model'

class Icd10cm < ActiveRecord::Base
    include Elasticsearch::Model
    include Elasticsearch::Model::Callbacks
    has_many :icd9cm_icd10cmships
    has_many :icd9cms, :through => :icd9cm_icd10cmships
end

Icd10cm.import

#@icd10cms = Icd10cm.search('foobar').records

