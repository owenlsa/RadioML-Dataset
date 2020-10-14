#!/bin/sh
export VOLK_GENERIC=1
export GR_DONT_LOAD_PREFS=1
export srcdir=/mnt/d/ModulationRecog/RadioML/gr-mapper-not/python
export GR_CONF_CONTROLPORT_ON=False
export PATH=/mnt/d/ModulationRecog/RadioML/gr-mapper-not/build/python:$PATH
export LD_LIBRARY_PATH=/mnt/d/ModulationRecog/RadioML/gr-mapper-not/build/lib:$LD_LIBRARY_PATH
export PYTHONPATH=/mnt/d/ModulationRecog/RadioML/gr-mapper-not/build/swig:$PYTHONPATH
/usr/bin/python2 /mnt/d/ModulationRecog/RadioML/gr-mapper-not/python/qa_preamble_sync_demapper.py 
