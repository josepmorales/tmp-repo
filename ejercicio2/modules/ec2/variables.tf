variable "instance_type"{
    description = "Instance type to use for the instance."
    type = string
}

variable "tags"{
    description = "Instance type to use for the instance."
    type = map(string)
}