json.array!(@icd9cms) do |icd9cm|
  json.extract! icd9cm, :id, :code, :disease_en, :disease_zhtw, :disease_synonym, :clinical
  json.url icd9cm_url(icd9cm, format: :json)
end
