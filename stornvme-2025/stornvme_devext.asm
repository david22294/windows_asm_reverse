Win2025 stornvme DeviceExtension structure:

devext+0xb0 == ControlReg map pointer
devext+0x150 == AdminSubQ virtual addr, devext+0x158 == AdminSubQ physical addr
devext+0x160 == AdminSubQ doorbell virtual addr == Doorbell mapped begin pointer
devext+210 == AdminCplQ virtual addr, devext+218 == AdminCplQ physical addr
devext+220 == AdminCplQ doorbell virtual addr
devext+0x398 == addr of IoSubQ info struct list // each struct 192 bytes
devext+0x3a0 == addr of IoCplQ info struct list // each struct 392 bytes


IoSubQ info struct
+0x0    IoSubQ VAr

+0x8    IoSubQ PA
+0x30   QueueID(?)
+0x34   Doorbell(?)
+0x38   Doorbell(?)