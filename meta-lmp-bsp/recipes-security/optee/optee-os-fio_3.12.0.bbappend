OPTEEMACHINE_apalis-imx6 = "imx-mx6qapalis"
OPTEEMACHINE_imx6ullevk = "imx-mx6ullevk"
OPTEEMACHINE_imx8mm-lpddr4-evk = "imx-mx8mmevk"
OPTEEMACHINE_imx8mq-evk = "imx-mx8mqevk"
OPTEEMACHINE_qemuarm64 = "vexpress-qemu_armv8a"
OPTEEMACHINE_uz = "zynqmp-zcu102"

# Vendor Settings
EXTRA_OEMAKE_append_imx = " \
    CFG_CAAM_DBG=0x001 \
"

# SoC Settings
EXTRA_OEMAKE_append_uz = " \
    CFG_TZDRAM_START=0x7e000000 CFG_TZDRAM_SIZE=0x1c00000 \
    CFG_SHMEM_START=0x7fc00000 CFG_SHMEM_SIZE=0x400000 \
    CFG_DT=y CFG_EXTERNAL_DTB_OVERLAY=y CFG_DT_ADDR=0x22000000 \
"

# Machine Settings
EXTRA_OEMAKE_append_qemuarm64 = " \
    CFG_RPMB_FS=y CFG_RPMB_WRITE_KEY=y \
"
EXTRA_OEMAKE_append_apalis-imx6 = " \
    CFG_NXP_CAAM=y CFG_IMX_CAAM=n \
    CFG_NS_ENTRY_ADDR=0x17800000 CFG_IMX_WDOG_EXT_RESET=y CFG_RNG_PTA=y \
    CFG_TZDRAM_START=0x4e000000 CFG_OVERLAY_ADDR=0x16000000 \
    CFG_OVERLAY_RESERVED_MEMORY_ADDRESS_CELLS=1 CFG_OVERLAY_RESERVED_MEMORY_SIZE_CELLS=1 \
"
EXTRA_OEMAKE_append_imx6ullevk = " \
    CFG_NS_ENTRY_ADDR=0x87800000 CFG_IMX_WDOG_EXT_RESET=y \
    CFG_TZDRAM_START=0x9e000000 CFG_OVERLAY_ADDR=0x86000000 \
    CFG_OVERLAY_RESERVED_MEMORY_ADDRESS_CELLS=1 CFG_OVERLAY_RESERVED_MEMORY_SIZE_CELLS=1 \
"
EXTRA_OEMAKE_append_imx8mm-lpddr4-evk = " \
    CFG_NXP_CAAM=y CFG_RNG_PTA=y \
    CFG_DT=y CFG_EXTERNAL_DTB_OVERLAY=y CFG_DT_ADDR=0x43200000 \
"
EXTRA_OEMAKE_append_imx8mq-evk = " \
    CFG_NXP_CAAM=y CFG_RNG_PTA=y \
    CFG_DT=y CFG_EXTERNAL_DTB_OVERLAY=y CFG_DT_ADDR=0x43200000 \
"
