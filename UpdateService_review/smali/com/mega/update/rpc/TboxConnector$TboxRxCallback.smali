.class public Lcom/mega/update/rpc/TboxConnector$TboxRxCallback;
.super Lvendor/mega/tboxprotocol/V1_0/ITboxRxCallback$Stub;
.source "TboxConnector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mega/update/rpc/TboxConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TboxRxCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mega/update/rpc/TboxConnector;


# direct methods
.method public constructor <init>(Lcom/mega/update/rpc/TboxConnector;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mega/update/rpc/TboxConnector;

    .line 29
    iput-object p1, p0, Lcom/mega/update/rpc/TboxConnector$TboxRxCallback;->this$0:Lcom/mega/update/rpc/TboxConnector;

    invoke-direct {p0}, Lvendor/mega/tboxprotocol/V1_0/ITboxRxCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 3
    .param p1, "eventID"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    .line 32
    .local p2, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-static {}, Lcom/mega/update/rpc/TboxConnector;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<<<< received from tbox server data size:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " data to String:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    invoke-virtual {p2}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " eventIDStr="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 32
    invoke-static {v0, v1}, Lcom/mega/update/util/LogUtil;->logMsg(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    iget-object v0, p0, Lcom/mega/update/rpc/TboxConnector$TboxRxCallback;->this$0:Lcom/mega/update/rpc/TboxConnector;

    invoke-static {v0}, Lcom/mega/update/rpc/TboxConnector;->access$100(Lcom/mega/update/rpc/TboxConnector;)Ljava/util/Hashtable;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mega/update/rpc/TboxConnector$Callback;

    .line 35
    .local v0, "cb":Lcom/mega/update/rpc/TboxConnector$Callback;
    iget-object v1, p0, Lcom/mega/update/rpc/TboxConnector$TboxRxCallback;->this$0:Lcom/mega/update/rpc/TboxConnector;

    invoke-static {v1}, Lcom/mega/update/rpc/TboxConnector;->access$100(Lcom/mega/update/rpc/TboxConnector;)Ljava/util/Hashtable;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 36
    iget-object v1, p0, Lcom/mega/update/rpc/TboxConnector$TboxRxCallback;->this$0:Lcom/mega/update/rpc/TboxConnector;

    invoke-static {v1}, Lcom/mega/update/rpc/TboxConnector;->access$100(Lcom/mega/update/rpc/TboxConnector;)Ljava/util/Hashtable;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mega/update/rpc/TboxConnector$Callback;

    invoke-interface {v1, p1, p2}, Lcom/mega/update/rpc/TboxConnector$Callback;->onReceive(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 38
    :cond_0
    return-void
.end method
