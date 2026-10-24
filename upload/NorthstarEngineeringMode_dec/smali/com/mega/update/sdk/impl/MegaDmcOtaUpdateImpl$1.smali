.class Lcom/mega/update/sdk/impl/MegaDmcOtaUpdateImpl$1;
.super Lcom/mega/update/service/IUpdateCallback$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mega/update/sdk/impl/MegaDmcOtaUpdateImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mega/update/sdk/impl/MegaDmcOtaUpdateImpl;


# direct methods
.method public constructor <init>(Lcom/mega/update/sdk/impl/MegaDmcOtaUpdateImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/mega/update/sdk/impl/MegaDmcOtaUpdateImpl$1;->this$0:Lcom/mega/update/sdk/impl/MegaDmcOtaUpdateImpl;

    invoke-direct {p0}, Lcom/mega/update/service/IUpdateCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onStatusUpdate(Lcom/mega/update/service/UpdateState;)V
    .locals 3

    iget-object p0, p0, Lcom/mega/update/sdk/impl/MegaDmcOtaUpdateImpl$1;->this$0:Lcom/mega/update/sdk/impl/MegaDmcOtaUpdateImpl;

    invoke-static {p0}, Lcom/mega/update/sdk/impl/MegaDmcOtaUpdateImpl;->access$000(Lcom/mega/update/sdk/impl/MegaDmcOtaUpdateImpl;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mega/update/sdk/MegaOtaUpdateInterface$OtaUpdateStatusCallback;

    invoke-virtual {p1}, Lcom/mega/update/service/UpdateState;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/mega/update/service/UpdateState;->getProgress()I

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/mega/update/service/UpdateState;->getProgress()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/mega/update/sdk/MegaOtaUpdateInterface$OtaUpdateStatusCallback;->otaUpdateProgress(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/mega/update/service/UpdateState;->getErrorCode()I

    move-result v1

    invoke-virtual {p1}, Lcom/mega/update/service/UpdateState;->getState()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/mega/update/sdk/MegaOtaUpdateInterface$OtaUpdateStatusCallback;->otaUpdateStatus(II)V

    goto :goto_0

    :cond_2
    return-void
.end method
