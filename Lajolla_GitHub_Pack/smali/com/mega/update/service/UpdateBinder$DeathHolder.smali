.class Lcom/mega/update/service/UpdateBinder$DeathHolder;
.super Ljava/lang/Object;
.source "UpdateBinder.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mega/update/service/UpdateBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeathHolder"
.end annotation


# instance fields
.field private mCallback:Lcom/mega/update/service/IUpdateCallback;

.field final synthetic this$0:Lcom/mega/update/service/UpdateBinder;


# direct methods
.method public constructor <init>(Lcom/mega/update/service/UpdateBinder;Lcom/mega/update/service/IUpdateCallback;)V
    .locals 0
    .param p2, "callback"    # Lcom/mega/update/service/IUpdateCallback;

    .line 43
    iput-object p1, p0, Lcom/mega/update/service/UpdateBinder$DeathHolder;->this$0:Lcom/mega/update/service/UpdateBinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/mega/update/service/UpdateBinder$DeathHolder;->mCallback:Lcom/mega/update/service/IUpdateCallback;

    .line 44
    iput-object p2, p0, Lcom/mega/update/service/UpdateBinder$DeathHolder;->mCallback:Lcom/mega/update/service/IUpdateCallback;

    .line 45
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 4

    .line 49
    iget-object v0, p0, Lcom/mega/update/service/UpdateBinder$DeathHolder;->this$0:Lcom/mega/update/service/UpdateBinder;

    invoke-static {v0}, Lcom/mega/update/service/UpdateBinder;->access$000(Lcom/mega/update/service/UpdateBinder;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 50
    :try_start_0
    invoke-static {}, Lcom/mega/update/service/UpdateBinder;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/mega/update/service/UpdateBinder$DeathHolder;->mCallback:Lcom/mega/update/service/IUpdateCallback;

    invoke-interface {v3}, Lcom/mega/update/service/IUpdateCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "Died"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mega/update/util/LogUtil;->logService(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    iget-object v1, p0, Lcom/mega/update/service/UpdateBinder$DeathHolder;->mCallback:Lcom/mega/update/service/IUpdateCallback;

    invoke-interface {v1}, Lcom/mega/update/service/IUpdateCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, p0, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 52
    iget-object v1, p0, Lcom/mega/update/service/UpdateBinder$DeathHolder;->this$0:Lcom/mega/update/service/UpdateBinder;

    invoke-static {v1}, Lcom/mega/update/service/UpdateBinder;->access$200(Lcom/mega/update/service/UpdateBinder;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, p0, Lcom/mega/update/service/UpdateBinder$DeathHolder;->mCallback:Lcom/mega/update/service/IUpdateCallback;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    monitor-exit v0

    .line 54
    return-void

    .line 53
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
