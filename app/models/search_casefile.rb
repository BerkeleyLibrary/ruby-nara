class SearchCasefile < ApplicationRecord
  self.table_name = 'NARA_CaseFiles'
  self.primary_key = 'Case_ID'
end
