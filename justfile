_:
	just --list

init:
	uv venv
	just reinstall

reinstall:
	uv pip uninstall uv_offline_test
	uv pip install .

test: reinstall
	uv run pytest

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


does_not_work_in_afternoon:
	just purge
	just init
	just test

does_work_in_afternoon:
	just clean
	just init
	just test
