ideal:
	just purge
	just test

test: install
	uv run --no-editable pytest

install:
	uv sync --no-editable
	uv pip uninstall uv_offline_test
	uv pip install .

purge: clean
	-rm uv.lock

clean:
	just _remove .venv
	just _remove env
	just _remove build
	just _remove .DS_Store
	just _remove '*.pytest_cache'
	just _remove __pycache__
	just _remove '*.egg-info'
	just _remove '*.pyc'
	just _remove '*.ipynb_checkpoints'
	just _remove '*.c'
	just _remove dist

_remove name:
	-@find . -name '{{name}}' -exec rm -r {} +
