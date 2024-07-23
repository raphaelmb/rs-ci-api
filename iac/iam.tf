resource "aws_iam_openid_connect_provider" "oidc-git" {
  url = "https://token.actions.githubusercontent.com"
  client_id_list = [ "sts.amazonaws.com" ]
  thumbprint_list = [ "" ]

  tags = {
    IAC = "true"
  }
}

resource "aws_iam_role" "ecr-role" {
  name = "ecr-role"
  assume_role_policy = jsondecode({})

  inline_policy {
    name = "ecr-app-permission"

    policy = jsonencode({})
  }

  tags = {
    IAC = "true"
  }
}