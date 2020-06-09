# This Makefile shows where it is
#
# Usage:
#
# * On Peregrine:
#
#   sbatch run_make.sh
#   ./run_make.sh
#
# * On local:
#
#   ./run_make.sh
#   make
#
#

all:
	echo "HOSTNAME: $$HOSTNAME"
	$(shell if [ 1 == 2 ] ; then echo "On Peregrine login node" ; fi)
	$(shell if [[ $$HOSTNAME == peregrine.hpc.rug.nl ]] ; then echo "On Peregrine login node" ; fi)
	#elif [ $$HOSTNAME =~ ^pg-node[0-9]{3}$ ] ; then ; \
	#  echo "On Peregrine worker node"                \
	#else                                            ; \
	#  echo "On local computer"                       \
	#fi                                               

clean:
	rm -f *.log
