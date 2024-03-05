class Machine < ApplicationRecord
    self.ignored_columns = %w(lock_version)
    self.locking_column = :lock_version
end
