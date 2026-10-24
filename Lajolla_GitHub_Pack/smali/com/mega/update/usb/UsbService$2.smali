.class Lcom/mega/update/usb/UsbService$2;
.super Lcom/mega/update/service/IUpdateCallback$Stub;
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

    .line 151
    iput-object p1, p0, Lcom/mega/update/usb/UsbService$2;->this$0:Lcom/mega/update/usb/UsbService;

    invoke-direct {p0}, Lcom/mega/update/service/IUpdateCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onStatusUpdate(Lcom/mega/update/service/UpdateState;)V
    .locals 5
    .param p1, "state"    # Lcom/mega/update/service/UpdateState;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 154
    invoke-virtual {p1}, Lcom/mega/update/service/UpdateState;->getErrorCode()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 155
    iget-object v0, p0, Lcom/mega/update/usb/UsbService$2;->this$0:Lcom/mega/update/usb/UsbService;

    invoke-static {v0}, Lcom/mega/update/usb/UsbService;->access$700(Lcom/mega/update/usb/UsbService;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mega/update/usb/UsbService$DeathHolder;

    .line 156
    .local v2, "holder":Lcom/mega/update/usb/UsbService$DeathHolder;
    invoke-virtual {v2}, Lcom/mega/update/usb/UsbService$DeathHolder;->getCallback()Lcom/mega/update/usb/IUsbCallback;

    move-result-object v3

    const/4 v4, 0x2

    invoke-interface {v3, v4}, Lcom/mega/update/usb/IUsbCallback;->onError(I)V

    .line 157
    .end local v2    # "holder":Lcom/mega/update/usb/UsbService$DeathHolder;
    goto :goto_0

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/mega/update/usb/UsbService$2;->this$0:Lcom/mega/update/usb/UsbService;

    invoke-static {v0}, Lcom/mega/update/usb/UsbService;->access$1000(Lcom/mega/update/usb/UsbService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 160
    :cond_1
    invoke-virtual {p1}, Lcom/mega/update/service/UpdateState;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 161
    iget-object v0, p0, Lcom/mega/update/usb/UsbService$2;->this$0:Lcom/mega/update/usb/UsbService;

    invoke-static {v0}, Lcom/mega/update/usb/UsbService;->access$700(Lcom/mega/update/usb/UsbService;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mega/update/usb/UsbService$DeathHolder;

    .line 162
    .restart local v2    # "holder":Lcom/mega/update/usb/UsbService$DeathHolder;
    invoke-virtual {v2}, Lcom/mega/update/usb/UsbService$DeathHolder;->getCallback()Lcom/mega/update/usb/IUsbCallback;

    move-result-object v3

    invoke-virtual {p1}, Lcom/mega/update/service/UpdateState;->getProgress()I

    move-result v4

    invoke-interface {v3, v4}, Lcom/mega/update/usb/IUsbCallback;->onProgress(I)V

    .line 163
    .end local v2    # "holder":Lcom/mega/update/usb/UsbService$DeathHolder;
    goto :goto_1

    .line 165
    :cond_2
    invoke-virtual {p1}, Lcom/mega/update/service/UpdateState;->getState()I

    move-result v0

    const/16 v2, 0x18

    if-ne v0, v2, :cond_4

    .line 166
    iget-object v0, p0, Lcom/mega/update/usb/UsbService$2;->this$0:Lcom/mega/update/usb/UsbService;

    invoke-static {v0}, Lcom/mega/update/usb/UsbService;->access$700(Lcom/mega/update/usb/UsbService;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mega/update/usb/UsbService$DeathHolder;

    .line 167
    .restart local v2    # "holder":Lcom/mega/update/usb/UsbService$DeathHolder;
    invoke-virtual {v2}, Lcom/mega/update/usb/UsbService$DeathHolder;->getCallback()Lcom/mega/update/usb/IUsbCallback;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Lcom/mega/update/usb/IUsbCallback;->onError(I)V

    .line 168
    .end local v2    # "holder":Lcom/mega/update/usb/UsbService$DeathHolder;
    goto :goto_2

    .line 169
    :cond_3
    iget-object v0, p0, Lcom/mega/update/usb/UsbService$2;->this$0:Lcom/mega/update/usb/UsbService;

    invoke-static {v0}, Lcom/mega/update/usb/UsbService;->access$1000(Lcom/mega/update/usb/UsbService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 171
    :cond_4
    return-void
.end method
