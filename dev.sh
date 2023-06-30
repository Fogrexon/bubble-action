#!/usr/bin/env bash

engine() {
  cd bubble-engine
  npm start
}

app() {
  npm run dev
}

(trap 'kill 0' SIGINT; engine & app)
