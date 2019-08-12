# Test 'is_on_peregrine'
#
# Works with:
#
#   sbatch run_r_script test_is_on_pff.R
#   Rscript test_is_on_pff.R
#
print(Sys.getenv("HOSTNAME"))
print(peregrine::is_on_peregrine())
