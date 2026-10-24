.class public Lcom/mega/update/rpc/MegaConnector$RxCallback;
.super Lvendor/mega/message_center/V1_0/IMsgRxCallback$Stub;
.source "MegaConnector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mega/update/rpc/MegaConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RxCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mega/update/rpc/MegaConnector;


# direct methods
.method public constructor <init>(Lcom/mega/update/rpc/MegaConnector;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mega/update/rpc/MegaConnector;

    .line 39
    iput-object p1, p0, Lcom/mega/update/rpc/MegaConnector$RxCallback;->this$0:Lcom/mega/update/rpc/MegaConnector;

    invoke-direct {p0}, Lvendor/mega/message_center/V1_0/IMsgRxCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 3
    .param p1, "topic"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    .line 42
    .local p2, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<<<< MsgCenter, topic: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", data = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/String;

    invoke-static {p2}, Lcom/google/common/primitives/Bytes;->toArray(Ljava/util/Collection;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MegaConnector"

    invoke-static {v1, v0}, Lcom/mega/update/util/LogUtil;->logMsg(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    iget-object v0, p0, Lcom/mega/update/rpc/MegaConnector$RxCallback;->this$0:Lcom/mega/update/rpc/MegaConnector;

    invoke-static {v0}, Lcom/mega/update/rpc/MegaConnector;->access$100(Lcom/mega/update/rpc/MegaConnector;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 44
    :try_start_0
    iget-object v1, p0, Lcom/mega/update/rpc/MegaConnector$RxCallback;->this$0:Lcom/mega/update/rpc/MegaConnector;

    invoke-static {v1}, Lcom/mega/update/rpc/MegaConnector;->access$200(Lcom/mega/update/rpc/MegaConnector;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 45
    iget-object v1, p0, Lcom/mega/update/rpc/MegaConnector$RxCallback;->this$0:Lcom/mega/update/rpc/MegaConnector;

    invoke-static {v1}, Lcom/mega/update/rpc/MegaConnector;->access$200(Lcom/mega/update/rpc/MegaConnector;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mega/update/rpc/MegaConnector$Callback;

    .line 46
    .local v2, "callback":Lcom/mega/update/rpc/MegaConnector$Callback;
    invoke-interface {v2, p1, p2}, Lcom/mega/update/rpc/MegaConnector$Callback;->onReceive(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 47
    .end local v2    # "callback":Lcom/mega/update/rpc/MegaConnector$Callback;
    goto :goto_0

    .line 49
    :cond_0
    monitor-exit v0

    .line 50
    return-void

    .line 49
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
