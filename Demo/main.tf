#provider definition
provider "random" {

}

#resource block
resource "random_pet" "name" {
  length = 3
}

resource "random_pet" "my_pet" {
  length = 3
}

#output
output "random_petname" {
  value = random_pet.name.id
}