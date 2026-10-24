.class Lcom/mega/update/usb/UsbReceiver$1;
.super Ljava/lang/Object;
.source "UsbReceiver.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mega/update/usb/UsbReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mega/update/usb/UsbReceiver;


# direct methods
.method constructor <init>(Lcom/mega/update/usb/UsbReceiver;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mega/update/usb/UsbReceiver;

    .line 69
    iput-object p1, p0, Lcom/mega/update/usb/UsbReceiver$1;->this$0:Lcom/mega/update/usb/UsbReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .line 72
    iget-object v0, p0, Lcom/mega/update/usb/UsbReceiver$1;->this$0:Lcom/mega/update/usb/UsbReceiver;

    invoke-static {p2}, Lcom/mega/update/usb/IUsbService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mega/update/usb/IUsbService;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mega/update/usb/UsbReceiver;->access$002(Lcom/mega/update/usb/UsbReceiver;Lcom/mega/update/usb/IUsbService;)Lcom/mega/update/usb/IUsbService;

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mUsbService = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mega/update/usb/UsbReceiver$1;->this$0:Lcom/mega/update/usb/UsbReceiver;

    invoke-static {v1}, Lcom/mega/update/usb/UsbReceiver;->access$000(Lcom/mega/update/usb/UsbReceiver;)Lcom/mega/update/usb/IUsbService;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UsbReceiver"

    invoke-static {v1, v0}, Lcom/mega/update/util/LogUtil;->logService(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    iget-object v0, p0, Lcom/mega/update/usb/UsbReceiver$1;->this$0:Lcom/mega/update/usb/UsbReceiver;

    invoke-static {v0}, Lcom/mega/update/usb/UsbReceiver;->access$000(Lcom/mega/update/usb/UsbReceiver;)Lcom/mega/update/usb/IUsbService;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mega/update/usb/UsbReceiver$1;->this$0:Lcom/mega/update/usb/UsbReceiver;

    invoke-static {v0}, Lcom/mega/update/usb/UsbReceiver;->access$100(Lcom/mega/update/usb/UsbReceiver;)V

    .line 75
    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 79
    iget-object v0, p0, Lcom/mega/update/usb/UsbReceiver$1;->this$0:Lcom/mega/update/usb/UsbReceiver;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/mega/update/usb/UsbReceiver;->access$002(Lcom/mega/update/usb/UsbReceiver;Lcom/mega/update/usb/IUsbService;)Lcom/mega/update/usb/IUsbService;

    .line 80
    return-void
.end method
