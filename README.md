# Typst Resume

This repository contains the source code for my professional resume, written in [Typst](https://typst.app/).

## How It Works

This repository is configured with a Continuous Integration (CI) pipeline using **GitHub Actions**. This means that the PDFs are automatically generated when a new push is detected.

1. **Make a Change:** Edit or add any `.typ` file in the root directory of this repository.
2. **Push to GitHub:** Commit and push your changes to the `main` branch or whichever 'role' branch you are targeting .
3. **Auto-Compile:** The GitHub Action (`Compile Typst Resume`) detects the push and automatically triggers.
4. **Artifacts & Commits:** The workflow loops through all `.typ` files in the root directory, compiles them into PDFs, and stores them in the `compiled/` directory. It then automatically commits the new PDFs back to the repository and uploads them as an accessible artifact on the Actions page, or they can be viewed in the `compiled` folder.

## Recommended Workspace & Extensions

When editing these files locally, it is highly recommended to use **Visual Studio Code (VS Code)** with the **Tinymist Typst** extension or eqivalent.

### Local Commands

If you ever want to compile a document manually from the command line without relying on the GitHub Action, you can run:
`typst compile your_filename.typ`
Note that this requires having typst installed, and is likely more effort.