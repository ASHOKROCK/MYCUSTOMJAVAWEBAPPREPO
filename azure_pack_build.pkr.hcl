packer {
  required_plugins {
    azure = {
      version = ">= 1.4.4"
      source  = "github.com/hashicorp/azure"
    }
  }
}

variable "client_id" {
  type    = string
  default = "fb86f946-4c7f-42a3-8101-85482fa756c9"
  #sensitive = True
}

variable "tenant_id" {
  type    = string
  default = "4d786829-9b72-4993-b90e-7e9ea40be49e"
  #sensitive = True
}

variable "client_secret" {
  type    = string
  default = "tSm8Q~9zXnQHJMp.2qhmkVEWDI34nGF5KE7PRbWW"
  #sensitive = True
}

variable "location" {
  type    = string
  default = "East US 2"
}

variable "subscription_id" {
  type    = string
  default = "e7c0a305-f524-44fb-a42a-a15ad11af577"
  #sensitive = True
}

variable "vm_size" {
  type    = string
  default = "Standard_DS2_v2"
}

source "azure-arm" "custom_azure_packer_image" {
  client_id           = var.client_id
  client_secret       = var.client_secret
  resource_group_name = "AZURENEW"
  storage_account     = "myazurenewprac"
  subscription_id     = var.subscription_id
  tenant_id           = var.tenant_id
  communicator        = "ssh"
  ssh_username        = "adminuser"
  ssh_password        = "Ashokgani@6629"
  ssh_port            = 22
  ssh_timeout         = "5m"
  ssh_pty             = "false"
  ssh_keypair_name    = file("/root/.ssh/id_rsa.pub")
  #ssh_private_key_file              = file("/root/.ssh/id_rsa")
  capture_container_name = "mycustomimage"
  capture_name_prefix    = "azure-packer"
  #managed_image_name                = "var. managed_image_name"
  #managed_image_resource_group_name = "var.managed_image_resource_group_name"

  os_type         = "Linux"
  image_publisher = "Canonical"
  image_offer     = "UbuntuServer"
  image_sku       = "14.04.4-LTS"

  /* shared_image_gallery {
    subscription = "var.subscription_id"
    resource_group = "AZURENEW"
    gallery_name = "myazurepackgallery"
    image_name = "myazurepackimage"
    image_version = "1.0.0"
}
*/

  azure_tags = {
    dept_team = "Dev-Team",
    run_time  = "Dev-Env"
  }

  location = var.location
  vm_size  = var.vm_size
}

build {
  sources = ["sources.azure-arm.custom_azure_packer_image"]


  #creating a provisioner
  /*
  provisioner "shell-local" {
    environment_vars   = ["PROVISIONERTEST=ProvisionerTest2"]
    execute_command    = ["bash", "-c", "{{.Vars}} {{.Script}}"]
    tempfile_extension = ".sh"
    use_linux_pathing  = true
    inline      = ["apt install git -y", "echo $PROVISIONERTEST"]
    script   = "./newscript.sh"
  }
*/

#Creating a Provisioner

  provisioner "shell-local" {
    #inline         = ["apt-get update", "apt-get upgrade -y"]
    #inline_shebang = "/bin/sh -x"
    #script         = "./myscript.sh"
    environment_vars = [
      "azure_dev_team=dev",
      "azure_dev_packer=packerbuild",
      "azure_dev_packer_image=ubuntu-image",
      "azure_dev_run=image-run"
    ]

    inline = [
      "echo \"dev_team is $azure_dev_team\"",
      "echo \"dev_packer is $azure_dev_packer\"",
      "echo \"packer_image is $azure_dev_packer_image\"",
      "echo \"dev_run is $azure_dev_run\""
    ]
  }
 provisioner "file" {
    source      = "./newfile.txt"
    destination = "/tmp/"
  }


  /*
  provisioner "shell-local" {
    environment_vars  = ["PROVISIONERTEST=ProvisionerTest2"]
    execute_command   = ["bash", "-c", "{{.Vars}} {{.Script}}"]
    use_linux_pathing = true
    inline            = ["apt install git -y","git --version"]
    script            = "./mycustomscript.sh"
  }
 */

  /*
  post-processor "shell-local" {
    #environment_vars   = ["SHELLLOCALTEST=ShellTest3"]
    tempfile_extension = ".sh"
    execute_command    = ["bash", "-c", "{{.Vars}} {{.Script}}"]
    use_linux_pathing  = true
    script             = "./newscript.sh"
  }
*/

/*
  post-processor "shell-local" {
    script           = "mypython.py"
    environment_vars = ["AZURE_PACKER_USER=packerbuild"]
    execute_command = [
      "/bin/sh",
      "-c",
      "{{.Vars}} /usr/local/bin/python {{.Script}}"
    ]
  }
*/

}
