class Person < ActiveRecord::Base
	validates :name, presence: true,
		length: { maximum: 16 }
	validates :weight, :height, presence: true,
		numericality: { only_integer: true },
		length: { maximum: 3 }
	validates :color, inclusion: {
		in: %w(red orange yellow green blue indigo purple black white),
		message: "can only be one of red, orange, yellow, green, blue, indigo, purple, black, or white"
	}
	validates :stylishness, inclusion: {
		in: %w(none some very),
		message: "can only be one of none, some, or very"
	}
end
