.class Lcom/mega/update/peripheral/TboxProtocolConverter$1;
.super Ljava/lang/Object;
.source "TboxProtocolConverter.java"

# interfaces
.implements Lcom/mega/update/rpc/MegaConnector$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mega/update/peripheral/TboxProtocolConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mega/update/peripheral/TboxProtocolConverter;


# direct methods
.method constructor <init>(Lcom/mega/update/peripheral/TboxProtocolConverter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mega/update/peripheral/TboxProtocolConverter;

    .line 108
    iput-object p1, p0, Lcom/mega/update/peripheral/TboxProtocolConverter$1;->this$0:Lcom/mega/update/peripheral/TboxProtocolConverter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 4
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

    .line 111
    .local p2, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    new-instance v0, Ljava/lang/String;

    invoke-static {p2}, Lcom/google/common/primitives/Bytes;->toArray(Ljava/util/Collection;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .line 112
    .local v0, "mesg":Ljava/lang/String;
    const-string v1, "update/tbox/start/req"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 113
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 114
    .local v1, "msg":Landroid/os/Message;
    const/16 v2, 0x898

    iput v2, v1, Landroid/os/Message;->what:I

    .line 115
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    new-instance v3, Lcom/mega/update/peripheral/TboxProtocolConverter$1$1;

    invoke-direct {v3, p0}, Lcom/mega/update/peripheral/TboxProtocolConverter$1$1;-><init>(Lcom/mega/update/peripheral/TboxProtocolConverter$1;)V

    .line 117
    invoke-virtual {v3}, Lcom/mega/update/peripheral/TboxProtocolConverter$1$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v3

    .line 115
    invoke-virtual {v2, v0, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mega/update/peripheral/TboxProtocolUtil$PARAMS$UpdateJson;

    .line 118
    .local v2, "json":Lcom/mega/update/peripheral/TboxProtocolUtil$PARAMS$UpdateJson;
    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 119
    iget-object v3, p0, Lcom/mega/update/peripheral/TboxProtocolConverter$1;->this$0:Lcom/mega/update/peripheral/TboxProtocolConverter;

    invoke-static {v3}, Lcom/mega/update/peripheral/TboxProtocolConverter;->access$000(Lcom/mega/update/peripheral/TboxProtocolConverter;)Lcom/mega/update/peripheral/TboxProtocolConverter$MyHandler;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/mega/update/peripheral/TboxProtocolConverter$MyHandler;->sendMessage(Landroid/os/Message;)Z

    .line 120
    .end local v1    # "msg":Landroid/os/Message;
    .end local v2    # "json":Lcom/mega/update/peripheral/TboxProtocolUtil$PARAMS$UpdateJson;
    goto :goto_0

    :cond_0
    const-string v1, "update/tbox/active/req"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 121
    iget-object v1, p0, Lcom/mega/update/peripheral/TboxProtocolConverter$1;->this$0:Lcom/mega/update/peripheral/TboxProtocolConverter;

    invoke-static {v1}, Lcom/mega/update/peripheral/TboxProtocolConverter;->access$000(Lcom/mega/update/peripheral/TboxProtocolConverter;)Lcom/mega/update/peripheral/TboxProtocolConverter$MyHandler;

    move-result-object v1

    const/16 v2, 0x899

    invoke-virtual {v1, v2}, Lcom/mega/update/peripheral/TboxProtocolConverter$MyHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 122
    :cond_1
    const-string v1, "update/tbox/version/req"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 123
    iget-object v1, p0, Lcom/mega/update/peripheral/TboxProtocolConverter$1;->this$0:Lcom/mega/update/peripheral/TboxProtocolConverter;

    invoke-static {v1}, Lcom/mega/update/peripheral/TboxProtocolConverter;->access$000(Lcom/mega/update/peripheral/TboxProtocolConverter;)Lcom/mega/update/peripheral/TboxProtocolConverter$MyHandler;

    move-result-object v1

    const/16 v2, 0x89a

    invoke-virtual {v1, v2}, Lcom/mega/update/peripheral/TboxProtocolConverter$MyHandler;->sendEmptyMessage(I)Z

    .line 125
    :cond_2
    :goto_0
    return-void
.end method
