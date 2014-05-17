require 'csv'

class BreakdownLibrary
  attr_reader :csv_data, :count

  def initialize(csv_data_path)
    @csv_data = CSV.read(csv_data_path, headers: true)
    @count = @csv_data.length
  end

  def random_url
    range = (0..last_row_index)
    random_row_index = rand(range)
    random_row = @csv_data[random_row_index]
    random_row['url']
  end

  private
  def last_row_index
    count - 1
  end
end
