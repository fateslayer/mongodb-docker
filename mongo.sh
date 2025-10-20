#!/usr/bin/env bash
set -euo pipefail

usage() {
  cat <<EOF
MongoDB Docker helper

Usage: $0 <command>

Commands:
  up               Start services in background
  down             Stop and remove containers and network
  down:volumes     Stop and remove containers, network, and named volumes
  down:clean       Stop and remove containers, network, volumes, and local images
  logs             Tail all service logs
  logs:db          Tail MongoDB logs
  restart          Restart services
  ps               List running services
  help             Show this help
EOF
}

cmd="${1:-help}"

case "$cmd" in
  up)
    docker compose up -d
    ;;
  down)
    docker compose down
    ;;
  down:volumes)
    docker compose down -v
    ;;
  down:clean)
    docker compose down -v --rmi local
    ;;
  logs)
    docker compose logs -f
    ;;
  logs:db)
    docker compose logs -f mongodb
    ;;
  restart)
    docker compose restart
    ;;
  ps)
    docker compose ps
    ;;
  help|--help|-h)
    usage
    ;;
  *)
    echo "Unknown command: $cmd" >&2
    echo >&2
    usage >&2
    exit 1
    ;;
esac

