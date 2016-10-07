use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :example, Example.Endpoint,
  http: [port: 4001],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

# Configure your database
config :example, Example.Repo,
  adapter: Ecto.Adapters.MySQL,
  username: "root",
  password: "",
  database: "example_test",
  hostname: System.get_env("MYSQL_PORT_3306_TCP_ADDR") || "localhost",
  port: System.get_env("MYSQL_PORT_3306_TCP_PORT") || 3306,
  pool: Ecto.Adapters.SQL.Sandbox
