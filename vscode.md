# Python

## Linting and code complete

Add to global config (`settings.json`)

```
"python.linting.pylintEnabled": true,
"python.linting.flake8Enabled": true,
"python.linting.flake8Args": [
	"--line-length",
	"120"
],
```

## Organize imports

https://www.techiediaries.com/vscode-automatically-organize-python-imports/

```
pip install isort
```

Ctrl+Shift+P, next search for Preferences: Configure Language Specific Settings...

```
"[python]": {
    "editor.codeActionsOnSave": {
        "source.organizeImports": true
    }
}
```

## Format on save

Add to global config (`settings.json`)

```
"editor.formatOnSave": true
```

