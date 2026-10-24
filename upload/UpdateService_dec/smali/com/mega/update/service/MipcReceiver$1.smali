.class Lcom/mega/update/service/MipcReceiver$1;
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

.field final synthetic val$mesg:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/mega/update/service/MipcReceiver;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mega/update/service/MipcReceiver;

    .line 37
    iput-object p1, p0, Lcom/mega/update/service/MipcReceiver$1;->this$0:Lcom/mega/update/service/MipcReceiver;

    iput-object p2, p0, Lcom/mega/update/service/MipcReceiver$1;->val$mesg:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 40
    const/4 v0, 0x0

    .line 41
    .local v0, "option":Lcom/mega/update/service/UpdateOption;
    const/4 v1, 0x0

    .line 43
    .local v1, "errcode":I
    :try_start_0
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    iget-object v3, p0, Lcom/mega/update/service/MipcReceiver$1;->val$mesg:Ljava/lang/String;

    new-instance v4, Lcom/mega/update/service/MipcReceiver$1$1;

    invoke-direct {v4, p0}, Lcom/mega/update/service/MipcReceiver$1$1;-><init>(Lcom/mega/update/service/MipcReceiver$1;)V

    .line 44
    invoke-virtual {v4}, Lcom/mega/update/service/MipcReceiver$1$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v4

    .line 43
    invoke-virtual {v2, v3, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mega/update/service/UpdateOption;

    move-object v0, v2

    .line 45
    invoke-static {}, Lcom/mega/update/service/UpdateBinder;->self()Lcom/mega/update/service/UpdateBinder;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/mega/update/service/UpdateBinder;->applyAction(Lcom/mega/update/service/UpdateOption;)I

    move-result v2
    :try_end_0
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v2

    .line 49
    goto :goto_0

    .line 46
    :catch_0
    move-exception v2

    .line 47
    .local v2, "e":Lcom/google/gson/JsonSyntaxException;
    const/16 v1, 0x46

    .line 48
    invoke-virtual {v2}, Lcom/google/gson/JsonSyntaxException;->printStackTrace()V

    .line 50
    .end local v2    # "e":Lcom/google/gson/JsonSyntaxException;
    :goto_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 51
    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    new-instance v4, Lcom/mega/update/service/MipcReceiver$TopicResponse;

    const-string v5, ""

    invoke-direct {v4, v1, v5}, Lcom/mega/update/service/MipcReceiver$TopicResponse;-><init>(ILjava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    .line 52
    .local v3, "reply":[B
    array-length v4, v3

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_0

    aget-byte v6, v3, v5

    .local v6, "b":B
    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .end local v6    # "b":B
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 53
    :cond_0
    invoke-static {}, Lcom/mega/update/rpc/MegaConnector;->self()Lcom/mega/update/rpc/MegaConnector;

    move-result-object v4

    const-string v5, "update/action/res"

    invoke-virtual {v4, v5, v2}, Lcom/mega/update/rpc/MegaConnector;->send(Ljava/lang/String;Ljava/util/ArrayList;)Z

    .line 54
    return-void
.end method
