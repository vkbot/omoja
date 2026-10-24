.class public Lcom/mega/update/service/MipcReceiver;
.super Lcom/mega/update/service/IUpdateCallback$Stub;
.source "MipcReceiver.java"

# interfaces
.implements Lcom/mega/update/rpc/MegaConnector$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mega/update/service/MipcReceiver$TOPICS;,
        Lcom/mega/update/service/MipcReceiver$TopicResponse;
    }
.end annotation


# instance fields
.field private mIPCHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 2
    .param p1, "handler"    # Landroid/os/Handler;

    .line 90
    invoke-direct {p0}, Lcom/mega/update/service/IUpdateCallback$Stub;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mega/update/service/MipcReceiver;->mIPCHandler:Landroid/os/Handler;

    .line 91
    iput-object p1, p0, Lcom/mega/update/service/MipcReceiver;->mIPCHandler:Landroid/os/Handler;

    .line 92
    invoke-static {}, Lcom/mega/update/rpc/MegaConnector;->self()Lcom/mega/update/rpc/MegaConnector;

    move-result-object v0

    const-string v1, "update/action/req"

    invoke-virtual {v0, p0, v1}, Lcom/mega/update/rpc/MegaConnector;->addCallback(Lcom/mega/update/rpc/MegaConnector$Callback;Ljava/lang/String;)V

    .line 93
    invoke-static {}, Lcom/mega/update/rpc/MegaConnector;->self()Lcom/mega/update/rpc/MegaConnector;

    move-result-object v0

    const-string v1, "update/state/req"

    invoke-virtual {v0, p0, v1}, Lcom/mega/update/rpc/MegaConnector;->addCallback(Lcom/mega/update/rpc/MegaConnector$Callback;Ljava/lang/String;)V

    .line 95
    invoke-static {}, Lcom/mega/update/service/UpdateBinder;->self()Lcom/mega/update/service/UpdateBinder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mega/update/service/UpdateBinder;->bind(Lcom/mega/update/service/IUpdateCallback;)Z

    .line 96
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

    .line 35
    .local p2, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    new-instance v0, Ljava/lang/String;

    invoke-static {p2}, Lcom/google/common/primitives/Bytes;->toArray(Ljava/util/Collection;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .line 36
    .local v0, "mesg":Ljava/lang/String;
    const-string v1, "update/action/req"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 37
    iget-object v1, p0, Lcom/mega/update/service/MipcReceiver;->mIPCHandler:Landroid/os/Handler;

    new-instance v2, Lcom/mega/update/service/MipcReceiver$1;

    invoke-direct {v2, p0, v0}, Lcom/mega/update/service/MipcReceiver$1;-><init>(Lcom/mega/update/service/MipcReceiver;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 56
    return-void

    .line 58
    :cond_0
    const-string v1, "update/state/req"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 59
    iget-object v1, p0, Lcom/mega/update/service/MipcReceiver;->mIPCHandler:Landroid/os/Handler;

    new-instance v2, Lcom/mega/update/service/MipcReceiver$2;

    invoke-direct {v2, p0}, Lcom/mega/update/service/MipcReceiver$2;-><init>(Lcom/mega/update/service/MipcReceiver;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 69
    return-void

    .line 71
    :cond_1
    return-void
.end method

.method public onStatusUpdate(Lcom/mega/update/service/UpdateState;)V
    .locals 6
    .param p1, "state"    # Lcom/mega/update/service/UpdateState;

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 77
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v1, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    .line 78
    .local v1, "reply":[B
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-byte v4, v1, v3

    .local v4, "b":B
    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .end local v4    # "b":B
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 79
    :cond_0
    invoke-static {}, Lcom/mega/update/rpc/MegaConnector;->self()Lcom/mega/update/rpc/MegaConnector;

    move-result-object v2

    const-string v3, "update/state/notify"

    invoke-virtual {v2, v3, v0}, Lcom/mega/update/rpc/MegaConnector;->send(Ljava/lang/String;Ljava/util/ArrayList;)Z

    .line 80
    return-void
.end method
