variable "free_aws_ami" {
  type = map(object({
    value       = string
    description = string
  }))

  default = {
    ami-05d1dd0175a5c3b99 = {
      value       = "ami-05d1dd0175a5c3b99"
      description = "Amazon Linux 2023 is a modern, general purpose Linux-based OS"
    }
    ami-012eebfcf9af751bd = {
      value       = "ami-012eebfcf9af751bd"
      description = "Amazon Linux 2 AMI (HVM) - Kernel 5.10, SSD Volume Type"
    }
    ami-0293d5edd542189e4 = {
      value       = "ami-0293d5edd542189e4"
      description = "Amazon Linux 2 with .NET 6, PowerShell, Mono, and MATE Desktop Environment"
    }
    ami-0371cc1c8b8e24fdc = {
      value       = "ami-0371cc1c8b8e24fdc"
      description = "Red Hat Enterprise Linux 9 (HVM), SSD Volume Type"
    }
    ami-078c1149d8ad719a7 = {
      value       = "ami-078c1149d8ad719a7"
      description = "Ubuntu Server 22.04 LTS (HVM), SSD Volume Type"
    }
    ami-03caf91bb3d81b843 = {
      value       = "ami-03caf91bb3d81b843"
      description = "Ubuntu Server 20.04 LTS (HVM), SSD Volume Type"
    }
    ami-0588c11374527e516 = {
      value       = "ami-0588c11374527e516"
      description = "Debian 12 (HVM), SSD Volume Type"
    }
    ami-03da1e826326be56c = {
      value       = "ami-03da1e826326be56c"
      description = "SUSE Linux Enterprise Server 15 SP5 (HVM), SSD Volume Type"
    }
    ami-0ff4246bb5724cf65  = {
      value       = "ami-0ff4246bb5724cf65"
      description = "SUSE Linux Enterprise Server 12 SP5 (HVM), SSD Volume Type"
    }
    ami-0c5509e09cbd80569 = {
      value       = "ami-0c5509e09cbd80569"
      description = "Microsoft Windows Server 2022 Base"
    }
    ami-07cd4f1d0cf398b09 = {
      value       = "ami-07cd4f1d0cf398b09"
      description = "Microsoft Windows Server 2022 Core Base"
    }
    ami-06ba9ed40a41c727a = {
      value       = "ami-06ba9ed40a41c727a"
      description = "Microsoft Windows Server 2019 Base"
    }
    ami-08339a9d60bb6f869 = {
      value       = "ami-08339a9d60bb6f869"
      description = "Microsoft Windows Server 2019 Core Base"
    }
    ami-021dc9f1945cec9a9 = {
      value       = "ami-021dc9f1945cec9a9"
      description = "Microsoft Windows Server 2016 Base"
    }
    ami-03d4399a1fc6a1e78 = {
      value       = "ami-03d4399a1fc6a1e78"
      description = "Microsoft Windows Server 2016 Core Base"
    }
  }
}

variable "free_aws_instance_type" {
  type = map(object({
    value       = string
    description = string
  }))
  default = {
    "t2.micro" = {
      value     = "t2.micro"
      description = "x86"
    }
    "t4g.small" = {
      value     = "t4g.small"
      description = "Arm"
    }
  }
}

variable "free_aws_ebs_type" {
  type = set(string)
  default = ["gp2", "gp3", "standard"]
}