# K-Means Clustering

This project is still a very rough first draft. It is by no means useable for production.


## Usage

```ruby
# Let's assume you have some data
datapoints = [
{ x: 10, y: 0 },
{ x: 9, y: 1 },

{ x: 0, y: 10 },
{ x: 0, y: 10 },
]

# Let's cluster it
clustering = KMeansClustering.new

  datapoints.each do |datapoint|
clustering.add(datapoint)
  end


  clusters = clustering.compute!


  cluster = clusters.first
  cluster.size
#=> 2
  cluster.centroid
#=> {x: 9.5, y: 0.5}
  clusters.datapoints
# => [{ x: 10, y: 0 }, { x: 9, y: 1 }]
```

