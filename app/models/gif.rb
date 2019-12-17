class Gif < ApplicationRecord
  has_one_attached :file

  validates :file, size: { less_than: 10.megabytes , message: 'is not given between size' }

  has_many :rankings
  has_many :labels, through: :rankings


  def labels_string=(value)
    if value == ""
      return ""
    else
      result = []
      labels = value.split(",")
      puts labels
      labels.each do |label_string|
        new_label = label_string.strip
        lbl = Label.find_by(name: new_label)
        if lbl.present?
          result << lbl
        else
          result << Label.new(name: new_label)
        end
      end
      self.labels = result
    end
   labels
  end

end
