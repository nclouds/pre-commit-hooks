# Hooks

You may install these hooks by adding this code to your ``

```
-   repo: https://github.com/nclouds/pre-commit-hooks.git
    rev: v1.0.0  # Use the ref you want to point at
    hooks:
    -   id: validate-commit-message
```
Currently the hooks available are:
 * [validate-commit-message](#commit-message)
 * [validate-branch-name](#branch-name)
 * [validate-gpg-key](#signin-commit)

## Commit Message

Validates that the commit message contains the correct format. the message should begin with one of the next prefixes:
- `feat:` for new features
- `fix:` for bug fixes
- `docs:` for documentation and examples
- `style:` changes that do not affect the meaning of the code (white-space, formatting, etc.)

```yaml
    - id: validate-commit-message
```

## Branch Name

Validates that the branch name contains the correct format. The name should have the next format: 

`prefix/tiket-id`

where prefix reffers to:
- `feat`: for new features
- `fix`: for bug fixes
- `docs`: for documentation and examples
- `style`: changes that do not affect the meaning of the code

ticket should be a set of letters and id shoulbe be a set of numbers

```yaml
    - id: validate-branch-name
```

## Signin Commit

Validates that the commits are being signed, for this you need to [set a GPG key](https://docs.github.com/es/authentication/managing-commit-signature-verification/adding-a-new-gpg-key-to-your-github-account) and a git configuration as `git config commit.gpgsign true`

```yaml
    - id: validate-gpg-key
```