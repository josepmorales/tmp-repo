variable "instance_type"{
    description = "Instance type to use for the instance."
    type = string
}

variable "tags_name"{
    description = "tag."
    type = map(string)
}

variable "bucket"{
    description = "my_bucket"
    type = string
}