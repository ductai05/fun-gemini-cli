# fun-gemini-cli

This repository demonstrates how to set up and use the Gemini CLI (agents code) in your Node.js projects using `nix-shell`. By leveraging `shell.nix`, you can easily create a consistent development environment with Node.js and the Gemini CLI pre-configured.

## How to use this setup in your projects

To integrate this setup into another Node.js project, follow these steps:

1.  **Copy `shell.nix`:**
    Copy the `shell.nix` file from this repository into the root directory of your target Node.js project.

2.  **Enter the Nix Shell:**
    Navigate to your project's root directory in your terminal and run:
    ```bash
    nix-shell
    ```
    This command will set up the environment, including Node.js, and load your `GEMINI_API_KEY` if available.

3.  **Set up Gemini API Key (if not already done):**
    If you see a message "Gemini API key file not found.", you need to create a file named `gemini_api_key` in your project's root directory containing your actual Gemini API key.
    ```bash
    echo "YOUR_API_KEY_HERE" > gemini_api_key
    ```
    **Remember to replace `YOUR_API_KEY_HERE` with your actual API key.**
    It's recommended to add `gemini_api_key` to your `.gitignore` file to prevent it from being committed to version control.

4.  **Initialize Node.js Project and Install Gemini CLI:**
    Once inside the `nix-shell` environment, follow these commands to initialize your Node.js project and install the Gemini CLI:
    ```bash
    npm init -y
    npm install @google/gemini-cli
    ```

5.  **Run Gemini CLI:**
    You can now run the Gemini CLI:
    ```bash
    npx gemini -m gemini-2.5-flash
    ```

This setup ensures that your project always uses the specified Node.js version and has the Gemini CLI readily available within the `nix-shell` environment.