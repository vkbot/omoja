.class Lcom/mega/ota/test/UpdateDialog$5;
.super Ljava/lang/Object;
.source "UpdateDialog.java"

# interfaces
.implements Lcom/mega/update/sdk/MegaOtaCbfUtil$OnCpListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mega/ota/test/UpdateDialog;->lambda$handleCpFile$1(Landroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mega/ota/test/UpdateDialog;


# direct methods
.method constructor <init>(Lcom/mega/ota/test/UpdateDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mega/ota/test/UpdateDialog;

    .line 1460
    iput-object p1, p0, Lcom/mega/ota/test/UpdateDialog$5;->this$0:Lcom/mega/ota/test/UpdateDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCpProgress(I)V
    .locals 3
    .param p1, "percent"    # I

    .line 1470
    iget-object v0, p0, Lcom/mega/ota/test/UpdateDialog$5;->this$0:Lcom/mega/ota/test/UpdateDialog;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/mega/ota/test/UpdateDialog;->access$1102(Lcom/mega/ota/test/UpdateDialog;I)I

    .line 1471
    iget-object v0, p0, Lcom/mega/ota/test/UpdateDialog$5;->this$0:Lcom/mega/ota/test/UpdateDialog;

    invoke-static {v0}, Lcom/mega/ota/test/UpdateDialog;->access$1600(Lcom/mega/ota/test/UpdateDialog;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/mega/ota/test/UpdateDialog$5;->this$0:Lcom/mega/ota/test/UpdateDialog;

    invoke-static {v1}, Lcom/mega/ota/test/UpdateDialog;->access$1100(Lcom/mega/ota/test/UpdateDialog;)I

    move-result v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1472
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/mega/ota/test/UpdateDialog$5;->this$0:Lcom/mega/ota/test/UpdateDialog;

    invoke-static {v1}, Lcom/mega/ota/test/UpdateDialog;->access$1600(Lcom/mega/ota/test/UpdateDialog;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1473
    return-void
.end method

.method public onCpResult(ZLjava/lang/String;)V
    .locals 0
    .param p1, "success"    # Z
    .param p2, "reason"    # Ljava/lang/String;

    .line 1464
    invoke-static {p1}, Lcom/mega/ota/test/UpdateDialog;->access$1702(Z)Z

    .line 1465
    invoke-static {p2}, Lcom/mega/ota/test/UpdateDialog;->access$1502(Ljava/lang/String;)Ljava/lang/String;

    .line 1466
    return-void
.end method
