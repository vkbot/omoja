.class Lcom/mega/update/sdk/impl/MegaDmcOtaUpdateImpl$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mega/update/sdk/impl/MegaDmcOtaUpdateImpl;->startConnectThread()V
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

    iput-object p1, p0, Lcom/mega/update/sdk/impl/MegaDmcOtaUpdateImpl$2;->this$0:Lcom/mega/update/sdk/impl/MegaDmcOtaUpdateImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/mega/update/sdk/impl/MegaDmcOtaUpdateImpl$2;->this$0:Lcom/mega/update/sdk/impl/MegaDmcOtaUpdateImpl;

    invoke-static {v0}, Lcom/mega/update/sdk/impl/MegaDmcOtaUpdateImpl;->access$100(Lcom/mega/update/sdk/impl/MegaDmcOtaUpdateImpl;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    :goto_0
    const-wide/16 v1, 0x3e8

    const-string v3, "MegaDmcOtaUpdateImpl"

    if-nez v0, :cond_1

    const-string/jumbo v4, "try to get update service..."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/mega/update/sdk/impl/MegaDmcOtaUpdateImpl$2;->this$0:Lcom/mega/update/sdk/impl/MegaDmcOtaUpdateImpl;

    const-string v4, "mega.ota.update"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/mega/update/service/IUpdateService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mega/update/service/IUpdateService;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mega/update/sdk/impl/MegaDmcOtaUpdateImpl;->access$202(Lcom/mega/update/sdk/impl/MegaDmcOtaUpdateImpl;Lcom/mega/update/service/IUpdateService;)Lcom/mega/update/service/IUpdateService;

    iget-object v3, p0, Lcom/mega/update/sdk/impl/MegaDmcOtaUpdateImpl$2;->this$0:Lcom/mega/update/sdk/impl/MegaDmcOtaUpdateImpl;

    invoke-static {v3}, Lcom/mega/update/sdk/impl/MegaDmcOtaUpdateImpl;->access$200(Lcom/mega/update/sdk/impl/MegaDmcOtaUpdateImpl;)Lcom/mega/update/service/IUpdateService;

    move-result-object v3

    if-nez v3, :cond_0

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/mega/update/sdk/impl/MegaDmcOtaUpdateImpl$2;->this$0:Lcom/mega/update/sdk/impl/MegaDmcOtaUpdateImpl;

    invoke-static {v1}, Lcom/mega/update/sdk/impl/MegaDmcOtaUpdateImpl;->access$200(Lcom/mega/update/sdk/impl/MegaDmcOtaUpdateImpl;)Lcom/mega/update/service/IUpdateService;

    move-result-object v1

    iget-object v2, p0, Lcom/mega/update/sdk/impl/MegaDmcOtaUpdateImpl$2;->this$0:Lcom/mega/update/sdk/impl/MegaDmcOtaUpdateImpl;

    invoke-static {v2}, Lcom/mega/update/sdk/impl/MegaDmcOtaUpdateImpl;->access$300(Lcom/mega/update/sdk/impl/MegaDmcOtaUpdateImpl;)Lcom/mega/update/service/IUpdateCallback;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/mega/update/service/IUpdateService;->unbind(Lcom/mega/update/service/IUpdateCallback;)Z

    iget-object v1, p0, Lcom/mega/update/sdk/impl/MegaDmcOtaUpdateImpl$2;->this$0:Lcom/mega/update/sdk/impl/MegaDmcOtaUpdateImpl;

    invoke-static {v1}, Lcom/mega/update/sdk/impl/MegaDmcOtaUpdateImpl;->access$200(Lcom/mega/update/sdk/impl/MegaDmcOtaUpdateImpl;)Lcom/mega/update/service/IUpdateService;

    move-result-object v1

    iget-object v2, p0, Lcom/mega/update/sdk/impl/MegaDmcOtaUpdateImpl$2;->this$0:Lcom/mega/update/sdk/impl/MegaDmcOtaUpdateImpl;

    invoke-static {v2}, Lcom/mega/update/sdk/impl/MegaDmcOtaUpdateImpl;->access$300(Lcom/mega/update/sdk/impl/MegaDmcOtaUpdateImpl;)Lcom/mega/update/service/IUpdateCallback;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/mega/update/service/IUpdateService;->bind(Lcom/mega/update/service/IUpdateCallback;)Z

    move-result v0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "update service connect success!"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    :try_start_2
    iget-object v0, p0, Lcom/mega/update/sdk/impl/MegaDmcOtaUpdateImpl$2;->this$0:Lcom/mega/update/sdk/impl/MegaDmcOtaUpdateImpl;

    invoke-static {v0}, Lcom/mega/update/sdk/impl/MegaDmcOtaUpdateImpl;->access$200(Lcom/mega/update/sdk/impl/MegaDmcOtaUpdateImpl;)Lcom/mega/update/service/IUpdateService;

    move-result-object v0

    invoke-interface {v0}, Lcom/mega/update/service/IUpdateService;->getState()Lcom/mega/update/service/UpdateState;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    if-eqz v0, :cond_2

    const-string/jumbo v0, "update service is ready!"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_3
    iget-object v0, p0, Lcom/mega/update/sdk/impl/MegaDmcOtaUpdateImpl$2;->this$0:Lcom/mega/update/sdk/impl/MegaDmcOtaUpdateImpl;

    invoke-static {v0}, Lcom/mega/update/sdk/impl/MegaDmcOtaUpdateImpl;->access$200(Lcom/mega/update/sdk/impl/MegaDmcOtaUpdateImpl;)Lcom/mega/update/service/IUpdateService;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, p0, Lcom/mega/update/sdk/impl/MegaDmcOtaUpdateImpl$2;->this$0:Lcom/mega/update/sdk/impl/MegaDmcOtaUpdateImpl;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_2
    iget-object v0, p0, Lcom/mega/update/sdk/impl/MegaDmcOtaUpdateImpl$2;->this$0:Lcom/mega/update/sdk/impl/MegaDmcOtaUpdateImpl;

    invoke-static {v0}, Lcom/mega/update/sdk/impl/MegaDmcOtaUpdateImpl;->access$100(Lcom/mega/update/sdk/impl/MegaDmcOtaUpdateImpl;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object p0, p0, Lcom/mega/update/sdk/impl/MegaDmcOtaUpdateImpl$2;->this$0:Lcom/mega/update/sdk/impl/MegaDmcOtaUpdateImpl;

    invoke-static {p0}, Lcom/mega/update/sdk/impl/MegaDmcOtaUpdateImpl;->access$400(Lcom/mega/update/sdk/impl/MegaDmcOtaUpdateImpl;)V

    return-void

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    :try_start_4
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_1

    :catch_4
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method
