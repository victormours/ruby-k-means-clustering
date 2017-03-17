class KMeansClustering
  require_relative "k_means_clustering/cluster"
  require_relative "k_means_clustering/data_point"

  def initialize()
    @dataset = []
    @clusters_count = 2
    @iterations = 10
  end

  def add(datapoint_hash)
    @dataset << DataPoint.new(datapoint_hash)
  end 

  attr_reader :clusters

  def compute!
    centroids = @dataset.sample(@clusters_count).map(&:clone)
    @clusters = centroids.map { |centroid| Cluster.new(centroid, []) }

    @iterations.times do
      @clusters.map(&:empty)
      @dataset.each do |datapoint|
        closest_cluster = @clusters.min_by do |cluster|
          datapoint.distance_to(cluster.centroid_datapoint)
        end
        closest_cluster.add(datapoint)
      end
      @clusters.map(&:update_centroid)
    end

    @clusters
  end

end
