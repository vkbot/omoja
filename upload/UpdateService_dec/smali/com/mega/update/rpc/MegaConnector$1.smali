.class Lcom/mega/update/rpc/MegaConnector$1;
.super Lvendor/mega/message_center/V1_0/IMsgRxCallback$Stub;
.source "MegaConnector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mega/update/rpc/MegaConnector;->request(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/util/ArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mega/update/rpc/MegaConnector;

.field final synthetic val$wapper:Lcom/mega/update/rpc/MegaConnector$ValueResult;


# direct methods
.method constructor <init>(Lcom/mega/update/rpc/MegaConnector;Lcom/mega/update/rpc/MegaConnector$ValueResult;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mega/update/rpc/MegaConnector;

    .line 219
    iput-object p1, p0, Lcom/mega/update/rpc/MegaConnector$1;->this$0:Lcom/mega/update/rpc/MegaConnector;

    iput-object p2, p0, Lcom/mega/update/rpc/MegaConnector$1;->val$wapper:Lcom/mega/update/rpc/MegaConnector$ValueResult;

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

    .line 222
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

    .line 223
    iget-object v0, p0, Lcom/mega/update/rpc/MegaConnector$1;->val$wapper:Lcom/mega/update/rpc/MegaConnector$ValueResult;

    iget-object v0, v0, Lcom/mega/update/rpc/MegaConnector$ValueResult;->countDown:Ljava/util/concurrent/CountDownLatch;

    if-nez v0, :cond_0

    .line 224
    const-string v0, "old msg!"

    invoke-static {v1, v0}, Lcom/mega/update/util/LogUtil;->logMsg(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    return-void

    .line 227
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-static {p2}, Lcom/google/common/primitives/Bytes;->toArray(Ljava/util/Collection;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .line 228
    .local v0, "res":Ljava/lang/String;
    iget-object v1, p0, Lcom/mega/update/rpc/MegaConnector$1;->val$wapper:Lcom/mega/update/rpc/MegaConnector$ValueResult;

    iput-object p2, v1, Lcom/mega/update/rpc/MegaConnector$ValueResult;->ret:Ljava/lang/Object;

    .line 229
    iget-object v1, p0, Lcom/mega/update/rpc/MegaConnector$1;->val$wapper:Lcom/mega/update/rpc/MegaConnector$ValueResult;

    iget-object v1, v1, Lcom/mega/update/rpc/MegaConnector$ValueResult;->countDown:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 230
    return-void
.end method
