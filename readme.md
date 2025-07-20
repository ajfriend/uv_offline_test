> just reinstall

uv pip uninstall h3set
Uninstalled 1 package in 3ms
 - h3set==0.1.0 (from file:///Users/aj/work/h3set)
uv pip install .
⠦ h3set==0.1.0                                                                                                                                                                        error: Failed to fetch: `https://pypi.org/simple/geopandas/`
  Caused by: Request failed after 3 retries
  Caused by: error sending request for url (https://pypi.org/simple/geopandas/)
  Caused by: client error (Connect)
  Caused by: dns error
  Caused by: failed to lookup address information: nodename nor servname provided, or not known
error: Recipe `reinstall` failed on line 17 with exit code 2
