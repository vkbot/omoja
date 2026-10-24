.class public Lcom/mega/update/protocol/TboxUpdateProtocol;
.super Lcom/mega/update/protocol/IUpdateProtocol;
.source "TboxUpdateProtocol.java"

# interfaces
.implements Lcom/mega/update/rpc/MegaConnector$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mega/update/protocol/TboxUpdateProtocol$TOPICS;,
        Lcom/mega/update/protocol/TboxUpdateProtocol$PARAMS;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private tempPackage:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 26
    const-class v0, Lcom/mega/update/protocol/TboxUpdateProtocol;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mega/update/protocol/TboxUpdateProtocol;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 85
    invoke-direct {p0}, Lcom/mega/update/protocol/IUpdateProtocol;-><init>()V

    .line 86
    invoke-static {}, Lcom/mega/update/rpc/MegaConnector;->self()Lcom/mega/update/rpc/MegaConnector;

    move-result-object v0

    const-string v1, "update/tbox/progress"

    invoke-virtual {v0, p0, v1}, Lcom/mega/update/rpc/MegaConnector;->addCallback(Lcom/mega/update/rpc/MegaConnector$Callback;Ljava/lang/String;)V

    .line 87
    invoke-static {}, Lcom/mega/update/rpc/MegaConnector;->self()Lcom/mega/update/rpc/MegaConnector;

    move-result-object v0

    const-string v1, "update/tbox/result"

    invoke-virtual {v0, p0, v1}, Lcom/mega/update/rpc/MegaConnector;->addCallback(Lcom/mega/update/rpc/MegaConnector$Callback;Ljava/lang/String;)V

    .line 88
    return-void
.end method

