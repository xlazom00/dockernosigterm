# dockernosigterm

SIGTERM seems not to be properly handled by docker when working with a windows container.

Steps to reproduce:

* docker compose build
* docker compose up
* ctrl + c to stop gracefully the container

You can see docker is not waiting for the script to complete.

If you run the entrypoint on it's own in powershell, and pres ctrl+c, it will wait before returning to host.
