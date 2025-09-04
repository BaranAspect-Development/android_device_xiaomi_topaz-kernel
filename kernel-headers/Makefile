VERSION = 5
PATCHLEVEL = 15

headers_install:
	@mkdir -p $(O)/usr/include
	@rsync -mrq $(shell pwd)/* $(O)/usr/include
	@find $(O)/usr/include -type f -name "*.h" -exec sed -i 's/struct sched_param/struct __kernel_sched_param/g' {} +

all:
	@true
