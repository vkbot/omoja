.class Lcom/mega/update/usb/UsbService$DeathHolder;
.super Ljava/lang/Object;
.source "UsbService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mega/update/usb/UsbService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeathHolder"
.end annotation


# instance fields
.field private mCallback:Lcom/mega/update/usb/IUsbCallback;

.field final synthetic this$0:Lcom/mega/update/usb/UsbService;


# direct methods
.method public constructor <init>(Lcom/mega/update/usb/UsbService;Lcom/mega/update/usb/IUsbCallback;)V
    .locals 1
    .param p2, "callback"    # Lcom/mega/update/usb/IUsbCallback;

    .line 267
    iput-object p1, p0, Lcom/mega/update/usb/UsbService$DeathHolder;->this$0:Lcom/mega/update/usb/UsbService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 265
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/mega/update/usb/UsbService$DeathHolder;->mCallback:Lcom/mega/update/usb/IUsbCallback;

    .line 268
    iput-object p2, p0, Lcom/mega/update/usb/UsbService$DeathHolder;->mCallback:Lcom/mega/update/usb/IUsbCallback;

    .line 270
    :try_start_0
    invoke-interface {p2}, Lcom/mega/update/usb/IUsbCallback;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, p0, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 273
    goto :goto_0

    .line 271
    :catch_0
    move-exception p1

    .line 272
    .local p1, "e":Landroid/os/RemoteException;
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 274
    .end local p1    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 5

    .line 278
    invoke-static {}, Lcom/mega/update/usb/UsbService;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/mega/update/usb/UsbService$DeathHolder;->mCallback:Lcom/mega/update/usb/IUsbCallback;

    invoke-interface {v2}, Lcom/mega/update/usb/IUsbCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "Died"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mega/update/util/LogUtil;->logService(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    iget-object v0, p0, Lcom/mega/update/usb/UsbService$DeathHolder;->mCallback:Lcom/mega/update/usb/IUsbCallback;

    invoke-interface {v0}, Lcom/mega/update/usb/IUsbCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 280
    iget-object v0, p0, Lcom/mega/update/usb/UsbService$DeathHolder;->this$0:Lcom/mega/update/usb/UsbService;

    invoke-static {v0}, Lcom/mega/update/usb/UsbService;->access$700(Lcom/mega/update/usb/UsbService;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 281
    .local v0, "entries":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/mega/update/usb/UsbService$DeathHolder;>;>;"
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 282
    .local v2, "entry":Ljava/util/Map$Entry;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, p0, :cond_0

    iget-object v3, p0, Lcom/mega/update/usb/UsbService$DeathHolder;->this$0:Lcom/mega/update/usb/UsbService;

    invoke-static {v3}, Lcom/mega/update/usb/UsbService;->access$700(Lcom/mega/update/usb/UsbService;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    .end local v2    # "entry":Ljava/util/Map$Entry;
    :cond_0
    goto :goto_0

    .line 284
    :cond_1
    return-void
.end method

.method public getCallback()Lcom/mega/update/usb/IUsbCallback;
    .locals 1

    .line 287
    iget-object v0, p0, Lcom/mega/update/usb/UsbService$DeathHolder;->mCallback:Lcom/mega/update/usb/IUsbCallback;

    return-object v0
.end method
