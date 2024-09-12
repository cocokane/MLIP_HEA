import dpdata
import numpy as np

# load data of vasp/outcar format
data = dpdata.LabeledSystem("OUTCAR", fmt="vasp/outcar")
print("# the data contains %d frames" % len(data))

