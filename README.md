# Tencent Terraform-Modules 多Resources关联

示例创建vpc、subnet、security_group、cvm，并通过modules方式整合

### 目录结构
```
.
├── LICENSE
├── README.md
├── main.tf
├── modules
│   ├── cvm
│   │   ├── main.tf
│   │   ├── outputs.tf
│   │   ├── variables.tf
│   │   └── version.tf
│   ├── sg
│   │   ├── main.tf
│   │   ├── outputs.tf
│   │   ├── variables.tf
│   │   └── version.tf
│   └── vpc
│       ├── main.tf
│       ├── outputs.tf
│       ├── variables.tf
│       └── version.tf
├── provider.tf
├── terraform.log
└── variables.tf
```

### 设置环境变量
```
export TENCENTCLOUD_SECRET_ID=AKID9HH4OpqLJ5f6LPr4iIm5GF2s-EXAMPLE
export TENCENTCLOUD_SECRET_KEY=72pQp14tWKUglrnX5RbaNEtN-EXAMPLE
```

### 执行
```
terraform init
terraform plan
terraform apply
```