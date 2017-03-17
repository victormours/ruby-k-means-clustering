class KMeansClustering
  class Cluster

    def initialize(centroid, dataset)
      @centroid = centroid
      @dataset = dataset
    end

    def update_centroid
      centroid_hash = Hash.new(0)
      @dataset.each do |data|
        data.dimensions.each do |dimension, value|
          centroid_hash[dimension] += value
        end
      end

      centroid_hash.keys.each do |key|
        centroid_hash[key] = centroid_hash[key].to_f / @dataset.count
      end
      @centroid = KMeansClustering::DataPoint.new(centroid_hash)
    end

    def size
      @dataset.count
    end

    def centroid_datapoint
      @centroid
    end

    def centroid
      @centroid.dimensions
    end

    def distance_to(datapoint)
      @centroid.distance_to(datapoint)
    end

    def add(data)
      @dataset << data
    end

    def empty
      @dataset = []
    end

  end
end
