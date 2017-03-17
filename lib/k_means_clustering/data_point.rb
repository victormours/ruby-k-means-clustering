class KMeansClustering::DataPoint

  def initialize(dimensions_hash)
    @dimensions = dimensions_hash
  end

  attr_reader :dimensions

  def distance_to(other_datapoint)
    hash1 = dimensions
    hash2 = other_datapoint.dimensions
    dimensions = (hash1.keys + hash2.keys).uniq
    Math.sqrt(dimensions.map do |dimension_key|
      simple = (self.dimension(dimension_key) - other_datapoint.dimension(dimension_key)).abs
      simple**2
    end.reduce(&:+))
  end

  def dimension(dimension_key)
    dimensions.fetch(dimension_key, 0).to_f
  end

end
