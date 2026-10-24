.class Lcom/mega/ota/test/UpdateDialog$1;
.super Ljava/lang/Object;
.source "UpdateDialog.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mega/ota/test/UpdateDialog;
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

    .line 113
    iput-object p1, p0, Lcom/mega/ota/test/UpdateDialog$1;->this$0:Lcom/mega/ota/test/UpdateDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .line 116
    iget-object v0, p0, Lcom/mega/ota/test/UpdateDialog$1;->this$0:Lcom/mega/ota/test/UpdateDialog;

    invoke-static {p2}, Lcom/mega/ota/test/IProgressUpdate$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mega/ota/test/IProgressUpdate;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mega/ota/test/UpdateDialog;->access$002(Lcom/mega/ota/test/UpdateDialog;Lcom/mega/ota/test/IProgressUpdate;)Lcom/mega/ota/test/IProgressUpdate;

    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mega_ota_2.0 onServiceConnected name = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UpdateDialog"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mega_ota_2.0 onServiceDisconnected name = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UpdateDialog"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    iget-object v0, p0, Lcom/mega/ota/test/UpdateDialog$1;->this$0:Lcom/mega/ota/test/UpdateDialog;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/mega/ota/test/UpdateDialog;->access$002(Lcom/mega/ota/test/UpdateDialog;Lcom/mega/ota/test/IProgressUpdate;)Lcom/mega/ota/test/IProgressUpdate;

    .line 124
    return-void
.end method
