class SearchCasefile < ActiveRecord::Base
  self.table_name = 'NARA_CaseFiles'
  self.primary_key = 'Case_ID'
end
