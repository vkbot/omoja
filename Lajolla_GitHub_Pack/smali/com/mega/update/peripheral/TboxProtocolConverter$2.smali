.class Lcom/mega/update/peripheral/TboxProtocolConverter$2;
.super Ljava/lang/Object;
.source "TboxProtocolConverter.java"

# interfaces
.implements Lcom/mega/update/rpc/TboxConnector$Callback;


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

    .line 210
    iput-object p1, p0, Lcom/mega/update/peripheral/TboxProtocolConverter$2;->this$0:Lcom/mega/update/peripheral/TboxProtocolConverter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private onActive(Ljava/util/ArrayList;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    .line 295
    .local p1, "tboxData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    new-instance v0, Lcom/mega/update/peripheral/TboxProtocolUtil$PARAMS$ResultInfo;

    invoke-direct {v0}, Lcom/mega/update/peripheral/TboxProtocolUtil$PARAMS$ResultInfo;-><init>()V

    .line 296
    .local v0, "resultInfo":Lcom/mega/update/peripheral/TboxProtocolUtil$PARAMS$ResultInfo;
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Byte;

    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    iput v2, v0, Lcom/mega/update/peripheral/TboxProtocolUtil$PARAMS$ResultInfo;->ecu_result:I

    .line 298
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 299
    .local v2, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    const-class v4, Lcom/mega/update/peripheral/TboxProtocolUtil$PARAMS$ResultInfo;

    invoke-virtual {v3, v0, v4}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v3

    .line 300
    .local v3, "mesg":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    array-length v5, v4

    :goto_0
    if-ge v1, v5, :cond_0

    aget-byte v6, v4, v1

    .local v6, "b":B
    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .end local v6    # "b":B
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 301
    :cond_0
    invoke-static {}, Lcom/mega/update/rpc/MegaConnector;->self()Lcom/mega/update/rpc/MegaConnector;

    move-result-object v1

    const-string v4, "update/tbox/active/res"

    invoke-virtual {v1, v4, v2}, Lcom/mega/update/rpc/MegaConnector;->send(Ljava/lang/String;Ljava/util/ArrayList;)Z

    .line 302
    invoke-static {}, Lcom/mega/update/peripheral/TboxProtocolConverter;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onActive, mesg ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/mega/update/util/LogUtil;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    return-void
.end method

.method private onProgress(Ljava/util/ArrayList;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    .line 240
    .local p1, "tboxData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    iget-object v0, p0, Lcom/mega/update/peripheral/TboxProtocolConverter$2;->this$0:Lcom/mega/update/peripheral/TboxProtocolConverter;

    invoke-static {v0}, Lcom/mega/update/peripheral/TboxProtocolConverter;->access$200(Lcom/mega/update/peripheral/TboxProtocolConverter;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    if-ne v0, v1, :cond_0

    .line 241
    iget-object v0, p0, Lcom/mega/update/peripheral/TboxProtocolConverter$2;->this$0:Lcom/mega/update/peripheral/TboxProtocolConverter;

    invoke-static {v0}, Lcom/mega/update/peripheral/TboxProtocolConverter;->access$600(Lcom/mega/update/peripheral/TboxProtocolConverter;)Lorg/apache/ftpserver/FtpServer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mega/update/peripheral/TboxProtocolConverter$2;->this$0:Lcom/mega/update/peripheral/TboxProtocolConverter;

    invoke-static {v0}, Lcom/mega/update/peripheral/TboxProtocolConverter;->access$600(Lcom/mega/update/peripheral/TboxProtocolConverter;)Lorg/apache/ftpserver/FtpServer;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ftpserver/FtpServer;->isStopped()Z

    move-result v0

    if-nez v0, :cond_0

    .line 242
    iget-object v0, p0, Lcom/mega/update/peripheral/TboxProtocolConverter$2;->this$0:Lcom/mega/update/peripheral/TboxProtocolConverter;

    invoke-static {v0}, Lcom/mega/update/peripheral/TboxProtocolConverter;->access$600(Lcom/mega/update/peripheral/TboxProtocolConverter;)Lorg/apache/ftpserver/FtpServer;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ftpserver/FtpServer;->stop()V

    .line 243
    iget-object v0, p0, Lcom/mega/update/peripheral/TboxProtocolConverter$2;->this$0:Lcom/mega/update/peripheral/TboxProtocolConverter;

    invoke-static {v0}, Lcom/mega/update/peripheral/TboxProtocolConverter;->access$200(Lcom/mega/update/peripheral/TboxProtocolConverter;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 244
    invoke-static {}, Lcom/mega/update/peripheral/TboxProtocolConverter;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v3, "Package download completed, stop ftpServer"

    invoke-static {v0, v3}, Lcom/mega/update/util/LogUtil;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 248
    .local v0, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    new-instance v3, Lcom/mega/update/peripheral/TboxProtocolUtil$PARAMS$ProgressInfo;

    .line 249
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Byte;

    invoke-virtual {v1}, Ljava/lang/Byte;->byteValue()B

    move-result v1

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Byte;

    invoke-virtual {v4}, Ljava/lang/Byte;->byteValue()B

    move-result v4

    invoke-direct {v3, v1, v4}, Lcom/mega/update/peripheral/TboxProtocolUtil$PARAMS$ProgressInfo;-><init>(II)V

    move-object v1, v3

    .line 250
    .local v1, "progressInfo":Lcom/mega/update/peripheral/TboxProtocolUtil$PARAMS$ProgressInfo;
    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    const-class v4, Lcom/mega/update/peripheral/TboxProtocolUtil$PARAMS$ProgressInfo;

    invoke-virtual {v3, v1, v4}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v3

    .line 251
    .local v3, "mesg":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    array-length v5, v4

    :goto_0
    if-ge v2, v5, :cond_1

    aget-byte v6, v4, v2

    .local v6, "b":B
    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .end local v6    # "b":B
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 252
    :cond_1
    invoke-static {}, Lcom/mega/update/rpc/MegaConnector;->self()Lcom/mega/update/rpc/MegaConnector;

    move-result-object v2

    const-string v4, "update/tbox/progress"

    invoke-virtual {v2, v4, v0}, Lcom/mega/update/rpc/MegaConnector;->send(Ljava/lang/String;Ljava/util/ArrayList;)Z

    .line 253
    invoke-static {}, Lcom/mega/update/peripheral/TboxProtocolConverter;->access$100()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onProgress, mesg ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/mega/update/util/LogUtil;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    return-void
.end method

.method private onResult(Ljava/util/ArrayList;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    .line 257
    .local p1, "tboxData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    iget-object v0, p0, Lcom/mega/update/peripheral/TboxProtocolConverter$2;->this$0:Lcom/mega/update/peripheral/TboxProtocolConverter;

    invoke-static {v0}, Lcom/mega/update/peripheral/TboxProtocolConverter;->access$200(Lcom/mega/update/peripheral/TboxProtocolConverter;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 258
    iget-object v0, p0, Lcom/mega/update/peripheral/TboxProtocolConverter$2;->this$0:Lcom/mega/update/peripheral/TboxProtocolConverter;

    invoke-static {v0}, Lcom/mega/update/peripheral/TboxProtocolConverter;->access$600(Lcom/mega/update/peripheral/TboxProtocolConverter;)Lorg/apache/ftpserver/FtpServer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mega/update/peripheral/TboxProtocolConverter$2;->this$0:Lcom/mega/update/peripheral/TboxProtocolConverter;

    invoke-static {v0}, Lcom/mega/update/peripheral/TboxProtocolConverter;->access$600(Lcom/mega/update/peripheral/TboxProtocolConverter;)Lorg/apache/ftpserver/FtpServer;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ftpserver/FtpServer;->isStopped()Z

    move-result v0

    if-nez v0, :cond_0

    .line 259
    iget-object v0, p0, Lcom/mega/update/peripheral/TboxProtocolConverter$2;->this$0:Lcom/mega/update/peripheral/TboxProtocolConverter;

    invoke-static {v0}, Lcom/mega/update/peripheral/TboxProtocolConverter;->access$600(Lcom/mega/update/peripheral/TboxProtocolConverter;)Lorg/apache/ftpserver/FtpServer;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ftpserver/FtpServer;->stop()V

    .line 260
    iget-object v0, p0, Lcom/mega/update/peripheral/TboxProtocolConverter$2;->this$0:Lcom/mega/update/peripheral/TboxProtocolConverter;

    invoke-static {v0}, Lcom/mega/update/peripheral/TboxProtocolConverter;->access$200(Lcom/mega/update/peripheral/TboxProtocolConverter;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 261
    invoke-static {}, Lcom/mega/update/peripheral/TboxProtocolConverter;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Package download failed, stop ftpServer"

    invoke-static {v0, v2}, Lcom/mega/update/util/LogUtil;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    :cond_0
    new-instance v0, Lcom/mega/update/peripheral/TboxProtocolUtil$PARAMS$ResultInfo;

    invoke-direct {v0}, Lcom/mega/update/peripheral/TboxProtocolUtil$PARAMS$ResultInfo;-><init>()V

    .line 265
    .local v0, "resultInfo":Lcom/mega/update/peripheral/TboxProtocolUtil$PARAMS$ResultInfo;
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Byte;

    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    iput v2, v0, Lcom/mega/update/peripheral/TboxProtocolUtil$PARAMS$ResultInfo;->ecu_result:I

    .line 267
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 268
    .local v2, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    const-class v4, Lcom/mega/update/peripheral/TboxProtocolUtil$PARAMS$ResultInfo;

    invoke-virtual {v3, v0, v4}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v3

    .line 269
    .local v3, "mesg":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    array-length v5, v4

    :goto_0
    if-ge v1, v5, :cond_1

    aget-byte v6, v4, v1

    .local v6, "b":B
    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .end local v6    # "b":B
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 270
    :cond_1
    invoke-static {}, Lcom/mega/update/rpc/MegaConnector;->self()Lcom/mega/update/rpc/MegaConnector;

    move-result-object v1

    const-string v4, "update/tbox/result"

    invoke-virtual {v1, v4, v2}, Lcom/mega/update/rpc/MegaConnector;->send(Ljava/lang/String;Ljava/util/ArrayList;)Z

    .line 271
    invoke-static {}, Lcom/mega/update/peripheral/TboxProtocolConverter;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onResult, mesg ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/mega/update/util/LogUtil;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    return-void
.end method

.method private onStarted(Ljava/util/ArrayList;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    .line 230
    .local p1, "tboxData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 231
    .local v0, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    new-instance v1, Lcom/mega/update/peripheral/TboxProtocolUtil$PARAMS$ResultInfo;

    invoke-direct {v1}, Lcom/mega/update/peripheral/TboxProtocolUtil$PARAMS$ResultInfo;-><init>()V

    .line 232
    .local v1, "resultInfo":Lcom/mega/update/peripheral/TboxProtocolUtil$PARAMS$ResultInfo;
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Byte;

    invoke-virtual {v3}, Ljava/lang/Byte;->byteValue()B

    move-result v3

    iput v3, v1, Lcom/mega/update/peripheral/TboxProtocolUtil$PARAMS$ResultInfo;->ecu_result:I

    .line 233
    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    const-class v4, Lcom/mega/update/peripheral/TboxProtocolUtil$PARAMS$ResultInfo;

    invoke-virtual {v3, v1, v4}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v3

    .line 234
    .local v3, "mesg":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    array-length v5, v4

    :goto_0
    if-ge v2, v5, :cond_0

    aget-byte v6, v4, v2

    .local v6, "b":B
    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .end local v6    # "b":B
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 235
    :cond_0
    invoke-static {}, Lcom/mega/update/rpc/MegaConnector;->self()Lcom/mega/update/rpc/MegaConnector;

    move-result-object v2

    const-string v4, "update/tbox/start/res"

    invoke-virtual {v2, v4, v0}, Lcom/mega/update/rpc/MegaConnector;->send(Ljava/lang/String;Ljava/util/ArrayList;)Z

    .line 236
    invoke-static {}, Lcom/mega/update/peripheral/TboxProtocolConverter;->access$100()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onStarted, mesg ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/mega/update/util/LogUtil;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    return-void
.end method

.method private onVersionGot(Ljava/util/ArrayList;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    .line 275
    .local p1, "tboxData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    new-instance v0, Ljava/lang/String;

    invoke-static {p1}, Lcom/google/common/primitives/Bytes;->toArray(Ljava/util/Collection;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .line 276
    .local v0, "version":Ljava/lang/String;
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 277
    .local v1, "strVersion":[Ljava/lang/String;
    new-instance v2, Lcom/mega/update/peripheral/TboxProtocolUtil$PARAMS$VersionInfo;

    invoke-direct {v2}, Lcom/mega/update/peripheral/TboxProtocolUtil$PARAMS$VersionInfo;-><init>()V

    .line 280
    .local v2, "versionInfo":Lcom/mega/update/peripheral/TboxProtocolUtil$PARAMS$VersionInfo;
    const/4 v3, 0x0

    :try_start_0
    aget-object v4, v1, v3

    iput-object v4, v2, Lcom/mega/update/peripheral/TboxProtocolUtil$PARAMS$VersionInfo;->ecu_soft_version:Ljava/lang/String;

    .line 281
    const/4 v4, 0x1

    aget-object v4, v1, v4

    iput-object v4, v2, Lcom/mega/update/peripheral/TboxProtocolUtil$PARAMS$VersionInfo;->ecu_slot_version:Ljava/lang/String;

    .line 282
    const/4 v4, 0x2

    aget-object v4, v1, v4

    iput-object v4, v2, Lcom/mega/update/peripheral/TboxProtocolUtil$PARAMS$VersionInfo;->ecu_vendor_id:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 286
    goto :goto_0

    .line 283
    :catch_0
    move-exception v4

    .line 284
    .local v4, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    invoke-virtual {v4}, Ljava/lang/ArrayIndexOutOfBoundsException;->printStackTrace()V

    .line 285
    invoke-static {}, Lcom/mega/update/peripheral/TboxProtocolConverter;->access$100()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onVersionGot Exception ### "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mega/update/util/LogUtil;->logError(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    .end local v4    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :goto_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 288
    .local v4, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    new-instance v5, Lcom/google/gson/Gson;

    invoke-direct {v5}, Lcom/google/gson/Gson;-><init>()V

    const-class v6, Lcom/mega/update/peripheral/TboxProtocolUtil$PARAMS$VersionInfo;

    invoke-virtual {v5, v2, v6}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v5

    .line 289
    .local v5, "mesg":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    array-length v7, v6

    :goto_1
    if-ge v3, v7, :cond_0

    aget-byte v8, v6, v3

    .local v8, "b":B
    invoke-static {v8}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .end local v8    # "b":B
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 290
    :cond_0
    invoke-static {}, Lcom/mega/update/rpc/MegaConnector;->self()Lcom/mega/update/rpc/MegaConnector;

    move-result-object v3

    const-string v6, "update/tbox/version/res"

    invoke-virtual {v3, v6, v4}, Lcom/mega/update/rpc/MegaConnector;->send(Ljava/lang/String;Ljava/util/ArrayList;)Z

    .line 291
    invoke-static {}, Lcom/mega/update/peripheral/TboxProtocolConverter;->access$100()Ljava/lang/String;

    move-result-object v3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onVersionGot, version ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " mesg ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/mega/update/util/LogUtil;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
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

    .line 214
    .local p2, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    const-string v0, "TBOX_DOWNLOAD_UPDATE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/mega/update/peripheral/TboxProtocolConverter$2;->this$0:Lcom/mega/update/peripheral/TboxProtocolConverter;

    invoke-static {v0}, Lcom/mega/update/peripheral/TboxProtocolConverter;->access$000(Lcom/mega/update/peripheral/TboxProtocolConverter;)Lcom/mega/update/peripheral/TboxProtocolConverter$MyHandler;

    move-result-object v0

    const/16 v1, 0x8a2

    invoke-virtual {v0, v1}, Lcom/mega/update/peripheral/TboxProtocolConverter$MyHandler;->removeTimer(I)V

    .line 216
    invoke-direct {p0, p2}, Lcom/mega/update/peripheral/TboxProtocolConverter$2;->onStarted(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 217
    :cond_0
    const-string v0, "TBOX_UPDATE_PROGRESS"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 218
    invoke-direct {p0, p2}, Lcom/mega/update/peripheral/TboxProtocolConverter$2;->onProgress(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 219
    :cond_1
    const-string v0, "TBOX_UPDATE_RESULT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 220
    invoke-direct {p0, p2}, Lcom/mega/update/peripheral/TboxProtocolConverter$2;->onResult(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 221
    :cond_2
    const-string v0, "TBOX_VERSION"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 222
    iget-object v0, p0, Lcom/mega/update/peripheral/TboxProtocolConverter$2;->this$0:Lcom/mega/update/peripheral/TboxProtocolConverter;

    invoke-static {v0}, Lcom/mega/update/peripheral/TboxProtocolConverter;->access$000(Lcom/mega/update/peripheral/TboxProtocolConverter;)Lcom/mega/update/peripheral/TboxProtocolConverter$MyHandler;

    move-result-object v0

    const/16 v1, 0x8a3

    invoke-virtual {v0, v1}, Lcom/mega/update/peripheral/TboxProtocolConverter$MyHandler;->removeTimer(I)V

    .line 223
    invoke-direct {p0, p2}, Lcom/mega/update/peripheral/TboxProtocolConverter$2;->onVersionGot(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 224
    :cond_3
    const-string v0, "TBOX_UPDATE_SWITCH"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 225
    invoke-direct {p0, p2}, Lcom/mega/update/peripheral/TboxProtocolConverter$2;->onActive(Ljava/util/ArrayList;)V

    .line 227
    :cond_4
    :goto_0
    return-void
.end method
