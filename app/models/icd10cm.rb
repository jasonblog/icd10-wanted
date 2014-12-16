require 'elasticsearch/model'

class Icd10cm < ActiveRecord::Base
    include Elasticsearch::Model
    include Elasticsearch::Model::Callbacks
end

Icd10cm.import

#@icd10cms = Icd10cm.search('foobar').records

