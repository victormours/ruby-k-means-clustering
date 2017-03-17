require "minitest/autorun"
require_relative "../lib/k_means_clustering"

class KMeansClusteringTest < Minitest::Test

  def test_simple_case 
    datapoints = [
      { x: 10, y:  0 },
      { x:  9, y:  1 },

      { x:  0, y: 10 },
      { x:  1, y:  9 },
    ]

    clustering = KMeansClustering.new

    datapoints.each do |datapoint|
      clustering.add(datapoint)
    end

    clusters = clustering.compute!

    cluster = clusters.first
    assert_equal(2, cluster.size)

    cluster.centroid
    assert_equal({ x: 9.5, y: 0.5 }, cluster.centroid)

    assert_equal([{ x: 10, y: 0 }, { x: 9, y: 1 }], cluster.datapoints)
  end

end
