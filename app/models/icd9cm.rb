require 'elasticsearch/model'
class Icd9cm < ActiveRecord::Base
    include Elasticsearch::Model
    include Elasticsearch::Model::Callbacks

    has_many :icd9cm_icd10cmships
    has_many :icd10cms, :through => :icd9cm_icd10cmships
end

Icd9cm.import
