variable "name" {
  type    = string
  default = "1-8262ee81-playground-sandbox"
}
variable "location" {
  type    = string
  default = "centralus"
}
variable "tags" {
  description = "A map of the tags to use for the module demo resources that are deployed"
  type        = map(string)
  default = {
    environment = "dev"
  }
}