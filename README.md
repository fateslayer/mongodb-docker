# MongoDB (Docker)

Minimal Docker setup for latest MongoDB.

## Usage (Docker)

- Bring up: `docker compose up -d`
- View logs (db): `docker compose logs -f mongodb`
- Stop: `docker compose down`

## Usage (pnpm)

- Bring up: `pnpm up`
- View logs (db): `pnpm logs:db`
- Stop: `pnpm down`

## Connection

- Default port: `27017`
- Root credentials come from environment: `MONGODB_USERNAME`, `MONGODB_PASSWORD`
- Example URI: `mongodb://$MONGODB_USERNAME:$MONGODB_PASSWORD@localhost:27017/?authSource=admin`

## Data

- Data is persisted in Docker volume `mongodb_data`.

## UI

- Mongo Express: http://localhost:${HOST_MONGO_EXPRESS_PORT:-8081}
  - Uses the `mongodb` service connection and your root credentials.
  - Bring everything up: `docker compose up -d`
  - Stop all: `docker compose down`

## Clean teardown (Docker)

- Stop and remove containers and network: `docker compose down`
- Remove containers, network, and named volumes: `docker compose down -v`
- Remove everything including anonymous volumes and images: `docker compose down -v --rmi local`

## Clean teardown (pnpm)

- Stop and remove containers and network: `pnpm down`
- Remove containers, network, and named volumes: `pnpm down:volumes`
- Remove everything including anonymous volumes and images: `pnpm down:clean`

## pnpm scripts

- `pnpm up`: Start services in the background
- `pnpm logs`: Tail all service logs
- `pnpm logs:db`: Tail MongoDB logs
- `pnpm restart`: Restart services
- `pnpm ps`: List running services

## Optional tools

- You can also use MongoDB Compass or any MongoDB UI.
