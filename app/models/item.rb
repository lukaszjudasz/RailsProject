class ItemValidator < ActiveModel::Validator
def validate(item)
  validate_datasheet(item)
end

  def validate_datasheet(item)
    datasheet = item.datasheet
    if datasheet.nil? || datasheet == "" || datasheet =~ URI::regexp
      return
    end
    item.errors[:datasheet] << "Datasheet should be a valid link or be empty"
  end
end

class Item < ApplicationRecord
  belongs_to :category, optional: true
  validates_with ItemValidator
end
