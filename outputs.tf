# Create file for outputs to give out the output name of our cluster and expose the endpoint of our cluster
output "cluster_id" {
  value = module.eks.cluster_id
}
output "cluster_endpoint" {
  value = module.eks.cluster_endpoint
}