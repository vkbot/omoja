.class Lcom/mega/update/usb/UsbService$1;
.super Lcom/mega/update/usb/IUsbService$Stub;
.source "UsbService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mega/update/usb/UsbService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mega/update/usb/UsbService;


# direct methods
.method constructor <init>(Lcom/mega/update/usb/UsbService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mega/update/usb/UsbService;

    .line 66
    iput-object p1, p0, Lcom/mega/update/usb/UsbService$1;->this$0:Lcom/mega/update/usb/UsbService;

    invoke-direct {p0}, Lcom/mega/update/usb/IUsbService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public attached(Landroid/os/storage/StorageVolume;)V
    .locals 6
    .param p1, "volume"    # Landroid/os/storage/StorageVolume;

    .line 69
    invoke-static {}, Lcom/mega/update/usb/UsbService;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "attached "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/os/storage/StorageVolume;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mega/update/util/LogUtil;->logService(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    iget-object v0, p0, Lcom/mega/update/usb/UsbService$1;->this$0:Lcom/mega/update/usb/UsbService;

    invoke-static {v0}, Lcom/mega/update/usb/UsbService;->access$100(Lcom/mega/update/usb/UsbService;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    invoke-static {}, Lcom/mega/update/usb/UsbService;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSignalOtaStatus is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mega/update/usb/UsbService$1;->this$0:Lcom/mega/update/usb/UsbService;

    invoke-static {v2}, Lcom/mega/update/usb/UsbService;->access$100(Lcom/mega/update/usb/UsbService;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", can not tirgger usb update!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mega/update/util/LogUtil;->logService(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    return-void

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/mega/update/usb/UsbService$1;->this$0:Lcom/mega/update/usb/UsbService;

    invoke-static {v0, p1}, Lcom/mega/update/usb/UsbService;->access$202(Lcom/mega/update/usb/UsbService;Landroid/os/storage/StorageVolume;)Landroid/os/storage/StorageVolume;

    .line 78
    iget-object v0, p0, Lcom/mega/update/usb/UsbService$1;->this$0:Lcom/mega/update/usb/UsbService;

    invoke-static {v0}, Lcom/mega/update/usb/UsbService;->access$300(Lcom/mega/update/usb/UsbService;)V

    .line 79
    iget-object v0, p0, Lcom/mega/update/usb/UsbService$1;->this$0:Lcom/mega/update/usb/UsbService;

    invoke-static {v0}, Lcom/mega/update/usb/UsbService;->access$400(Lcom/mega/update/usb/UsbService;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/mega/update/usb/UsbService$1;->this$0:Lcom/mega/update/usb/UsbService;

    invoke-static {v0}, Lcom/mega/update/usb/UsbService;->access$500(Lcom/mega/update/usb/UsbService;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_0

    .line 82
    :cond_1
    const/4 v0, 0x0

    const-string v1, "persist.sys.is_support_IR"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 83
    .local v0, "language_ir":I
    iget-object v2, p0, Lcom/mega/update/usb/UsbService$1;->this$0:Lcom/mega/update/usb/UsbService;

    invoke-static {v2}, Lcom/mega/update/usb/UsbService;->access$600(Lcom/mega/update/usb/UsbService;)I

    move-result v2

    const-string v3, "updateservice/notify/uds/req"

    const-string v4, "current language_ir = "

    const/4 v5, 0x1

    if-eqz v2, :cond_5

    if-eq v2, v5, :cond_3

    const/4 v1, 0x2

    if-eq v2, v1, :cond_2

    goto/16 :goto_1

    .line 101
    :cond_2
    invoke-static {}, Lcom/mega/update/usb/UsbService;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "no LauguageFile"

    invoke-static {v1, v2}, Lcom/mega/update/util/LogUtil;->logService(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 93
    :cond_3
    if-nez v0, :cond_4

    .line 94
    invoke-static {}, Lcom/mega/update/rpc/MegaConnector;->self()Lcom/mega/update/rpc/MegaConnector;

    move-result-object v2

    const-string v4, "1"

    invoke-virtual {v2, v3, v4}, Lcom/mega/update/rpc/MegaConnector;->send(Ljava/lang/String;Ljava/lang/String;)Z

    .line 95
    invoke-static {v1, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 97
    :cond_4
    invoke-static {}, Lcom/mega/update/usb/UsbService;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mega/update/util/LogUtil;->logService(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    goto :goto_1

    .line 85
    :cond_5
    if-ne v0, v5, :cond_6

    .line 86
    invoke-static {}, Lcom/mega/update/rpc/MegaConnector;->self()Lcom/mega/update/rpc/MegaConnector;

    move-result-object v2

    const-string v4, "0"

    invoke-virtual {v2, v3, v4}, Lcom/mega/update/rpc/MegaConnector;->send(Ljava/lang/String;Ljava/lang/String;)Z

    .line 87
    invoke-static {v1, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 89
    :cond_6
    invoke-static {}, Lcom/mega/update/usb/UsbService;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mega/update/util/LogUtil;->logService(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    goto :goto_1

    .line 80
    .end local v0    # "language_ir":I
    :cond_7
    :goto_0
    invoke-static {}, Lcom/mega/update/usb/UsbService;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mHasUpdatePkg = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mega/update/usb/UsbService$1;->this$0:Lcom/mega/update/usb/UsbService;

    invoke-static {v2}, Lcom/mega/update/usb/UsbService;->access$400(Lcom/mega/update/usb/UsbService;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " checkLogFolder() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mega/update/usb/UsbService$1;->this$0:Lcom/mega/update/usb/UsbService;

    invoke-static {v2}, Lcom/mega/update/usb/UsbService;->access$500(Lcom/mega/update/usb/UsbService;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mega/update/util/LogUtil;->logService(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    :goto_1
    return-void
.end method

.method public detached()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 110
    invoke-static {}, Lcom/mega/update/usb/UsbService;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "detached mCallbacks = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mega/update/usb/UsbService$1;->this$0:Lcom/mega/update/usb/UsbService;

    invoke-static {v2}, Lcom/mega/update/usb/UsbService;->access$700(Lcom/mega/update/usb/UsbService;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mega/update/util/LogUtil;->logService(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    return-void
.end method

.method public subcribe(Lcom/mega/update/usb/IUsbCallback;)V
    .locals 4
    .param p1, "callback"    # Lcom/mega/update/usb/IUsbCallback;

    .line 119
    invoke-static {}, Lcom/mega/update/usb/UsbService;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "subcribe "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mega/update/util/LogUtil;->logService(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    if-eqz p1, :cond_0

    .line 121
    iget-object v0, p0, Lcom/mega/update/usb/UsbService$1;->this$0:Lcom/mega/update/usb/UsbService;

    invoke-static {v0}, Lcom/mega/update/usb/UsbService;->access$700(Lcom/mega/update/usb/UsbService;)Ljava/util/Map;

    move-result-object v0

    invoke-static {}, Lcom/mega/update/usb/UsbService$1;->getCallingPid()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/mega/update/usb/UsbService$DeathHolder;

    iget-object v3, p0, Lcom/mega/update/usb/UsbService$1;->this$0:Lcom/mega/update/usb/UsbService;

    invoke-direct {v2, v3, p1}, Lcom/mega/update/usb/UsbService$DeathHolder;-><init>(Lcom/mega/update/usb/UsbService;Lcom/mega/update/usb/IUsbCallback;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    iget-object v0, p0, Lcom/mega/update/usb/UsbService$1;->this$0:Lcom/mega/update/usb/UsbService;

    invoke-static {v0}, Lcom/mega/update/usb/UsbService;->access$800(Lcom/mega/update/usb/UsbService;)V

    .line 124
    :cond_0
    return-void
.end method

.method public triggerUpgrade()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 138
    invoke-static {}, Lcom/mega/update/usb/UsbService;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "triggerUpgrade "

    invoke-static {v0, v1}, Lcom/mega/update/util/LogUtil;->logService(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    iget-object v0, p0, Lcom/mega/update/usb/UsbService$1;->this$0:Lcom/mega/update/usb/UsbService;

    invoke-static {v0}, Lcom/mega/update/usb/UsbService;->access$900(Lcom/mega/update/usb/UsbService;)Lcom/mega/update/service/IUpdateService;

    .line 148
    return-void
.end method

.method public unsubcribe()V
    .locals 3

    .line 128
    invoke-static {}, Lcom/mega/update/usb/UsbService;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "unsubcribe "

    invoke-static {v0, v1}, Lcom/mega/update/util/LogUtil;->logService(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    iget-object v0, p0, Lcom/mega/update/usb/UsbService$1;->this$0:Lcom/mega/update/usb/UsbService;

    invoke-static {v0}, Lcom/mega/update/usb/UsbService;->access$700(Lcom/mega/update/usb/UsbService;)Ljava/util/Map;

    move-result-object v0

    invoke-static {}, Lcom/mega/update/usb/UsbService$1;->getCallingPid()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/mega/update/usb/UsbService$1;->this$0:Lcom/mega/update/usb/UsbService;

    invoke-static {v0}, Lcom/mega/update/usb/UsbService;->access$700(Lcom/mega/update/usb/UsbService;)Ljava/util/Map;

    move-result-object v0

    invoke-static {}, Lcom/mega/update/usb/UsbService$1;->getCallingPid()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mega/update/usb/UsbService$DeathHolder;

    .line 131
    .local v0, "deathHolder":Lcom/mega/update/usb/UsbService$DeathHolder;
    invoke-virtual {v0}, Lcom/mega/update/usb/UsbService$DeathHolder;->getCallback()Lcom/mega/update/usb/IUsbCallback;

    move-result-object v1

    invoke-interface {v1}, Lcom/mega/update/usb/IUsbCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 132
    iget-object v1, p0, Lcom/mega/update/usb/UsbService$1;->this$0:Lcom/mega/update/usb/UsbService;

    invoke-static {v1}, Lcom/mega/update/usb/UsbService;->access$700(Lcom/mega/update/usb/UsbService;)Ljava/util/Map;

    move-result-object v1

    invoke-static {}, Lcom/mega/update/usb/UsbService$1;->getCallingPid()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    return-void
.end method
