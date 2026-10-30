.class Lcom/mega/update/usb/UsbDialog$1;
.super Lcom/mega/update/usb/IUsbCallback$Stub;
.source "UsbDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mega/update/usb/UsbDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mega/update/usb/UsbDialog;


# direct methods
.method constructor <init>(Lcom/mega/update/usb/UsbDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mega/update/usb/UsbDialog;

    .line 35
    iput-object p1, p0, Lcom/mega/update/usb/UsbDialog$1;->this$0:Lcom/mega/update/usb/UsbDialog;

    invoke-direct {p0}, Lcom/mega/update/usb/IUsbCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(I)V
    .locals 6
    .param p1, "code"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onError "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UsbDialog"

    invoke-static {v1, v0}, Lcom/mega/update/util/LogUtil;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 47
    return-void

    .line 48
    :cond_0
    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, -0x1

    const v3, 0x7f040006

    if-ne p1, v0, :cond_1

    .line 49
    iget-object v0, p0, Lcom/mega/update/usb/UsbDialog$1;->this$0:Lcom/mega/update/usb/UsbDialog;

    invoke-virtual {v0}, Lcom/mega/update/usb/UsbDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f04000a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/mega/update/usb/UsbDialog$1;->this$0:Lcom/mega/update/usb/UsbDialog;

    invoke-virtual {v5}, Lcom/mega/update/usb/UsbDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v4, v2, v3}, Lcom/mega/update/usb/UsbDialog;->updateDialog(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    .line 50
    :cond_1
    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    .line 51
    iget-object v0, p0, Lcom/mega/update/usb/UsbDialog$1;->this$0:Lcom/mega/update/usb/UsbDialog;

    invoke-virtual {v0}, Lcom/mega/update/usb/UsbDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f04000d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/mega/update/usb/UsbDialog$1;->this$0:Lcom/mega/update/usb/UsbDialog;

    invoke-virtual {v5}, Lcom/mega/update/usb/UsbDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v4, v2, v3}, Lcom/mega/update/usb/UsbDialog;->updateDialog(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    .line 52
    :cond_2
    const/4 v0, 0x5

    if-ne p1, v0, :cond_3

    .line 53
    iget-object v0, p0, Lcom/mega/update/usb/UsbDialog$1;->this$0:Lcom/mega/update/usb/UsbDialog;

    invoke-virtual {v0}, Lcom/mega/update/usb/UsbDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f040007

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/mega/update/usb/UsbDialog$1;->this$0:Lcom/mega/update/usb/UsbDialog;

    invoke-virtual {v5}, Lcom/mega/update/usb/UsbDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v4, v2, v3}, Lcom/mega/update/usb/UsbDialog;->updateDialog(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    .line 54
    :cond_3
    if-ne p1, v1, :cond_4

    .line 55
    iget-object v0, p0, Lcom/mega/update/usb/UsbDialog$1;->this$0:Lcom/mega/update/usb/UsbDialog;

    invoke-virtual {v0}, Lcom/mega/update/usb/UsbDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f04000b

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x64

    iget-object v5, p0, Lcom/mega/update/usb/UsbDialog$1;->this$0:Lcom/mega/update/usb/UsbDialog;

    invoke-virtual {v5}, Lcom/mega/update/usb/UsbDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v4, v3}, Lcom/mega/update/usb/UsbDialog;->updateDialog(Ljava/lang/String;ILjava/lang/String;)V

    .line 57
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/mega/update/usb/UsbDialog$1;->this$0:Lcom/mega/update/usb/UsbDialog;

    invoke-static {v0, v1}, Lcom/mega/update/usb/UsbDialog;->access$102(Lcom/mega/update/usb/UsbDialog;Z)Z

    .line 58
    return-void
.end method

.method public onProgress(I)V
    .locals 3
    .param p1, "pg"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 38
    iget-object v0, p0, Lcom/mega/update/usb/UsbDialog$1;->this$0:Lcom/mega/update/usb/UsbDialog;

    invoke-static {v0}, Lcom/mega/update/usb/UsbDialog;->access$000(Lcom/mega/update/usb/UsbDialog;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/mega/update/usb/UsbDialog$1;->this$0:Lcom/mega/update/usb/UsbDialog;

    invoke-virtual {v0}, Lcom/mega/update/usb/UsbDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f040003

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/mega/update/usb/UsbDialog$1;->this$0:Lcom/mega/update/usb/UsbDialog;

    invoke-virtual {v0}, Lcom/mega/update/usb/UsbDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f04000c

    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 39
    .local v0, "title":Ljava/lang/String;
    iget-object v1, p0, Lcom/mega/update/usb/UsbDialog$1;->this$0:Lcom/mega/update/usb/UsbDialog;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, p1, v2}, Lcom/mega/update/usb/UsbDialog;->updateDialog(Ljava/lang/String;ILjava/lang/String;)V

    .line 40
    return-void
.end method

.method public onState(I)V
    .locals 5
    .param p1, "state"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onState "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UsbDialog"

    invoke-static {v1, v0}, Lcom/mega/update/util/LogUtil;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    iget-object v0, p0, Lcom/mega/update/usb/UsbDialog$1;->this$0:Lcom/mega/update/usb/UsbDialog;

    invoke-static {v0, p1}, Lcom/mega/update/usb/UsbDialog;->access$002(Lcom/mega/update/usb/UsbDialog;I)I

    .line 64
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 65
    iget-object v1, p0, Lcom/mega/update/usb/UsbDialog$1;->this$0:Lcom/mega/update/usb/UsbDialog;

    invoke-virtual {v1}, Lcom/mega/update/usb/UsbDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f040005

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3, v0}, Lcom/mega/update/usb/UsbDialog;->updateDialog(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    .line 66
    :cond_0
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, v1, :cond_1

    .line 67
    iget-object v1, p0, Lcom/mega/update/usb/UsbDialog$1;->this$0:Lcom/mega/update/usb/UsbDialog;

    invoke-virtual {v1}, Lcom/mega/update/usb/UsbDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f040002

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v2, v0}, Lcom/mega/update/usb/UsbDialog;->updateDialog(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    .line 68
    :cond_1
    const/4 v1, 0x2

    if-ne p1, v1, :cond_2

    .line 69
    iget-object v1, p0, Lcom/mega/update/usb/UsbDialog$1;->this$0:Lcom/mega/update/usb/UsbDialog;

    invoke-virtual {v1}, Lcom/mega/update/usb/UsbDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f040003

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v2, v0}, Lcom/mega/update/usb/UsbDialog;->updateDialog(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    .line 70
    :cond_2
    const/4 v1, 0x3

    if-ne p1, v1, :cond_3

    .line 71
    iget-object v1, p0, Lcom/mega/update/usb/UsbDialog$1;->this$0:Lcom/mega/update/usb/UsbDialog;

    invoke-virtual {v1}, Lcom/mega/update/usb/UsbDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f04000c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v2, v0}, Lcom/mega/update/usb/UsbDialog;->updateDialog(Ljava/lang/String;ILjava/lang/String;)V

    .line 73
    :cond_3
    :goto_0
    return-void
.end method
