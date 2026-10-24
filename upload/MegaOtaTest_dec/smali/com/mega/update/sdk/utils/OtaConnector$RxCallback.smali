.class public Lcom/mega/update/sdk/utils/OtaConnector$RxCallback;
.super Lvendor/mega/message_center/V1_0/IMsgRxCallback$Stub;
.source "OtaConnector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mega/update/sdk/utils/OtaConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RxCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mega/update/sdk/utils/OtaConnector;


# direct methods
.method public constructor <init>(Lcom/mega/update/sdk/utils/OtaConnector;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mega/update/sdk/utils/OtaConnector;

    .line 28
    iput-object p1, p0, Lcom/mega/update/sdk/utils/OtaConnector$RxCallback;->this$0:Lcom/mega/update/sdk/utils/OtaConnector;

    invoke-direct {p0}, Lvendor/mega/message_center/V1_0/IMsgRxCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 2
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

    .line 31
    .local p2, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onReceive topic: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", data = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/mega/update/sdk/utils/OtaUtil;->getStringFromArrayList(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OtaConnector"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    iget-object v0, p0, Lcom/mega/update/sdk/utils/OtaConnector$RxCallback;->this$0:Lcom/mega/update/sdk/utils/OtaConnector;

    invoke-static {v0}, Lcom/mega/update/sdk/utils/OtaConnector;->access$000(Lcom/mega/update/sdk/utils/OtaConnector;)Ljava/util/Hashtable;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 33
    iget-object v0, p0, Lcom/mega/update/sdk/utils/OtaConnector$RxCallback;->this$0:Lcom/mega/update/sdk/utils/OtaConnector;

    invoke-static {v0}, Lcom/mega/update/sdk/utils/OtaConnector;->access$000(Lcom/mega/update/sdk/utils/OtaConnector;)Ljava/util/Hashtable;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mega/update/sdk/utils/OtaConnector$Callback;

    .line 34
    .local v1, "callback":Lcom/mega/update/sdk/utils/OtaConnector$Callback;
    invoke-interface {v1, p1, p2}, Lcom/mega/update/sdk/utils/OtaConnector$Callback;->onReceive(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 35
    .end local v1    # "callback":Lcom/mega/update/sdk/utils/OtaConnector$Callback;
    goto :goto_0

    .line 37
    :cond_0
    return-void
.end method
