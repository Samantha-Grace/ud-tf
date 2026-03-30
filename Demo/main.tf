#provider definition
provider "random" {

}

#resource block
resource "random_pet" "name" {
  length = 2
}

#output
output "random_petname" {
  value = random_pet.name.id
}