#
# Copyright (C) 2011 The Android Open-Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

TARGET_BOOTLOADER_BOARD_NAME := flo
TARGET_BOOTLOADER_NAME := flo
TARGET_BOARD_INFO_FILE := device/asus/flo/board-info.txt

BOARD_HAL_STATIC_LIBRARIES := libdumpstate.flo

TARGET_RELEASETOOLS_EXTENSIONS := device/asus/flo

TARGET_RECOVERY_FSTAB = device/asus/flo/fstab.flo

include device/asus/flo/BoardConfigCommon.mk

# BlissPop Config Flags  
TARGET_TC_ROM := 5.2-linaro
TARGET_TC_KERNEL := 5.2-linaro
BLISSIFY := true
BLISS_O3 := true
BLISS_STRICT := true
BLISS_GRAPHITE := true
BLISS_KRAIT := true
BLISS_PIPE := true
TARGET_GCC_VERSION_EXP := $(TARGET_TC_ROM)
TARGET_KERNEL_CUSTOM_TOOLCHAIN := $(TARGET_TC_KERNEL)
WITH_LZMA_OTA := true

#SaberMod  
-include vendor/bliss/config/sm.mk
