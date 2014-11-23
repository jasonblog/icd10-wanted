# ruby encoding: utf-8
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

require 'roo'
require 'spreadsheet'

icd10cm_file = "/path/to/icd10-wanted/db/26361_1_2014_ICD-10-CM.xls"

xls = Roo::Spreadsheet.open(icd10cm_file)
xls.each_with_pagename do |name, sheet|
    if (/^工作表/).match(name) == nil
        (3..sheet.last_row).step(2).to_a.each do |idx|
            Icd10cm.create([code: sheet.row(idx)[0].strip,
                            disease_en: sheet.row(idx)[1].strip,
                            disease_zhtw: sheet.row(idx + 1)[1].strip])
        end
    end
end
