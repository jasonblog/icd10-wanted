json.array!(@icd10cms) do |icd10cm|
  json.extract! icd10cm, :id, :code, :disease_en, :disease_zhtw, :disease_synonym, :clinical
  json.url icd10cm_url(icd10cm, format: :json)
end
