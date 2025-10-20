# MongoDB (Docker)

Minimal Docker setup for latest MongoDB.

## Usage

- Bring up: `docker compose up -d`
- View logs (db): `docker compose logs -f mongodb`
- Stop: `docker compose down`

### Environment setup

- Copy `.env.example` to `.env` and adjust values as needed.
- Note: `.env` is git-ignored to avoid committing secrets.

 

## Connection

- Default port: `27017`
- Authentication: disabled (local dev). Connect without credentials.
- Example URI: `mongodb://localhost:27017/`
- Example DB URI: `mongodb://localhost:27017/your-db-name`

## Data

- Data is persisted in Docker volume `mongodb_data`.

## UI

- Mongo Express: http://localhost:${HOST_MONGO_EXPRESS_PORT:-8081}
  - Connects to `mongodb` service with no auth.
  - Bring everything up: `docker compose up -d`
  - Stop all: `docker compose down`

## Clean teardown

- Stop and remove containers and network: `docker compose down`
- Remove containers, network, and named volumes: `docker compose down -v`
- Remove everything including anonymous volumes and images: `docker compose down -v --rmi local`

## CLI script

- Use the helper script `./mongo.sh`:
  - Start services: `./mongo.sh up`
  - Tail logs: `./mongo.sh logs` or only MongoDB: `./mongo.sh logs:db`
  - Stop and remove: `./mongo.sh down`
  - Remove with volumes: `./mongo.sh down:volumes`
  - Clean remove (volumes + local images): `./mongo.sh down:clean`
  - List services: `./mongo.sh ps`

 

## Optional tools

- You can also use MongoDB Compass or any MongoDB UI.
