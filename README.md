# Kafka Docker Setup

This repository provides a simple Docker Compose setup for running Apache Kafka (using KRaft mode) and Kafka UI for local development and testing.

## Project Structure

- `docker-compose.yml`  
  Docker Compose configuration for Kafka and Kafka UI services.
- `kafkaui/config.yml`  
  Configuration file for Kafka UI, including authentication and cluster connection.

## Services

### Kafka (KRaft Mode)
- Uses the [bitnami/kafka](https://hub.docker.com/r/bitnami/kafka) image.
- Runs in KRaft mode (no Zookeeper).
- Data is persisted in the `kafka-data/` directory (ignored by Git).

### Kafka UI
- Uses the [provectuslabs/kafka-ui](https://github.com/provectus/kafka-ui) image.
- Accessible at [http://localhost:8080](http://localhost:8080).
- Configured with login form authentication (`admin` / `admin` by default).
- Connects to the Kafka broker at `kafka:9092`.

## Usage

1. **Start the services:**
   ```sh
   docker compose up -d
   ```

2. **Access Kafka UI:**
   - Open [http://localhost:8080](http://localhost:8080) in your browser.
   - Login with username: `admin`, password: `admin`.

3. **Stop the services:**
   ```sh
   docker compose down
   ```

## Configuration

- **Kafka UI Authentication:**  
  Configured in [`kafkaui/config.yml`](kafkaui/config.yml).
- **Kafka Data:**  
  Persisted in the `kafka-data/` directory (see [`.gitignore`](.gitignore)).

## Notes

- No Zookeeper is used; Kafka runs in KRaft mode.
- You can modify `kafkaui/config.yml` to add more clusters or change