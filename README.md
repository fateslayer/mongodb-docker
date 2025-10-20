# MongoDB (Docker)

Minimal Docker setup for latest MongoDB.

## Usage

- Bring up: `docker compose up -d`
- View logs: `docker compose logs -f mongodb`
- Stop: `docker compose down`

## Connection

- Default port: `27017`
- Root credentials come from environment: `MONGODB_USERNAME`, `MONGODB_PASSWORD`
- Example URI: `mongodb://$MONGODB_USERNAME:$MONGODB_PASSWORD@localhost:27017/?authSource=admin`

## Data

- Data is persisted in Docker volume `mongodb_data`.

## Optional tools

- You can use MongoDB Compass or any MongoDB UI. No UI is bundled.
