# LEMP Stack with Docker

This project sets up a custom WordPress website using MariaDB, NGINX, and WordPress containers, all connected through a Docker environment managed by Docker Compose. It allows for quick deployment and is intended as a template for personal projects with a pre-configured environment.

## Features

- **MariaDB** for database management.
- **NGINX** as the web server.
- **WordPress** container for the website.
- **Docker Compose** to orchestrate the containers.

## Prerequisites

- Docker
- Docker Compose
- Make

## Getting Started

### 1. Clone the Repository

```sh
git clone git@github.com:adinari42/wp-docker-infrastracture.git
cd wp-docker-infrastracture/srcs
```

### 2. Build and Deploy

Use the `make` command to build and deploy the containers:

```sh
make
```

### 3. Access Your WordPress Site

After the build process completes, your WordPress site will be accessible at `https://localhost`.

## Management Commands

### Stop and Clean Up

To stop and remove the containers, images, volumes, and network, use:

```sh
make fclean
```

## Directory Structure

```
wp-docker-infrastracture/
├── srcs/
│   ├── docker-compose.yml
│   ├── .env
│   ├── requirements/
│   │   ├── mariadb/
│   │   │   ├── 50-server.cnf
│   │   │   ├── db-script.sh
│   │   │   ├── Dockerfile
│   │   ├── wordpress/
│   │   │   ├── Dockerfile
│   │   │   ├── wp-script.sh
│   │   │   ├── www.conf
│   │   ├── nginx/
│   │   │   ├── Dockerfile
│   │   │   ├── nginx.conf
├── makefile
```

## Customization

- **NGINX**: Modify the `srcs/requirements/nginx/nginx.conf` file to change the web server configuration.
- **WordPress**: Customize the `srcs/requirements/wordpress/wp-script.sh` and `srcs/requirements/wordpress/www.conf` files for your specific WordPress settings.
- **MariaDB**: Adjust the `srcs/requirements/mariadb/50-server.cnf` and `srcs/requirements/mariadb/db-script.sh` files for database configurations.

## Contributing

Feel free to submit issues or pull requests if you have suggestions for improvements or find any bugs.

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.

---

By using this template, you can quickly set up and deploy a WordPress site with a fully configured LEMP stack using Docker and Docker Compose. Happy coding!
