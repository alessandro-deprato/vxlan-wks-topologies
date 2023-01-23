address  = ""
username = ""
# For security reasons prefer an environment variable. "source TF_VAR_password=your_password"
# In below or env are neither set Terraform will request the password
#password = ""

#Uncomment this one below if you do not want to start the nodes automatically
#state = "DEFINED_ON_CORE"

topology_name = "ndfc_wks_full.yaml"
configuration_variables = {
  "device_gateway" = ""
  "spine_1_ip"     = ""
  "spine_2_ip"     = ""
  "border_1_ip"    = ""
  "border_2_ip"    = ""
  "leaf_1_ip"      = ""
  "leaf_2_ip"      = ""
  "leaf_3_ip"      = ""
  "core_1_ip"      = ""
  # Set the below only if you want an image different from the default
  #image_definition = ""
  management_bridge = ""
  device_password   = ""
}
