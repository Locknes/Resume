# Typst Resume

This repository contains the source code for my professional resume, written in [Typst](https://typst.app/), a modern markup-based typesetting system. 

## How It Works

This repository is configured with a Continuous Integration (CI) pipeline using **GitHub Actions**. You don't need to manually compile your PDFs before pushing them to GitHub!

1. **Make a Change:** Edit or add any `.typ` file in the root directory of this repository.
2. **Push to GitHub:** Commit and push your changes to the `main` branch.
3. **Auto-Compile:** The GitHub Action (`Compile Typst Resume`) detects the push and automatically triggers.
4. **Artifacts & Commits:** The workflow loops through all `.typ` files in the root directory, compiles them into PDFs, and stores them in the `compiled/` directory. It then automatically commits the new PDFs back to the repository and uploads them as an accessible artifact on the Actions page.

You can view your ready-to-use PDFs simply by opening the `compiled/` folder in this repository.

## Recommended Workspace & Extensions

If you are editing these files locally, it is highly recommended to use **Visual Studio Code (VS Code)**.

### Required Extensions

*   **Tinymist Typst**: This is currently the most robust and widely recommended extension for Typst. It features:
    *   Syntax highlighting and error linting.
    *   Autocompletion and rich intellisense.
    *   Built-in live preview (updates the PDF view in real-time as you type).
    *   Code formatting capabilities.

### Local Commands

If you ever want to compile a document manually from the command line without relying on the GitHub Action, you can run:
`typst compile your_filename.typ`