job "http-echo" {
    datacenters = ["dc1"]

    group "echo" {
        count = 3
        task "server" {
            driver = "docker"

            config {
                image = "hashicorp/http-echo:latest"
                args = [
                    "-listen", ":${NOMAD_PORT_http}",
                    "-text", "Yo Jojo"
                ]
            }

            resources {
                network {
                    mbits = 10
                    port "http" {}
                }
            }
        }
    }
}
