# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 0) do

  create_table "CPC", id: false, force: :cascade do |t|
    t.integer  "ID",                       limit: 4
    t.string   "Title",                    limit: 255
    t.text     "Abstract",                 limit: 16777215
    t.string   "PaperNumber",              limit: 10
    t.string   "AuthorFirstName",          limit: 80
    t.string   "AuthorLastName",           limit: 80
    t.string   "AuthorAffiliation",        limit: 100
    t.string   "Author2FirstName",         limit: 80
    t.string   "Author2LastName",          limit: 80
    t.string   "Author2Affiliation",       limit: 100
    t.string   "OtherAuthors",             limit: 255
    t.string   "OtherAuthorsAffiliations", limit: 255
    t.integer  "FileSize",                 limit: 4
    t.integer  "Pages",                    limit: 4
    t.datetime "DateWritten"
    t.datetime "DateEntered"
    t.string   "URL",                      limit: 100
    t.string   "Keywords",                 limit: 255
    t.string   "EmailContact",             limit: 100
    t.string   "JELNumbers",               limit: 50
    t.string   "WPSeries",                 limit: 50
    t.string   "PublicationInfo",          limit: 255
    t.string   "CitationInfo",             limit: 200
    t.text     "Notes",                    limit: 16777215
  end

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

  create_table "NARA_CaseFiles_020130", id: false, force: :cascade do |t|
    t.integer  "ID",         limit: 4
    t.string   "BOXNUMBER",  limit: 50
    t.string   "LASTNAME",   limit: 20
    t.string   "FIRSTNAME",  limit: 20
    t.string   "MIDDLENAME", limit: 20
    t.string   "SERIES",     limit: 6
    t.string   "CASENUMBER", limit: 20
    t.string   "SHIP",       limit: 22
    t.datetime "DATE"
    t.string   "BIRTHPLACE", limit: 11
    t.string   "DOB",        limit: 15
    t.string   "AGE",        limit: 5
    t.string   "GENDER",     limit: 1
    t.string   "AFILENUM",   limit: 50
    t.string   "ST_BORN",    limit: 10
    t.string   "HOUSE_NUM",  limit: 4
    t.string   "OTHERNAMEL", limit: 34
    t.string   "OTHERNAMEF", limit: 34
    t.string   "OTHERNAMEM", limit: 34
    t.string   "Type",       limit: 10
  end

  create_table "NARA_CaseFiles_040506", id: false, force: :cascade do |t|
    t.integer  "Case_ID",                  limit: 4
    t.integer  "ID",                       limit: 4
    t.string   "BOXNUMBER",                limit: 50
    t.string   "LASTNAME",                 limit: 20
    t.string   "FIRSTNAME",                limit: 20
    t.string   "MIDDLENAME",               limit: 20
    t.string   "SERIES",                   limit: 6
    t.string   "CASENUMBER",               limit: 20
    t.string   "SHIP",                     limit: 22
    t.datetime "DATE"
    t.string   "DESTINATION",              limit: 50
    t.string   "BIRTHPLACE",               limit: 11
    t.string   "BIRTHPLACE_CITY",          limit: 50
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

  create_table "NARA_CaseFiles_060705", id: false, force: :cascade do |t|
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

  create_table "NARA_HawaiiSeries", id: false, force: :cascade do |t|
    t.string "Series_Number",      limit: 255
    t.string "Series_Type",        limit: 255
    t.text   "Series_Description", limit: 16777215
  end

  create_table "dtproperties", id: false, force: :cascade do |t|
    t.integer "id",       limit: 4
    t.integer "objectid", limit: 4
    t.string  "property", limit: 64
    t.string  "value",    limit: 255
    t.string  "uvalue",   limit: 255
    t.binary  "lvalue",   limit: 16777215
    t.integer "version",  limit: 4
  end

end
