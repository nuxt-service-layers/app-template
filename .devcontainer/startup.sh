#!/bin/bash

echo ""
echo ""
echo -e "\e[32m[Service Layers] Installing dependencies and spinning up a dev server... \e[0m"
pnpm install

echo ""
echo ""
echo -e "\e[32m[Service Layers] Starting development server... \e[0m"
nuxt dev
