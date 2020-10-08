module "postgres" {
  source        = "git::https://github.com/slalom-ggp/dataops-infra.git//catalog/aws/postgres?ref=main"
  name_prefix   = "${local.name_prefix}postgres-"
  environment   = module.env.environment
  resource_tags = local.resource_tags

  identifier          = "my-postgres-db"
  admin_username      = "postgresadmin"
  admin_password      = "Asdf1234"
  skip_final_snapshot = true
}
output "postgres_summary" { value = module.postgres.summary }