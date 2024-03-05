class Entry < ApplicationRecord
    delegated_type :entryable, types: %w[ Message Log ], dependent: :destroy
end
