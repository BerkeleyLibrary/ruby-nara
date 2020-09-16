class AddCompanyCollumn < ActiveRecord::Migration[6.0]
  def change
    add_column :NARA_CaseFiles, :company, :string
  end
end
