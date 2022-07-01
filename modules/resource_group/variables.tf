variable "name" {
  type    = string
  default = "1-e5f03673-playground-sandbox"
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