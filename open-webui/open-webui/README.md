# Home Assistant Add-on: Open WebUI

![Open WebUI Logo](logo.png)

## What is Open WebUI?

Open WebUI is a user-friendly, self-hosted web interface for interacting with various large language models (LLMs). This Home Assistant add-on provides a simple way to run Open WebUI directly within your Home Assistant environment, allowing you to chat with and utilize LLMs without needing separate infrastructure. It supports connecting to different LLM backends, including LiteLLM, OpenAI, and others.

## Features

- Intuitive chat interface for LLMs.
- Supports multiple LLM backends.
- Easy installation within Home Assistant.
- Self-hosted and privacy-focused.
- Supports various architectures.

## Installation

1.  Add this repository to your Home Assistant Add-on Store. Go to **Settings** -> **Add-ons** -> **Add-on Store** -> **...** (top right) -> **Repositories**.
2.  Enter the URL of this add-on repository (e.g., `https://github.com/open-webui/open-webui-hass-addon`).
3.  Click **Add**.
4.  The Open WebUI add-on should now appear in your Add-on Store. Click on it.
5.  Click **Install**.

## Configuration

This add-on currently does not expose specific configuration options via the Home Assistant add-on configuration page. Any configuration would typically be done within the Open WebUI interface itself after installation.

## Accessing the Web UI

Currently, Home Assistant Ingress is not working for this add-on. You can access the web UI directly via the configured port (default is 3000).

Examples of temporary access links (replace with your actual Home Assistant IP/hostname if necessary):

-   [local host](http://localhost:3000)
-   [local home assistant](http://localhost:3000)
-   [or your local ip](http://192.168.0.26:3000)

## Supported Architectures

This add-on supports the following architectures:

-   armhf
-   armv7
-   aarch64
-   amd64
-   i386

## Links

-   **Main Open WebUI Project:** [https://github.com/open-webui/open-webui](https://github.com/open-webui/open-webui)
-   **Add-on Source Repository:** [https://github.com/open-webui/open-webui-hass-addon/tree/main/open-webui](https://github.com/open-webui/open-webui-hass-addon/tree/main/open-webui)
