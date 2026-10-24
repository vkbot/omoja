.class Lcom/mega/update/sdk/impl/MegaDmcOtaUpdateImpl$1;
.super Lcom/mega/update/service/IUpdateCallback$Stub;
.source "MegaDmcOtaUpdateImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mega/update/sdk/impl/MegaDmcOtaUpdateImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mega/update/sdk/impl/MegaDmcOtaUpdateImpl;


# direct methods
.method constructor <init>(Lcom/mega/update/sdk/impl/MegaDmcOtaUpdateImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mega/update/sdk/impl/MegaDmcOtaUpdateImpl;

    .line 55
    iput-object p1, p0, Lcom/mega/update/sdk/impl/MegaDmcOtaUpdateImpl$1;->this$0:Lcom/mega/update/sdk/impl/MegaDmcOtaUpdateImpl;

    invoke-direct {p0}, Lcom/mega/update/service/IUpdateCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onStatusUpdate(Lcom/mega/update/service/UpdateState;)V
    .locals 6
    .param p1, "updateState"    # Lcom/mega/update/service/UpdateState;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 58
    iget-object v0, p0, Lcom/mega/update/sdk/impl/MegaDmcOtaUpdateImpl$1;->this$0:Lcom/mega/update/sdk/impl/MegaDmcOtaUpdateImpl;

    invoke-static {v0}, Lcom/mega/update/sdk/impl/MegaDmcOtaUpdateImpl;->access$000(Lcom/mega/update/sdk/impl/MegaDmcOtaUpdateImpl;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mega/update/sdk/MegaOtaUpdateInterface$OtaUpdateStatusCallback;

    .line 59
    .local v1, "callback":Lcom/mega/update/sdk/MegaOtaUpdateInterface$OtaUpdateStatusCallback;
    invoke-virtual {p1}, Lcom/mega/update/service/UpdateState;->isRunning()Z

    move-result v2

    const/4 v3, 0x0

    const-string v4, "DMC"

    if-eqz v2, :cond_1

    .line 60
    invoke-virtual {p1}, Lcom/mega/update/service/UpdateState;->getProgress()I

    move-result v2

    if-nez v2, :cond_0

    return-void

    .line 61
    :cond_0
    invoke-virtual {p1}, Lcom/mega/update/service/UpdateState;->getProgress()I

    move-result v2

    invoke-interface {v1, v4, v3, v2}, Lcom/mega/update/sdk/MegaOtaUpdateInterface$OtaUpdateStatusCallback;->otaUpdateProgress(Ljava/lang/String;II)V

    goto :goto_1

    .line 63
    :cond_1
    invoke-virtual {p1}, Lcom/mega/update/service/UpdateState;->getErrorCode()I

    move-result v2

    invoke-virtual {p1}, Lcom/mega/update/service/UpdateState;->getState()I

    move-result v5

    invoke-interface {v1, v4, v3, v2, v5}, Lcom/mega/update/sdk/MegaOtaUpdateInterface$OtaUpdateStatusCallback;->otaUpdateStatus(Ljava/lang/String;III)V

    .line 65
    .end local v1    # "callback":Lcom/mega/update/sdk/MegaOtaUpdateInterface$OtaUpdateStatusCallback;
    :goto_1
    goto :goto_0

    .line 66
    :cond_2
    return-void
.end method
