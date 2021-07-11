### Assembling:


```shell
$ nasm -f bin ./Real_Mode/boot.asm -o ./Real_Mode/boot.bin
```

### Disassembling:

```shell
# See the Disassembly output
$ ndisasm ./Real_Mode/boot.bin
```

![](imgs/1.png)

### Launching the Bootloader:

```shell
$ qemu-system-x86_64 -hda ./Real_Mode/boot.bin
```
![](imgs/2.png)