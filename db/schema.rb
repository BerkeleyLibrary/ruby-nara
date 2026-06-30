# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[8.1].define(version: 2026_06_30_191756) do
  create_table "CPC", id: false, charset: "latin1", collation: "latin1_swedish_ci", options: "ENGINE=MyISAM", force: :cascade do |t|
    t.text "Abstract", size: :medium
    t.string "Author2Affiliation", limit: 100
    t.string "Author2FirstName", limit: 80
    t.string "Author2LastName", limit: 80
    t.string "AuthorAffiliation", limit: 100
    t.string "AuthorFirstName", limit: 80
    t.string "AuthorLastName", limit: 80
    t.string "CitationInfo", limit: 200
    t.datetime "DateEntered", precision: nil
    t.datetime "DateWritten", precision: nil
    t.string "EmailContact", limit: 100
    t.integer "FileSize"
    t.integer "ID"
    t.string "JELNumbers", limit: 50
    t.string "Keywords"
    t.text "Notes", size: :medium
    t.string "OtherAuthors"
    t.string "OtherAuthorsAffiliations"
    t.integer "Pages"
    t.string "PaperNumber", limit: 10
    t.string "PublicationInfo"
    t.string "Title"
    t.string "URL", limit: 100
    t.string "WPSeries", limit: 50
  end

  create_table "NARA_CaseFiles", primary_key: "Case_ID", id: :integer, default: nil, charset: "latin1", collation: "latin1_swedish_ci", options: "ENGINE=MyISAM", force: :cascade do |t|
    t.string "AFILENUM", limit: 50
    t.string "AGE", limit: 5
    t.string "ARRIVAL_AGE", limit: 50
    t.string "BIRTHPLACE", limit: 100
    t.string "BIRTHPLACE_CITY", limit: 50
    t.string "BIRTHPLACE_STATE", limit: 50
    t.string "BOXNUMBER", limit: 50
    t.string "CASENUMBER", limit: 20
    t.string "CERTIFICATE_OF_IDENTITY", limit: 50
    t.string "CERTIFICATE_OF_RESIDENCE", limit: 50
    t.string "CLASS", limit: 50
    t.string "COMPANY", limit: 100
    t.string "COURT_RECORD", limit: 50
    t.string "DATE", limit: 50
    t.datetime "DATE_ENTERED", precision: nil
    t.string "DESTINATION", limit: 50
    t.string "DISPOSITION_OF_CASE", limit: 150
    t.string "DOB", limit: 15
    t.string "FIRSTNAME", limit: 20
    t.string "GENDER", limit: 1
    t.string "HOUSE_NUM", limit: 4
    t.integer "ID"
    t.string "LASTNAME", limit: 20
    t.string "MIDDLENAME", limit: 20
    t.string "OTHERNAMEF", limit: 34
    t.string "OTHERNAMEL", limit: 34
    t.string "OTHERNAMEM", limit: 34
    t.string "PORT", limit: 20
    t.string "RED_EAGLE_CERTIFICATE", limit: 50
    t.string "REMARKS", limit: 100
    t.string "SERIES", limit: 6
    t.string "SHIP", limit: 22
    t.string "SOURCE", limit: 100
    t.string "ST_BORN", limit: 10
    t.index ["LASTNAME", "FIRSTNAME", "DESTINATION", "BIRTHPLACE", "PORT", "DATE", "SHIP"], name: "search_index", type: :fulltext
  end

  create_table "NARA_CaseFiles_020130", id: false, charset: "latin1", collation: "latin1_swedish_ci", options: "ENGINE=MyISAM", force: :cascade do |t|
    t.string "AFILENUM", limit: 50
    t.string "AGE", limit: 5
    t.string "BIRTHPLACE", limit: 11
    t.string "BOXNUMBER", limit: 50
    t.string "CASENUMBER", limit: 20
    t.datetime "DATE", precision: nil
    t.string "DOB", limit: 15
    t.string "FIRSTNAME", limit: 20
    t.string "GENDER", limit: 1
    t.string "HOUSE_NUM", limit: 4
    t.integer "ID"
    t.string "LASTNAME", limit: 20
    t.string "MIDDLENAME", limit: 20
    t.string "OTHERNAMEF", limit: 34
    t.string "OTHERNAMEL", limit: 34
    t.string "OTHERNAMEM", limit: 34
    t.string "SERIES", limit: 6
    t.string "SHIP", limit: 22
    t.string "ST_BORN", limit: 10
    t.string "Type", limit: 10
  end

  create_table "NARA_CaseFiles_040506", id: false, charset: "latin1", collation: "latin1_swedish_ci", options: "ENGINE=MyISAM", force: :cascade do |t|
    t.string "AFILENUM", limit: 50
    t.string "AGE", limit: 5
    t.string "ARRIVAL_AGE", limit: 50
    t.string "BIRTHPLACE", limit: 11
    t.string "BIRTHPLACE_CITY", limit: 50
    t.string "BOXNUMBER", limit: 50
    t.string "CASENUMBER", limit: 20
    t.string "CERTIFICATE_OF_IDENTITY", limit: 50
    t.string "CERTIFICATE_OF_RESIDENCE", limit: 50
    t.string "CLASS", limit: 50
    t.string "COURT_RECORD", limit: 50
    t.integer "Case_ID"
    t.datetime "DATE", precision: nil
    t.datetime "DATE_ENTERED", precision: nil
    t.string "DESTINATION", limit: 50
    t.string "DISPOSITION_OF_CASE", limit: 150
    t.string "DOB", limit: 15
    t.string "FIRSTNAME", limit: 20
    t.string "GENDER", limit: 1
    t.string "HOUSE_NUM", limit: 4
    t.integer "ID"
    t.string "LASTNAME", limit: 20
    t.string "MIDDLENAME", limit: 20
    t.string "OTHERNAMEF", limit: 34
    t.string "OTHERNAMEL", limit: 34
    t.string "OTHERNAMEM", limit: 34
    t.string "PORT", limit: 20
    t.string "RED_EAGLE_CERTIFICATE", limit: 50
    t.string "REMARKS", limit: 100
    t.string "SERIES", limit: 6
    t.string "SHIP", limit: 22
    t.string "SOURCE", limit: 100
    t.string "ST_BORN", limit: 10
  end

  create_table "NARA_CaseFiles_060705", id: false, charset: "latin1", collation: "latin1_swedish_ci", options: "ENGINE=MyISAM", force: :cascade do |t|
    t.string "AFILENUM", limit: 50
    t.string "AGE", limit: 5
    t.string "ARRIVAL_AGE", limit: 50
    t.string "BIRTHPLACE", limit: 100
    t.string "BIRTHPLACE_CITY", limit: 50
    t.string "BOXNUMBER", limit: 50
    t.string "CASENUMBER", limit: 20
    t.string "CERTIFICATE_OF_IDENTITY", limit: 50
    t.string "CERTIFICATE_OF_RESIDENCE", limit: 50
    t.string "CLASS", limit: 50
    t.string "COURT_RECORD", limit: 50
    t.integer "Case_ID"
    t.string "DATE", limit: 50
    t.datetime "DATE_ENTERED", precision: nil
    t.string "DESTINATION", limit: 50
    t.string "DISPOSITION_OF_CASE", limit: 150
    t.string "DOB", limit: 15
    t.string "FIRSTNAME", limit: 20
    t.string "GENDER", limit: 1
    t.string "HOUSE_NUM", limit: 4
    t.integer "ID"
    t.string "LASTNAME", limit: 20
    t.string "MIDDLENAME", limit: 20
    t.string "OTHERNAMEF", limit: 34
    t.string "OTHERNAMEL", limit: 34
    t.string "OTHERNAMEM", limit: 34
    t.string "PORT", limit: 20
    t.string "RED_EAGLE_CERTIFICATE", limit: 50
    t.string "REMARKS", limit: 100
    t.string "SERIES", limit: 6
    t.string "SHIP", limit: 22
    t.string "SOURCE", limit: 100
    t.string "ST_BORN", limit: 10
  end

  create_table "NARA_HawaiiSeries", id: false, charset: "latin1", collation: "latin1_swedish_ci", options: "ENGINE=MyISAM", force: :cascade do |t|
    t.text "Series_Description", size: :medium
    t.string "Series_Number"
    t.string "Series_Type"
  end

  create_table "dtproperties", id: false, charset: "latin1", collation: "latin1_swedish_ci", options: "ENGINE=MyISAM", force: :cascade do |t|
    t.integer "id"
    t.binary "lvalue", size: :medium
    t.integer "objectid"
    t.string "property", limit: 64
    t.string "uvalue"
    t.string "value"
    t.integer "version"
  end
end
