#!/bin/bash
xe sr-list name-label="Local storage"
xe vm-list name-label=zphome
xe vdi-create sr-uuid=d081ce05-7cef-6909-8570-bafe8e14dc60 name-label=XO type=user virtual-size=987841972305
xe vbd-create vm-uuid=ec5663cb-e7c1-2666-ae14-3337fece7514 device=1 vdi-uuid=cae881d0-611e-4143-a093-05058c409fe2 bootable=false mode=RW type=Disk
xe vbd-plug uuid=ae3c56ba-f13c-b058-41db-efb35a75ad2c