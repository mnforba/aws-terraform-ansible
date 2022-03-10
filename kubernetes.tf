# Create a terfform kubernetes provider using a recently created cluster as the host and authentication token as token
# we are using the cluster_ca_certificate for the CA certificate
provider "kubernetes" {
  host = data.aws_eks_cluster.cluster.endpoint 
  #token = data.aws_eks_cluster_auth.cluster
  #cluster_ca_certificate = base64encode(data.aws_eks_cluster.cluster.certificate_authority.0.data)
}