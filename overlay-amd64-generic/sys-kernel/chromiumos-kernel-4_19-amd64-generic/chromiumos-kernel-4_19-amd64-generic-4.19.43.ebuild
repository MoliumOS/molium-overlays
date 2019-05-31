# Copyright 2019 The Chromium OS Authors. All rights reserved.
# Distributed under the terms of the GNU General Public License v2

EAPI=5

CROS_WORKON_COMMIT="6cbeeee852208510d160175666f8813436820ced"
CROS_WORKON_TREE="80032f3253be6744b2f0b9c3963fa152bdbbcbf5"
CROS_WORKON_PROJECT="chromiumos/third_party/kernel"
CROS_WORKON_LOCALNAME="kernel/v4.19"

CHROMEOS_KERNEL_ARCH="x86_64" 
CHROMEOS_KERNEL_CONFIG="${FILESDIR}/defconfig"

# This must be inherited *after* EGIT/CROS_WORKON variables defined
inherit cros-workon cros-kernel2

HOMEPAGE="https://www.chromium.org/chromium-os/chromiumos-design-docs/chromium-os-kernel"
DESCRIPTION="Chrome OS Linux Kernel 4.19"
KEYWORDS="*"

# Change the following (commented out) number to the next prime number
# when you change "cros-kernel2.eclass" to work around http://crbug.com/220902
#
# NOTE: There's nothing magic keeping this number prime but you just need to
# make _any_ change to this file.  ...so why not keep it prime?
#
# Don't forget to update the comment in _all_ chromeos-kernel-x_x-9999.ebuild
# files (!!!)
#
# The coolest prime number is: 83