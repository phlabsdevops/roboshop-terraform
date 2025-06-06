output "mongodb-sg-id" {
  value = module.mongodb.sg-id
}
output "redis-sg-id" {
  value = module.catalogue.sg-id
}
output "rabbitmq-sg-id" {
  value = module.mongodb.sg-id
}
output "mysql-sg-id" {
  value = module.catalogue.sg-id
}
output "catalogue-sg-id" {
  value = module.catalogue.sg-id
}
output "user-sg-id" {
  value = module.mongodb.sg-id
}
output "cart-sg-id" {
  value = module.mongodb.sg-id
}
output "shipping-sg-id" {
  value = module.shipping.sg-id
}
