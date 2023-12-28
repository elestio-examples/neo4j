<a href="https://elest.io">
  <img src="https://elest.io/images/elestio.svg" alt="elest.io" width="150" height="75">
</a>

[![Discord](https://img.shields.io/static/v1.svg?logo=discord&color=f78A38&labelColor=083468&logoColor=ffffff&style=for-the-badge&label=Discord&message=community)](https://discord.gg/4T4JGaMYrD "Get instant assistance and engage in live discussions with both the community and team through our chat feature.")
[![Elestio examples](https://img.shields.io/static/v1.svg?logo=github&color=f78A38&labelColor=083468&logoColor=ffffff&style=for-the-badge&label=github&message=open%20source)](https://github.com/elestio-examples "Access the source code for all our repositories by viewing them.")
[![Blog](https://img.shields.io/static/v1.svg?color=f78A38&labelColor=083468&logoColor=ffffff&style=for-the-badge&label=elest.io&message=Blog)](https://blog.elest.io "Latest news about elestio, open source software, and DevOps techniques.")

# Neo4j, verified and packaged by Elestio

[Neo4j](https://github.com/neo4j) is an open-source, NoSQL, native graph database that provides an ACID-compliant transactional backend for your applications.
`
<img src="https://github.com/elestio-examples/neo4j/blob/main/neo4j.jpg" alt="neo4j" width="800">

Deploy a <a target="_blank" href="https://elest.io/open-source/neo4j">fully managed Neo4j</a> on <a target="_blank" href="https://elest.io/">elest.io</a> if you want a graph database that stores nodes and relationships instead of tables, or documents. Data is stored just like you might sketch ideas on a whiteboard. Your data is stored without restricting it to a pre-defined model, allowing a very flexible way of thinking about and using it.

[![deploy](https://github.com/elestio-examples/neo4j/blob/main/deploy-on-elestio.png)](https://dash.elest.io/deploy?source=cicd&social=dockerCompose&url=https://github.com/elestio-examples/neo4j)

# Why use Elestio images?

- Elestio stays in sync with updates from the original source and quickly releases new versions of this image through our automated processes.
- Elestio images provide timely access to the most recent bug fixes and features.
- Our team performs quality control checks to ensure the products we release meet our high standards.

# Usage

## Git clone

You can deploy it easily with the following command:

    git clone https://github.com/elestio-examples/neo4j.git

Copy the .env file from tests folder to the project directory

    cp ./tests/.env ./.env

Edit the .env file with your own values.

Run the project with the following command

    docker-compose up -d

You can access the Web UI at: `http://your-domain:7474`

## Docker-compose

Here are some example snippets to help you get started creating a container.

    version: "3.3"
    services:
    neo4j:
        image: neo4j:${SOFTWARE_VERSION_TAG}
        container_name: neo4j
        restart: always
        environment:
        - NEO4J_AUTH=neo4j/${ADMIN_PASSWORD}
        ports:
        - "172.17.0.1:7474:7474"
        - "172.17.0.1:7687:7687"
        volumes:
        - ./neo4j/data:/data
        - ./neo4j/logs:/logs
        - ./neo4j/conf:/conf
        - ./neo4j/plugins:/plugins

### Environment variables

|       Variable       | Value (example)  |
| :------------------: | :--------------: |
|     ADMIN_EMAIL      | admin@gmail.com  |
|    ADMIN_PASSWORD    |  your-password   |
| SOFTWARE_VERSION_TAG |      latest      |

# Maintenance

## Logging

The Elestio Neo4j Docker image sends the container logs to stdout. To view the logs, you can use the following command:

    docker-compose logs -f

To stop the stack you can use the following command:

    docker-compose down

## Backup and Restore with Docker Compose

To make backup and restore operations easier, we are using folder volume mounts. You can simply stop your stack with docker-compose down, then backup all the files and subfolders in the folder near the docker-compose.yml file.

Creating a ZIP Archive
For example, if you want to create a ZIP archive, navigate to the folder where you have your docker-compose.yml file and use this command:

    zip -r myarchive.zip .

Restoring from ZIP Archive
To restore from a ZIP archive, unzip the archive into the original folder using the following command:

    unzip myarchive.zip -d /path/to/original/folder

Starting Your Stack
Once your backup is complete, you can start your stack again with the following command:

    docker-compose up -d

That's it! With these simple steps, you can easily backup and restore your data volumes using Docker Compose.

# Links

- <a target="_blank" href="https://github.com/neo4j">Neo4j Github repository</a>

- <a target="_blank" href="https://neo4j.com/docs/">Neo4j documentation</a>

- <a target="_blank" href="https://github.com/elestio-examples/neo4j">Elestio/Neo4j Github repository</a>
