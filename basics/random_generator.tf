resource "random_string" "str" {
    length = 9
  
}
resource "random_password" "ranpass" {
  length = 18
}
resource "random_integer" "integ" {
  #length = "14"
  max = 2000
  min =1500
}