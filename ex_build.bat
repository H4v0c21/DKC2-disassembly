asar.exe -Dversion=0 --fix-checksum=off "all.asm" build/dkc2_u_1.0.sfc
asar.exe -Dversion=1 --fix-checksum=off "all.asm" build/dkc2_u_1.1.sfc
flips -c -i clean_dkc2_u_1.0.sfc build/dkc2_u_1.0.sfc build/dkc2_u_1.0_ex_patch.ips
flips -c -i clean_dkc2_u_1.1.sfc build/dkc2_u_1.1.sfc build/dkc2_u_1.1_ex_patch.ips
pause