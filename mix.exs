defmodule MaintainableMapParams.MixProject do
  use Mix.Project

  def project do
    [
      app: :maintainable_map_params,
      version: "0.1.0",
      elixir: "~> 1.7",
      start_permanent: Mix.env() == :prod,
      package: package(),
      name: "MaintainableMapParams",
      source_url: "https://github.com/pierce-h/maintainable_map_params",
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:ex_doc, ">= 0.0.0", only: :dev}
    ]
  end

  defp description() do
    "Converts a map with stringified keys to atoms and filters specified keys."
  end

  defp package() do
    [
      maintainers: ["Pierce Harmon"],
      # This option is only needed when you don't want to use the OTP application name
      name: "maintainable_map_params",
      # These are the default files included in the package
      licenses: ["Apache 2.0"],
      links: %{"GitHub" => "https://github.com/pierce-h/maintainable_map_params"}
    ]
  end
end
