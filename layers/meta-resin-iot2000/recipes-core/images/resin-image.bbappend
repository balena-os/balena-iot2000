IMAGE_FSTYPES_append = " resinos-img"

# Do not support live USB stick
NOISO = "1"
NOHDD = "1"

# Customize resinos-img
RESIN_IMAGE_BOOTLOADER = "grub-efi"
RESIN_BOOT_PARTITION_FILES = " \
    bootia32.efi:/EFI/BOOT/ \
    grub.cfg:/EFI/BOOT/ \
    bzImage${KERNEL_INITRAMFS}-${MACHINE}.bin:/vmlinuz \
    "
