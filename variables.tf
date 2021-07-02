variable "ec2_type" {
  description = "Tipo da instancia que vamos criar."
  type        = string
  default     = "t3.micro"
}

variable "lb_type" {
  description = "Tipo de LB."
  type        = string
  default     = "application"
}

variable "lb_internal" {
  description = "True  ou false"
  type        = bool
  default     = true
}

variable "key_name" {
  description = "Nome da pem que sera usado para conectar na ec2."
  type        = string
  default     = "homer"
}

variable "lb_name" {
  description = "Nome do LB"
  type        = string
  default     = "teste-lb"
}

variable "lb_port" {
  description = "Porta em qual o LB vai 'escutar'."
  type        = number
  default     = 80
}

variable "lb_protocol" {
  description = "Protocolo usado para se conectar no LB."
  type        = string
  default     = "HTTP"
}