.method private cpFile(Ljava/lang/String;JJLjava/lang/String;)Ljava/lang/String;
    .locals 17
    .param p1, "packageFile"    # Ljava/lang/String;
    .param p2, "offset"    # J
    .param p4, "fileSize"    # J
    .param p6, "filename"    # Ljava/lang/String;

    .line 91
    const-string v1, "file stream close fail!"

    const-string v2, "package stream close fail!"

    const/4 v3, 0x0

    .line 92
    .local v3, "input":Ljava/io/FileInputStream;
    const/4 v4, 0x0

    .line 93
    .local v4, "output":Ljava/io/FileOutputStream;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/data/ota_package/"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v5, p6

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 95
    .local v6, "path":Ljava/lang/String;
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v7, p1

    :try_start_1
    invoke-direct {v0, v7}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v3, v0

    .line 96
    move-wide/from16 v8, p2

    :try_start_2
    invoke-virtual {v3, v8, v9}, Ljava/io/FileInputStream;->skip(J)J

    .line 97
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    move-object v4, v0

    .line 98
    const/high16 v0, 0x100000

    new-array v0, v0, [B

    .line 99
    .local v0, "buffer":[B
    const-wide/16 v10, 0x0

    .line 100
    .local v10, "sended":J
    const/4 v12, 0x0

    .line 101
    .local v12, "len":I
    const/4 v13, 0x0

    .line 102
    .local v13, "old_p":I
    :goto_0
    invoke-virtual {v3, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v14

    move v12, v14

    if-lez v14, :cond_3

    .line 103
    int-to-long v14, v12

    add-long/2addr v14, v10

    cmp-long v14, v14, p4

    if-lez v14, :cond_0

    .line 104
    sub-long v14, p4, v10

    long-to-int v12, v14

    .line 106
    :cond_0
    int-to-long v14, v12

    add-long/2addr v10, v14

    .line 107
    const-wide/16 v14, 0xa

    mul-long/2addr v14, v10

    div-long v14, v14, p4

    long-to-int v14, v14

    .line 109
    .local v14, "progress":I
    const/4 v15, 0x0

    invoke-virtual {v4, v0, v15, v12}, Ljava/io/FileOutputStream;->write([BII)V

    .line 110
    if-eq v13, v14, :cond_1

    .line 111
    move v13, v14

    .line 112
    sget-object v15, Lcom/mega/update/protocol/TboxUpdateProtocol;->TAG:Ljava/lang/String;

    move-object/from16 v16, v0

    .end local v0    # "buffer":[B
    .local v16, "buffer":[B
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cp tbox file progress "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "0%"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Lcom/mega/update/util/LogUtil;->logMsg(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 110
    .end local v16    # "buffer":[B
    .restart local v0    # "buffer":[B
    :cond_1
    move-object/from16 v16, v0

    .line 114
    .end local v0    # "buffer":[B
    .restart local v16    # "buffer":[B
    :goto_1
    cmp-long v0, v10, p4

    if-nez v0, :cond_2

    .line 115
    goto :goto_2

    .line 117
    .end local v14    # "progress":I
    :cond_2
    move-object/from16 v5, p6

    move-object/from16 v0, v16

    goto :goto_0

    .line 102
    .end local v16    # "buffer":[B
    .restart local v0    # "buffer":[B
    :cond_3
    move-object/from16 v16, v0

    .line 118
    .end local v0    # "buffer":[B
    .restart local v16    # "buffer":[B
    :goto_2
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->flush()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 124
    .end local v10    # "sended":J
    .end local v12    # "len":I
    .end local v13    # "old_p":I
    .end local v16    # "buffer":[B
    nop

    .line 126
    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 129
    goto :goto_3

    .line 127
    :catch_0
    move-exception v0

    move-object v5, v0

    move-object v0, v5

    .line 128
    .local v0, "e":Ljava/io/IOException;
    sget-object v5, Lcom/mega/update/protocol/TboxUpdateProtocol;->TAG:Ljava/lang/String;

    invoke-static {v5, v2}, Lcom/mega/update/util/LogUtil;->logError(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    .end local v0    # "e":Ljava/io/IOException;
    :goto_3
    nop

    .line 133
    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 136
    :goto_4
    goto :goto_5

    .line 134
    :catch_1
    move-exception v0

    move-object v2, v0

    move-object v0, v2

    .line 135
    .restart local v0    # "e":Ljava/io/IOException;
    sget-object v2, Lcom/mega/update/protocol/TboxUpdateProtocol;->TAG:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/mega/update/util/LogUtil;->logError(Ljava/lang/String;Ljava/lang/String;)V

    .end local v0    # "e":Ljava/io/IOException;
    goto :goto_4

    .line 139
    :goto_5
    return-object v6

    .line 119
    :catch_2
    move-exception v0

    goto :goto_9

    .line 124
    :catchall_0
    move-exception v0

    goto :goto_6

    .line 119
    :catch_3
    move-exception v0

    goto :goto_8

    .line 124
    :catchall_1
    move-exception v0

    move-object/from16 v7, p1

    :goto_6
    move-wide/from16 v8, p2

    :goto_7
    move-object v5, v0

    goto :goto_c

    .line 119
    :catch_4
    move-exception v0

    move-object/from16 v7, p1

    :goto_8
    move-wide/from16 v8, p2

    :goto_9
    move-object v5, v0

    .line 120
    .local v5, "e":Ljava/lang/Exception;
    :try_start_5
    sget-object v0, Lcom/mega/update/protocol/TboxUpdateProtocol;->TAG:Ljava/lang/String;

    const-string v10, "cp tbox file error!"

    invoke-static {v0, v10}, Lcom/mega/update/util/LogUtil;->logError(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 122
    const/4 v10, 0x0

    .line 124
    if-eqz v3, :cond_4

    .line 126
    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 129
    goto :goto_a

    .line 127
    :catch_5
    move-exception v0

    move-object v11, v0

    move-object v0, v11

    .line 128
    .restart local v0    # "e":Ljava/io/IOException;
    sget-object v11, Lcom/mega/update/protocol/TboxUpdateProtocol;->TAG:Ljava/lang/String;

    invoke-static {v11, v2}, Lcom/mega/update/util/LogUtil;->logError(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    .end local v0    # "e":Ljava/io/IOException;
    :cond_4
    :goto_a
    if-eqz v4, :cond_5

    .line 133
    :try_start_7
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    .line 136
    goto :goto_b

    .line 134
    :catch_6
    move-exception v0

    move-object v2, v0

    move-object v0, v2

    .line 135
    .restart local v0    # "e":Ljava/io/IOException;
    sget-object v2, Lcom/mega/update/protocol/TboxUpdateProtocol;->TAG:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/mega/update/util/LogUtil;->logError(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    .end local v0    # "e":Ljava/io/IOException;
    :cond_5
    :goto_b
    return-object v10

    .line 124
    .end local v5    # "e":Ljava/lang/Exception;
    :catchall_2
    move-exception v0

    goto :goto_7

    :goto_c
    if-eqz v3, :cond_6

    .line 126
    :try_start_8
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7

    .line 129
    goto :goto_d

    .line 127
    :catch_7
    move-exception v0

    move-object v10, v0

    move-object v0, v10

    .line 128
    .restart local v0    # "e":Ljava/io/IOException;
    sget-object v10, Lcom/mega/update/protocol/TboxUpdateProtocol;->TAG:Ljava/lang/String;

    invoke-static {v10, v2}, Lcom/mega/update/util/LogUtil;->logError(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    .end local v0    # "e":Ljava/io/IOException;
    :cond_6
    :goto_d
    if-eqz v4, :cond_7

    .line 133
    :try_start_9
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_8

    .line 136
    goto :goto_e

    .line 134
    :catch_8
    move-exception v0

    move-object v2, v0

    move-object v0, v2

    .line 135
    .restart local v0    # "e":Ljava/io/IOException;
    sget-object v2, Lcom/mega/update/protocol/TboxUpdateProtocol;->TAG:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/mega/update/util/LogUtil;->logError(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    .end local v0    # "e":Ljava/io/IOException;
    :cond_7
    :goto_e
    throw v5
.end method


# virtual methods
.method public active(Lcom/mega/update/info/ManifestInfo$DeviceInfo;Lcom/mega/update/manager/ITriggerNotifier;)Lcom/mega/update/manager/Result;
    .locals 7
    .param p1, "info"    # Lcom/mega/update/info/ManifestInfo$DeviceInfo;
    .param p2, "notifier"    # Lcom/mega/update/manager/ITriggerNotifier;

    .line 178
    new-instance v0, Lcom/mega/update/manager/Result;

    const/4 v1, -0x1

    const-string v2, "tbox active error"

    invoke-direct {v0, v1, v2}, Lcom/mega/update/manager/Result;-><init>(ILjava/lang/String;)V

    .line 180
    .local v0, "res":Lcom/mega/update/manager/Result;
    :try_start_0
    invoke-static {}, Lcom/mega/update/rpc/MegaConnector;->self()Lcom/mega/update/rpc/MegaConnector;

    move-result-object v1

    const-string v2, "update/tbox/active/req"

    const-string v3, "1"

    const-string v4, "update/tbox/active/res"

    const/16 v5, 0x1388

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/mega/update/rpc/MegaConnector;->request(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v1

    .line 185
    .local v1, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    new-instance v2, Ljava/lang/String;

    invoke-static {v1}, Lcom/google/common/primitives/Bytes;->toArray(Ljava/util/Collection;)[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    .line 186
    .local v2, "msg":Ljava/lang/String;
    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    new-instance v4, Lcom/mega/update/protocol/TboxUpdateProtocol$2;

    invoke-direct {v4, p0}, Lcom/mega/update/protocol/TboxUpdateProtocol$2;-><init>(Lcom/mega/update/protocol/TboxUpdateProtocol;)V

    .line 187
    invoke-virtual {v4}, Lcom/mega/update/protocol/TboxUpdateProtocol$2;->getType()Ljava/lang/reflect/Type;

    move-result-object v4

    .line 186
    invoke-virtual {v3, v2, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mega/update/protocol/TboxUpdateProtocol$PARAMS$ResultInfo;

    .line 188
    .local v3, "ri":Lcom/mega/update/protocol/TboxUpdateProtocol$PARAMS$ResultInfo;
    iget v4, v3, Lcom/mega/update/protocol/TboxUpdateProtocol$PARAMS$ResultInfo;->ecu_result:I

    const/4 v5, 0x0

    if-nez v4, :cond_0

    .line 189
    iput v5, v0, Lcom/mega/update/manager/Result;->ret:I

    .line 190
    const-string v4, "OK"

    iput-object v4, v0, Lcom/mega/update/manager/Result;->desc:Ljava/lang/String;

    goto :goto_0

    .line 192
    :cond_0
    const/4 v4, -0x2

    iput v4, v0, Lcom/mega/update/manager/Result;->ret:I

    .line 193
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "tbox active fail "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/mega/update/manager/Result;->desc:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 198
    .end local v1    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    .end local v2    # "msg":Ljava/lang/String;
    .end local v3    # "ri":Lcom/mega/update/protocol/TboxUpdateProtocol$PARAMS$ResultInfo;
    :goto_0
    goto :goto_1

    .line 195
    :catch_0
    move-exception v1

    .line 196
    .local v1, "e":Ljava/lang/Exception;
    const/4 v2, -0x3

    iput v2, v0, Lcom/mega/update/manager/Result;->ret:I

    .line 197
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/mega/update/manager/Result;->desc:Ljava/lang/String;

    .line 199
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    invoke-interface {p2, v0}, Lcom/mega/update/manager/ITriggerNotifier;->onStatusChanged(Lcom/mega/update/manager/Result;)V

    .line 200
    return-object v0
.end method

.method public onReceive(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 6
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

    .line 251
    .local p2, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    new-instance v0, Ljava/lang/String;

    invoke-static {p2}, Lcom/google/common/primitives/Bytes;->toArray(Ljava/util/Collection;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .line 252
    .local v0, "mesg":Ljava/lang/String;
    const-string v1, "update/tbox/progress"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mega/update/protocol/TboxUpdateProtocol;->mCallback:Lcom/mega/update/manager/ITriggerNotifier;

    if-eqz v1, :cond_0

    .line 253
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    new-instance v2, Lcom/mega/update/protocol/TboxUpdateProtocol$4;

    invoke-direct {v2, p0}, Lcom/mega/update/protocol/TboxUpdateProtocol$4;-><init>(Lcom/mega/update/protocol/TboxUpdateProtocol;)V

    .line 254
    invoke-virtual {v2}, Lcom/mega/update/protocol/TboxUpdateProtocol$4;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 253
    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mega/update/protocol/TboxUpdateProtocol$PARAMS$ProgressInfo;

    .line 255
    .local v1, "progressInfo":Lcom/mega/update/protocol/TboxUpdateProtocol$PARAMS$ProgressInfo;
    iget-object v2, p0, Lcom/mega/update/protocol/TboxUpdateProtocol;->mCallback:Lcom/mega/update/manager/ITriggerNotifier;

    iget v3, v1, Lcom/mega/update/protocol/TboxUpdateProtocol$PARAMS$ProgressInfo;->ecu_progress:I

    invoke-interface {v2, v3}, Lcom/mega/update/manager/ITriggerNotifier;->onProgressChanged(I)V

    .end local v1    # "progressInfo":Lcom/mega/update/protocol/TboxUpdateProtocol$PARAMS$ProgressInfo;
    goto :goto_0

    .line 257
    :cond_0
    const-string v1, "update/tbox/result"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/mega/update/protocol/TboxUpdateProtocol;->mCallback:Lcom/mega/update/manager/ITriggerNotifier;

    if-eqz v1, :cond_1

    .line 259
    iget-object v1, p0, Lcom/mega/update/protocol/TboxUpdateProtocol;->mCallback:Lcom/mega/update/manager/ITriggerNotifier;

    .line 260
    .local v1, "notifier":Lcom/mega/update/manager/ITriggerNotifier;
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/mega/update/protocol/TboxUpdateProtocol;->mCallback:Lcom/mega/update/manager/ITriggerNotifier;

    .line 261
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    new-instance v3, Lcom/mega/update/protocol/TboxUpdateProtocol$5;

    invoke-direct {v3, p0}, Lcom/mega/update/protocol/TboxUpdateProtocol$5;-><init>(Lcom/mega/update/protocol/TboxUpdateProtocol;)V

    .line 262
    invoke-virtual {v3}, Lcom/mega/update/protocol/TboxUpdateProtocol$5;->getType()Ljava/lang/reflect/Type;

    move-result-object v3

    .line 261
    invoke-virtual {v2, v0, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mega/update/protocol/TboxUpdateProtocol$PARAMS$ResultInfo;

    .line 263
    .local v2, "resultInfo":Lcom/mega/update/protocol/TboxUpdateProtocol$PARAMS$ResultInfo;
    new-instance v3, Lcom/mega/update/manager/Result;

    iget v4, v2, Lcom/mega/update/protocol/TboxUpdateProtocol$PARAMS$ResultInfo;->ecu_result:I

    iget-object v5, v2, Lcom/mega/update/protocol/TboxUpdateProtocol$PARAMS$ResultInfo;->ecu_desc:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Lcom/mega/update/manager/Result;-><init>(ILjava/lang/String;)V

    .line 264
    .local v3, "res":Lcom/mega/update/manager/Result;
    invoke-interface {v1, v3}, Lcom/mega/update/manager/ITriggerNotifier;->onStatusChanged(Lcom/mega/update/manager/Result;)V

    .line 265
    iget-object v4, p0, Lcom/mega/update/protocol/TboxUpdateProtocol;->tempPackage:Ljava/lang/String;

    invoke-static {v4}, Lcom/mega/update/util/FileHelper;->delete(Ljava/lang/String;)Z

    goto :goto_1

    .line 257
    .end local v1    # "notifier":Lcom/mega/update/manager/ITriggerNotifier;
    .end local v2    # "resultInfo":Lcom/mega/update/protocol/TboxUpdateProtocol$PARAMS$ResultInfo;
    .end local v3    # "res":Lcom/mega/update/manager/Result;
    :cond_1
    :goto_0
    nop

    .line 267
    :goto_1
    return-void
.end method

.method public reboot(Lcom/mega/update/info/ManifestInfo$DeviceInfo;)Lcom/mega/update/manager/Result;
    .locals 3
    .param p1, "info"    # Lcom/mega/update/info/ManifestInfo$DeviceInfo;

    .line 217
    new-instance v0, Lcom/mega/update/manager/Result;

    const/4 v1, 0x0

    const-string v2, "ok"

    invoke-direct {v0, v1, v2}, Lcom/mega/update/manager/Result;-><init>(ILjava/lang/String;)V

    .line 218
    .local v0, "res":Lcom/mega/update/manager/Result;
    return-object v0
.end method

.method public reset(Lcom/mega/update/info/ManifestInfo$DeviceInfo;)Lcom/mega/update/manager/Result;
    .locals 3
    .param p1, "info"    # Lcom/mega/update/info/ManifestInfo$DeviceInfo;

    .line 211
    new-instance v0, Lcom/mega/update/manager/Result;

    const/4 v1, 0x0

    const-string v2, "ok"

    invoke-direct {v0, v1, v2}, Lcom/mega/update/manager/Result;-><init>(ILjava/lang/String;)V

    .line 212
    .local v0, "res":Lcom/mega/update/manager/Result;
    return-object v0
.end method

.method public rollback(Lcom/mega/update/info/ManifestInfo$DeviceInfo;Lcom/mega/update/manager/ITriggerNotifier;)Lcom/mega/update/manager/Result;
    .locals 3
    .param p1, "info"    # Lcom/mega/update/info/ManifestInfo$DeviceInfo;
    .param p2, "notifier"    # Lcom/mega/update/manager/ITriggerNotifier;

    .line 205
    new-instance v0, Lcom/mega/update/manager/Result;

    const/4 v1, -0x1

    const-string v2, "tbox rollback not support"

    invoke-direct {v0, v1, v2}, Lcom/mega/update/manager/Result;-><init>(ILjava/lang/String;)V

    .line 206
    .local v0, "res":Lcom/mega/update/manager/Result;
    return-object v0
.end method

.method public start(Lcom/mega/update/info/ManifestInfo$DeviceInfo;Lcom/mega/update/manager/ITriggerNotifier;)Lcom/mega/update/manager/Result;
    .locals 10
    .param p1, "info"    # Lcom/mega/update/info/ManifestInfo$DeviceInfo;
    .param p2, "notifier"    # Lcom/mega/update/manager/ITriggerNotifier;

    .line 144
    const-string v7, "update.zip"

    .line 145
    .local v7, "tempName":Ljava/lang/String;
    iget-object v1, p1, Lcom/mega/update/info/ManifestInfo$DeviceInfo;->package_file:Ljava/lang/String;

    iget-wide v2, p1, Lcom/mega/update/info/ManifestInfo$DeviceInfo;->package_offset:J

    iget-wide v4, p1, Lcom/mega/update/info/ManifestInfo$DeviceInfo;->filesize:J

    move-object v0, p0

    move-object v6, v7

    invoke-direct/range {v0 .. v6}, Lcom/mega/update/protocol/TboxUpdateProtocol;->cpFile(Ljava/lang/String;JJLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 146
    .local v0, "tempPackage":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, -0x1

    if-eqz v1, :cond_0

    .line 147
    new-instance v1, Lcom/mega/update/manager/Result;

    const-string v3, "send tbox package error"

    invoke-direct {v1, v2, v3}, Lcom/mega/update/manager/Result;-><init>(ILjava/lang/String;)V

    return-object v1

    .line 149
    :cond_0
    new-instance v1, Lcom/mega/update/manager/Result;

    const-string v3, "tbox start error"

    invoke-direct {v1, v2, v3}, Lcom/mega/update/manager/Result;-><init>(ILjava/lang/String;)V

    .line 150
    .local v1, "res":Lcom/mega/update/manager/Result;
    new-instance v2, Lcom/mega/update/protocol/TboxUpdateProtocol$PARAMS$UpdateJson;

    iget-object v3, p1, Lcom/mega/update/info/ManifestInfo$DeviceInfo;->sha256:Ljava/lang/String;

    invoke-direct {v2, v0, v3}, Lcom/mega/update/protocol/TboxUpdateProtocol$PARAMS$UpdateJson;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    .local v2, "json":Lcom/mega/update/protocol/TboxUpdateProtocol$PARAMS$UpdateJson;
    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v3, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 153
    .local v3, "jsonStr":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lcom/mega/update/rpc/MegaConnector;->self()Lcom/mega/update/rpc/MegaConnector;

    move-result-object v4

    const-string v5, "update/tbox/start/req"

    const-string v6, "update/tbox/start/res"

    const/16 v8, 0x1388

    invoke-virtual {v4, v5, v3, v6, v8}, Lcom/mega/update/rpc/MegaConnector;->request(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v4

    .line 158
    .local v4, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    new-instance v5, Ljava/lang/String;

    invoke-static {v4}, Lcom/google/common/primitives/Bytes;->toArray(Ljava/util/Collection;)[B

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>([B)V

    .line 159
    .local v5, "msg":Ljava/lang/String;
    new-instance v6, Lcom/google/gson/Gson;

    invoke-direct {v6}, Lcom/google/gson/Gson;-><init>()V

    new-instance v8, Lcom/mega/update/protocol/TboxUpdateProtocol$1;

    invoke-direct {v8, p0}, Lcom/mega/update/protocol/TboxUpdateProtocol$1;-><init>(Lcom/mega/update/protocol/TboxUpdateProtocol;)V

    .line 160
    invoke-virtual {v8}, Lcom/mega/update/protocol/TboxUpdateProtocol$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v8

    .line 159
    invoke-virtual {v6, v5, v8}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/mega/update/protocol/TboxUpdateProtocol$PARAMS$ResultInfo;

    .line 161
    .local v6, "ri":Lcom/mega/update/protocol/TboxUpdateProtocol$PARAMS$ResultInfo;
    iget v8, v6, Lcom/mega/update/protocol/TboxUpdateProtocol$PARAMS$ResultInfo;->ecu_result:I

    if-nez v8, :cond_1

    .line 162
    const/4 v8, 0x0

    iput v8, v1, Lcom/mega/update/manager/Result;->ret:I

    .line 163
    const-string v8, "OK"

    iput-object v8, v1, Lcom/mega/update/manager/Result;->desc:Ljava/lang/String;

    .line 164
    iput-object p2, p0, Lcom/mega/update/protocol/TboxUpdateProtocol;->mCallback:Lcom/mega/update/manager/ITriggerNotifier;

    goto :goto_0

    .line 166
    :cond_1
    const/4 v8, -0x2

    iput v8, v1, Lcom/mega/update/manager/Result;->ret:I

    .line 167
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "tbox start fail: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v6, Lcom/mega/update/protocol/TboxUpdateProtocol$PARAMS$ResultInfo;->ecu_desc:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v1, Lcom/mega/update/manager/Result;->desc:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 172
    .end local v4    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    .end local v5    # "msg":Ljava/lang/String;
    .end local v6    # "ri":Lcom/mega/update/protocol/TboxUpdateProtocol$PARAMS$ResultInfo;
    :goto_0
    goto :goto_1

    .line 169
    :catch_0
    move-exception v4

    .line 170
    .local v4, "e":Ljava/lang/Exception;
    const/4 v5, -0x3

    iput v5, v1, Lcom/mega/update/manager/Result;->ret:I

    .line 171
    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/mega/update/manager/Result;->desc:Ljava/lang/String;

    .line 173
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_1
    return-object v1
.end method

.method public version(Lcom/mega/update/info/ManifestInfo$DeviceInfo;)Lcom/mega/update/manager/Result;
    .locals 6
    .param p1, "info"    # Lcom/mega/update/info/ManifestInfo$DeviceInfo;

    .line 223
    new-instance v0, Lcom/mega/update/manager/Result;

    const/4 v1, -0x1

    const-string v2, "tbox get version error"

    invoke-direct {v0, v1, v2}, Lcom/mega/update/manager/Result;-><init>(ILjava/lang/String;)V

    .line 225
    .local v0, "res":Lcom/mega/update/manager/Result;
    :try_start_0
    invoke-static {}, Lcom/mega/update/rpc/MegaConnector;->self()Lcom/mega/update/rpc/MegaConnector;

    move-result-object v1

    const-string v2, "update/tbox/version/req"

    const-string v3, "1"

    const-string v4, "update/tbox/version/res"

    const/16 v5, 0x1388

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/mega/update/rpc/MegaConnector;->request(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v1

    .line 230
    .local v1, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    new-instance v2, Ljava/lang/String;

    invoke-static {v1}, Lcom/google/common/primitives/Bytes;->toArray(Ljava/util/Collection;)[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    .line 231
    .local v2, "msg":Ljava/lang/String;
    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    new-instance v4, Lcom/mega/update/protocol/TboxUpdateProtocol$3;

    invoke-direct {v4, p0}, Lcom/mega/update/protocol/TboxUpdateProtocol$3;-><init>(Lcom/mega/update/protocol/TboxUpdateProtocol;)V

    invoke-virtual {v4}, Lcom/mega/update/protocol/TboxUpdateProtocol$3;->getType()Ljava/lang/reflect/Type;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mega/update/protocol/TboxUpdateProtocol$PARAMS$VersionInfo;

    .line 232
    .local v3, "ver":Lcom/mega/update/protocol/TboxUpdateProtocol$PARAMS$VersionInfo;
    iget v4, v3, Lcom/mega/update/protocol/TboxUpdateProtocol$PARAMS$VersionInfo;->ecu_result:I

    if-nez v4, :cond_0

    .line 233
    const/4 v4, 0x0

    iput v4, v0, Lcom/mega/update/manager/Result;->ret:I

    .line 234
    const-string v4, "OK"

    iput-object v4, v0, Lcom/mega/update/manager/Result;->desc:Ljava/lang/String;

    .line 235
    iget-object v4, v3, Lcom/mega/update/protocol/TboxUpdateProtocol$PARAMS$VersionInfo;->ecu_vendor_id:Ljava/lang/String;

    iput-object v4, p1, Lcom/mega/update/info/ManifestInfo$DeviceInfo;->current_vendor_id:Ljava/lang/String;

    .line 236
    iget-object v4, v3, Lcom/mega/update/protocol/TboxUpdateProtocol$PARAMS$VersionInfo;->ecu_soft_version:Ljava/lang/String;

    iput-object v4, p1, Lcom/mega/update/info/ManifestInfo$DeviceInfo;->current_version:Ljava/lang/String;

    .line 237
    iget-object v4, v3, Lcom/mega/update/protocol/TboxUpdateProtocol$PARAMS$VersionInfo;->ecu_slot_version:Ljava/lang/String;

    iput-object v4, p1, Lcom/mega/update/info/ManifestInfo$DeviceInfo;->current_slot:Ljava/lang/String;

    goto :goto_0

    .line 239
    :cond_0
    const/4 v4, -0x2

    iput v4, v0, Lcom/mega/update/manager/Result;->ret:I

    .line 240
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "tbox get version fail: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v3, Lcom/mega/update/protocol/TboxUpdateProtocol$PARAMS$VersionInfo;->ecu_desc:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/mega/update/manager/Result;->desc:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 245
    .end local v1    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    .end local v2    # "msg":Ljava/lang/String;
    .end local v3    # "ver":Lcom/mega/update/protocol/TboxUpdateProtocol$PARAMS$VersionInfo;
    :goto_0
    goto :goto_1

    .line 242
    :catch_0
    move-exception v1

    .line 243
    .local v1, "e":Ljava/lang/Exception;
    const/4 v2, -0x3

    iput v2, v0, Lcom/mega/update/manager/Result;->ret:I

    .line 244
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/mega/update/manager/Result;->desc:Ljava/lang/String;

    .line 246
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    return-object v0
.end method
