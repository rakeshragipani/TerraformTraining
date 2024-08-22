resource "local_file" "demofile" {
  content = "Hello this is a sample text"
  #filename = "/tmp/demofile1.txt"
  #filename = "/Users/rakeshkumar/Desktop/terraform training/demofile1.txt"
  filename = "/Users/rakeshkumar/Desktop/terraform training/${random_integer.integer1.id}.txt"
  file_permission = "0742"
}
resource "random_integer" "integer1" {
  #length = "14"
  max = 2000
  min =1500
}
resource "local_file" "demofile3" {
  content = "Hello this is a sample text"
  count = 5
  #filename = "/tmp/demofile1.txt"
  #filename = "/Users/rakeshkumar/Desktop/terraform training/demofile1.txt"
  #filename = "/Users/rakeshkumar/Desktop/terraform training/${random_integer.integer1.id}.txt"
  filename = "/Users/rakeshkumar/Desktop/terraform training/File${count.index+1}.txt"
  file_permission = "0742"
}