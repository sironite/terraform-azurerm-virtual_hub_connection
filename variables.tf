variable "virtual_hub_connection_name" {
  type        = string
  description = "The name of the virtual hub connection."
}

variable "virtual_hub_id" {
  type        = string
  description = "The ID of the virtual hub."
}

variable "remote_virtual_network_id" {
  type        = string
  description = "The ID of the remote virtual network."
}

variable "internet_security_enabled" {
  type        = bool
  description = "Whether or not internet security is enabled."
  default     = true
}

variable "associated_route_table_id" {
  type        = string
  description = "The ID of the associated route table."
  default     = null
}

variable "labels" {
  type        = list(string)
  description = "The labels for the propagated route table."
  default     = []
}

variable "route_table_ids" {
  type        = list(string)
  description = "The IDs of the propagated route tables."
  default     = []
}

variable "static_vnet_route_name" {
  type        = string
  description = "The name of the static VNet route."
  default     = null
}

variable "address_prefixes" {
  type        = list(string)
  description = "The address prefixes for the static VNet route."
  default     = []
}

variable "next_hop_ip_address" {
  type        = string
  description = "The next hop IP address for the static VNet route."
  default     = null
}