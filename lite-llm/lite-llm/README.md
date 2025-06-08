# Home Assistant Add-on: LiteLLM

![logo.png](/api/hassio/addons/local_lite-llm/logo) 
## What is LiteLLM?

LiteLLM is a library that simplifies the process of interacting with various large language models (LLMs) by providing a consistent API. This Home Assistant add-on packages LiteLLM, allowing you to easily integrate different LLMs into your Home Assistant automations and applications. It acts as a proxy, enabling you to use a single interface to connect to models from providers like OpenAI, Anthropic, Cohere, and more.

## Features

- Unified API for multiple LLM providers.
- Easy integration with Home Assistant.
- Supports various architectures.
- Provides a web interface for configuration and interaction.

## Installation

1.  Add this repository to your Home Assistant Add-on Store. Go to **Settings** -> **Add-ons** -> **Add-on Store** -> **...** (top right) -> **Repositories**.
2.  Enter the URL of this add-on repository (e.g., `https://github.com/open-webui/open-webui-hass-addon`).
3.  Click **Add**.
4.  The LiteLLM add-on should now appear in your Add-on Store. Click on it.
5.  Click **Install**.

## Configuration

The add-on can be configured via the Home Assistant add-on configuration page.

-   `master_key`: (Required) Your master key for LiteLLM.
-   `salt_key`: (Required) Your salt key for LiteLLM.

## Accessing the Web UI

Currently, Home Assistant Ingress is not working for this add-on. You can access the web UI directly via the configured port (default is 4000).

Examples of temporary access links (replace with your actual Home Assistant IP/hostname if necessary):

-   [local host](http://localhost:4000)
-   [local home assistant](http://localhost:4000)
-   [or your local ip](http://192.168.0.26:4000)

 
## Links

-   **Main LiteLLM Project:** [https://github.com/BerriAI/litellm](https://github.com/BerriAI/litellm)
-   **Add-on Source Repository:** [https://github.com/open-webui/open-webui-hass-addon/tree/main/lite-llm](https://github.com/open-webui/open-webui-hass-addon/tree/main/lite-llm)
 