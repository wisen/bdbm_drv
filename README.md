A Device Driver for BlueDBM (BDBM_DRV)
====

BDBM_DRV is a device driver for BlueDBM hardware which is being developed by CSAIL MIT.
BDBM_DRV supports various functionalities, including a flash translation layer, a block 
device emulation, an NAND flash emulation (with or without NAND timing), and so on.
Even though its target hardware is BlueDBM, therefore, it can be used for various purposes 
to develop NAND flash software or firmware.


Supported Platforms
-------------------

The current version of BDBM_DRV supports Ubuntu Precise (12.04) with Linux kernel 3.13 (64-bit).

Other Linux platforms will be supported soon.


Installation
------------

0. Checkout out the following from github:

	https://github.com/chamdoo/bdbm_drv

1. Compile BDBM_DRV:

	make 

2. Install the kernel module and mount the EXT4 file system:

	cd run
	./mount_ext4.sh

3. Run a test benchmark:

	./run_bonnie++.sh

4. Unmount the file system:

	./umount.sh


Note
------------

A more detailed description will be updated soon.

