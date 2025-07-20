_:
	just --list

# does_not_work_in_afternoon:
# 	just purge
# 	just init
# 	just test

# does_work_in_afternoon:
# 	just clean
# 	just init
# 	just test

update_uv:
	uv self update


test2:
	uv run --no-editable pytest


# reinstall:
# 	uv pip uninstall uv_offline_test
# 	uv pip install .


