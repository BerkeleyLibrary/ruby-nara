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

ActiveRecord::Schema.define(version: 2020_09_16_221411) do

  create_table "NARA_CaseFiles", id: false, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
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
    t.string "company"
  end

end
