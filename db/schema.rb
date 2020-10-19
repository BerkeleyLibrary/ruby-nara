# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 0) do

    create_table "CPC", id: false, options: "ENGINE=MyISAM DEFAULT CHARSET=latin1", force: :cascade do |t|
      t.integer "ID"
      t.string "Title"
      t.text "Abstract", size: :medium
      t.string "PaperNumber", limit: 10
      t.string "AuthorFirstName", limit: 80
      t.string "AuthorLastName", limit: 80
      t.string "AuthorAffiliation", limit: 100
      t.string "Author2FirstName", limit: 80
      t.string "Author2LastName", limit: 80
      t.string "Author2Affiliation", limit: 100
      t.string "OtherAuthors"
      t.string "OtherAuthorsAffiliations"
      t.integer "FileSize"
      t.integer "Pages"
      t.datetime "DateWritten"
      t.datetime "DateEntered"
      t.string "URL", limit: 100
      t.string "Keywords"
      t.string "EmailContact", limit: 100
      t.string "JELNumbers", limit: 50
      t.string "WPSeries", limit: 50
      t.string "PublicationInfo"
      t.string "CitationInfo", limit: 200
      t.text "Notes", size: :medium
    end
  
    create_table "NARA_CaseFiles", primary_key: "Case_ID", id: :integer, default: nil, options: "ENGINE=MyISAM DEFAULT CHARSET=latin1", force: :cascade do |t|
      t.integer "ID"
      t.string "BOXNUMBER", limit: 50
      t.string "LASTNAME", limit: 20
      t.string "FIRSTNAME", limit: 20
      t.string "MIDDLENAME", limit: 20
      t.string "SERIES", limit: 6
      t.string "CASENUMBER", limit: 20
      t.string "SHIP", limit: 22
      t.string "DATE", limit: 50
      t.string "DESTINATION", limit: 50
      t.string "BIRTHPLACE", limit: 100
      t.string "BIRTHPLACE_CITY", limit: 50
      t.string "BIRTHPLACE_STATE", limit: 50
      t.string "DOB", limit: 15
      t.string "AGE", limit: 5
      t.string "ARRIVAL_AGE", limit: 50
      t.string "GENDER", limit: 1
      t.string "AFILENUM", limit: 50
      t.string "CLASS", limit: 50
      t.string "DISPOSITION_OF_CASE", limit: 150
      t.string "ST_BORN", limit: 10
      t.string "HOUSE_NUM", limit: 4
      t.string "OTHERNAMEL", limit: 34
      t.string "OTHERNAMEF", limit: 34
      t.string "OTHERNAMEM", limit: 34
      t.string "CERTIFICATE_OF_RESIDENCE", limit: 50
      t.string "CERTIFICATE_OF_IDENTITY", limit: 50
      t.string "RED_EAGLE_CERTIFICATE", limit: 50
      t.string "COURT_RECORD", limit: 50
      t.string "REMARKS", limit: 100
      t.string "PORT", limit: 20
      t.string "SOURCE", limit: 100
      t.datetime "DATE_ENTERED"
      t.string "COMPANY", limit: 100
      t.index ["LASTNAME", "FIRSTNAME", "DESTINATION", "BIRTHPLACE", "PORT", "DATE", "SHIP"], name: "search_index", type: :fulltext
    end
  
    create_table "NARA_CaseFiles_020130", id: false, options: "ENGINE=MyISAM DEFAULT CHARSET=latin1", force: :cascade do |t|
      t.integer "ID"
      t.string "BOXNUMBER", limit: 50
      t.string "LASTNAME", limit: 20
      t.string "FIRSTNAME", limit: 20
      t.string "MIDDLENAME", limit: 20
      t.string "SERIES", limit: 6
      t.string "CASENUMBER", limit: 20
      t.string "SHIP", limit: 22
      t.datetime "DATE"
      t.string "BIRTHPLACE", limit: 11
      t.string "DOB", limit: 15
      t.string "AGE", limit: 5
      t.string "GENDER", limit: 1
      t.string "AFILENUM", limit: 50
      t.string "ST_BORN", limit: 10
      t.string "HOUSE_NUM", limit: 4
      t.string "OTHERNAMEL", limit: 34
      t.string "OTHERNAMEF", limit: 34
      t.string "OTHERNAMEM", limit: 34
      t.string "Type", limit: 10
    end
  
    create_table "NARA_CaseFiles_040506", id: false, options: "ENGINE=MyISAM DEFAULT CHARSET=latin1", force: :cascade do |t|
      t.integer "Case_ID"
      t.integer "ID"
      t.string "BOXNUMBER", limit: 50
      t.string "LASTNAME", limit: 20
      t.string "FIRSTNAME", limit: 20
      t.string "MIDDLENAME", limit: 20
      t.string "SERIES", limit: 6
      t.string "CASENUMBER", limit: 20
      t.string "SHIP", limit: 22
      t.datetime "DATE"
      t.string "DESTINATION", limit: 50
      t.string "BIRTHPLACE", limit: 11
      t.string "BIRTHPLACE_CITY", limit: 50
      t.string "DOB", limit: 15
      t.string "AGE", limit: 5
      t.string "ARRIVAL_AGE", limit: 50
      t.string "GENDER", limit: 1
      t.string "AFILENUM", limit: 50
      t.string "CLASS", limit: 50
      t.string "DISPOSITION_OF_CASE", limit: 150
      t.string "ST_BORN", limit: 10
      t.string "HOUSE_NUM", limit: 4
      t.string "OTHERNAMEL", limit: 34
      t.string "OTHERNAMEF", limit: 34
      t.string "OTHERNAMEM", limit: 34
      t.string "CERTIFICATE_OF_RESIDENCE", limit: 50
      t.string "CERTIFICATE_OF_IDENTITY", limit: 50
      t.string "RED_EAGLE_CERTIFICATE", limit: 50
      t.string "COURT_RECORD", limit: 50
      t.string "REMARKS", limit: 100
      t.string "PORT", limit: 20
      t.string "SOURCE", limit: 100
      t.datetime "DATE_ENTERED"
    end
  
    create_table "NARA_CaseFiles_060705", id: false, options: "ENGINE=MyISAM DEFAULT CHARSET=latin1", force: :cascade do |t|
      t.integer "Case_ID"
      t.integer "ID"
      t.string "BOXNUMBER", limit: 50
      t.string "LASTNAME", limit: 20
      t.string "FIRSTNAME", limit: 20
      t.string "MIDDLENAME", limit: 20
      t.string "SERIES", limit: 6
      t.string "CASENUMBER", limit: 20
      t.string "SHIP", limit: 22
      t.string "DATE", limit: 50
      t.string "DESTINATION", limit: 50
      t.string "BIRTHPLACE", limit: 100
      t.string "BIRTHPLACE_CITY", limit: 50
      t.string "DOB", limit: 15
      t.string "AGE", limit: 5
      t.string "ARRIVAL_AGE", limit: 50
      t.string "GENDER", limit: 1
      t.string "AFILENUM", limit: 50
      t.string "CLASS", limit: 50
      t.string "DISPOSITION_OF_CASE", limit: 150
      t.string "ST_BORN", limit: 10
      t.string "HOUSE_NUM", limit: 4
      t.string "OTHERNAMEL", limit: 34
      t.string "OTHERNAMEF", limit: 34
      t.string "OTHERNAMEM", limit: 34
      t.string "CERTIFICATE_OF_RESIDENCE", limit: 50
      t.string "CERTIFICATE_OF_IDENTITY", limit: 50
      t.string "RED_EAGLE_CERTIFICATE", limit: 50
      t.string "COURT_RECORD", limit: 50
      t.string "REMARKS", limit: 100
      t.string "PORT", limit: 20
      t.string "SOURCE", limit: 100
      t.datetime "DATE_ENTERED"
    end
  
    create_table "NARA_HawaiiSeries", id: false, options: "ENGINE=MyISAM DEFAULT CHARSET=latin1", force: :cascade do |t|
      t.string "Series_Number"
      t.string "Series_Type"
      t.text "Series_Description", size: :medium
    end
  
    create_table "dtproperties", id: false, options: "ENGINE=MyISAM DEFAULT CHARSET=latin1", force: :cascade do |t|
      t.integer "id"
      t.integer "objectid"
      t.string "property", limit: 64
      t.string "value"
      t.string "uvalue"
      t.binary "lvalue", size: :medium
      t.integer "version"
    end
  
  end
  