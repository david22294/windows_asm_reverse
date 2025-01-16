Win2025 stornvme DeviceExtension structure:

devext+0xb0 == ControlReg map pointer
devext+0x150 == AdminSubQ virtual addr, devext+0x158 == AdminSubQ physical addr
devext+0x160 == AdminSubQ doorbell virtual addr == Doorbell mapped begin pointer
devext+210 == AdminCplQ virtual addr, devext+218 == AdminCplQ physical addr
devext+220 == AdminCplQ doorbell virtual addr
devext+0x398 == addr of IoSubQ info list
devext+0x3a0 == addr of IoCplQ info list
