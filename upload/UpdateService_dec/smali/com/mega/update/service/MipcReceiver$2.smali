.class Lcom/mega/update/service/MipcReceiver$2;
.super Ljava/lang/Object;
.source "MipcReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mega/update/service/MipcReceiver;->onReceive(Ljava/lang/String;Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mega/update/service/MipcReceiver;


# direct methods
.method constructor <init>(Lcom/mega/update/service/MipcReceiver;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mega/update/service/MipcReceiver;

    .line 59
    iput-object p1, p0, Lcom/mega/update/service/MipcReceiver$2;->this$0:Lcom/mega/update/service/MipcReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 62
    invoke-static {}, Lcom/mega/update/service/UpdateBinder;->self()Lcom/mega/update/service/UpdateBinder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mega/update/service/UpdateBinder;->getState()Lcom/mega/update/service/UpdateState;

    move-result-object v0

    .line 63
    .local v0, "state":Lcom/mega/update/service/UpdateState;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 64
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v2, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    .line 65
    .local v2, "reply":[B
    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    aget-byte v5, v2, v4

    .local v5, "b":B
    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .end local v5    # "b":B
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 66
    :cond_0
    invoke-static {}, Lcom/mega/update/rpc/MegaConnector;->self()Lcom/mega/update/rpc/MegaConnector;

    move-result-object v3

    const-string v4, "update/state/res"

    invoke-virtual {v3, v4, v1}, Lcom/mega/update/rpc/MegaConnector;->send(Ljava/lang/String;Ljava/util/ArrayList;)Z

    .line 67
    return-void
.end method
