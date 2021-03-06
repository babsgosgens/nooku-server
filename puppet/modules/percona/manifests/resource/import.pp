define percona::resource::import(
  $database = undef,
  $file     = undef,
) {
  exec { "import-sql-${name}":
    command => "sed 's/#__/nf_/g' '${file}' | mysql --user='root' --password='root' '${database}'",
    timeout => 0,
    require => Exec["create-database-${database}"],
  }
}