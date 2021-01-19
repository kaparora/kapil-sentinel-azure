module "tfplan-functions" {
    source = "../common-functions/tfplan-functions/tfplan-functions.sentinel"
}

module "tfstate-functions" {
    source = "../common-functions/tfstate-functions/tfstate-functions.sentinel"
}

module "tfconfig-functions" {
    source = "../common-functions/tfconfig-functions/tfconfig-functions.sentinel"
}

policy "Only RedHat and Ubuntu are allowed as image publishers" {
    source = "./restrict-publishers-of-current-vms.sentinel"
    enforcement_level = "advisory"
}

policy "Only Standard A1  A2 A3 D1_v2  D2_v2 and D2s_v3 are allowed VM sizes" {
    source = "./restrict-vm-size.sentinel"
    enforcement_level = "soft-mandatory"
}

policy "Only Standard A1  A2 A3  are allowed VM sizes in West Europe" {
    source = "./restrict-vm-size-westeurope.sentinel"
    enforcement_level = "hard-mandatory"
}

policy "Only Standard D1_v2  D2_v2 and D2s_v3  are allowed VM sizes in North Europe" {
    source = "./restrict-vm-size-northeurope.sentinel"
    enforcement_level = "hard-mandatory"
}

policy "Azure Machine Learning Workspaces are only allowed in West Europe" {
    source = "./restrict-aml-region-to-westeurope.sentinel"
    enforcement_level = "hard-mandatory"
}