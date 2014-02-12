class Thank < ActiveRecord::Base
  validates :content, presence: true
  validate :there_can_be_only_one

  def there_can_be_only_one
    return true if Thank.count == 0
    unless persisted?
      errors.add(:content, "There can be only one thanks section. Please edit the existing Thanks.")
    end
  end
end
