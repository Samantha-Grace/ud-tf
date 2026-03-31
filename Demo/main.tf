#provider definition
provider "random" {

}

variable "num_of_pets" {
  type = number
  description = "how many pets do we want"
}
#resource block
resource "random_pet" "name" {
  length = var.num_of_pets
}

resource "random_pet" "my_pet" {
  length = 3
}

#output
output "random_petname" {
  value = random_pet.name.id
}