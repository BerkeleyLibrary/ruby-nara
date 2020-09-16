class CreateDatabase < ActiveRecord::Migration[6.0]
  def self.up
    ActiveRecord::Schema.define(version: 0) do
      create_table "NARA_CaseFiles", id: false, force: :cascade do |t|
        t.integer  "Case_ID",                  limit: 4
        t.integer  "ID",                       limit: 4
        t.string   "BOXNUMBER",                limit: 50
        t.string   "LASTNAME",                 limit: 20
        t.string   "FIRSTNAME",                limit: 20
        t.string   "MIDDLENAME",               limit: 20
        t.string   "SERIES",                   limit: 6
        t.string   "CASENUMBER",               limit: 20
        t.string   "SHIP",                     limit: 22
        t.string   "DATE",                     limit: 50
        t.string   "DESTINATION",              limit: 50
        t.string   "BIRTHPLACE",               limit: 100
        t.string   "BIRTHPLACE_CITY",          limit: 50
        t.string   "BIRTHPLACE_STATE",         limit: 50
        t.string   "DOB",                      limit: 15
        t.string   "AGE",                      limit: 5
        t.string   "ARRIVAL_AGE",              limit: 50
        t.string   "GENDER",                   limit: 1
        t.string   "AFILENUM",                 limit: 50
        t.string   "CLASS",                    limit: 50
        t.string   "DISPOSITION_OF_CASE",      limit: 150
        t.string   "ST_BORN",                  limit: 10
        t.string   "HOUSE_NUM",                limit: 4
        t.string   "OTHERNAMEL",               limit: 34
        t.string   "OTHERNAMEF",               limit: 34
        t.string   "OTHERNAMEM",               limit: 34
        t.string   "CERTIFICATE_OF_RESIDENCE", limit: 50
        t.string   "CERTIFICATE_OF_IDENTITY",  limit: 50
        t.string   "RED_EAGLE_CERTIFICATE",    limit: 50
        t.string   "COURT_RECORD",             limit: 50
        t.string   "REMARKS",                  limit: 100
        t.string   "PORT",                     limit: 20
        t.string   "SOURCE",                   limit: 100
        t.datetime "DATE_ENTERED"
      end
    end
  end

    def self.down
    end
end
