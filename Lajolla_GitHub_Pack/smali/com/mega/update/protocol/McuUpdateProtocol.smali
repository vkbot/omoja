.class public Lcom/mega/update/protocol/McuUpdateProtocol;
.super Lcom/mega/update/protocol/IUpdateProtocol;
.source "McuUpdateProtocol.java"

# interfaces
.implements Lcom/mega/update/rpc/MegaConnector$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mega/update/protocol/McuUpdateProtocol$TOPICS;,
        Lcom/mega/update/protocol/McuUpdateProtocol$PARAMS;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field update:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    const-class v0, Lcom/mega/update/protocol/McuUpdateProtocol;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mega/update/protocol/McuUpdateProtocol;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 86
    invoke-direct {p0}, Lcom/mega/update/protocol/IUpdateProtocol;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput v0, p0, Lcom/mega/update/protocol/McuUpdateProtocol;->update:I

    .line 87
    invoke-static {}, Lcom/mega/update/rpc/MegaConnector;->self()Lcom/mega/update/rpc/MegaConnector;

    move-result-object v0

    const-string v1, "update/mcu/progress"

    invoke-virtual {v0, p0, v1}, Lcom/mega/update/rpc/MegaConnector;->addCallback(Lcom/mega/update/rpc/MegaConnector$Callback;Ljava/lang/String;)V

    .line 88
    invoke-static {}, Lcom/mega/update/rpc/MegaConnector;->self()Lcom/mega/update/rpc/MegaConnector;

    move-result-object v0

    const-string v1, "update/mcu/result"

    invoke-virtual {v0, p0, v1}, Lcom/mega/update/rpc/MegaConnector;->addCallback(Lcom/mega/update/rpc/MegaConnector$Callback;Ljava/lang/String;)V

    .line 89
    return-void
.end method


# virtual methods
.method public active(Lcom/mega/update/info/ManifestInfo$DeviceInfo;Lcom/mega/update/manager/ITriggerNotifier;)Lcom/mega/update/manager/Result;
    .locals 8
    .param p1, "info"    # Lcom/mega/update/info/ManifestInfo$DeviceInfo;
    .param p2, "notifier"    # Lcom/mega/update/manager/ITriggerNotifier;

    .line 125
    new-instance v0, Lcom/mega/update/manager/Result;

    const/4 v1, -0x1

    const-string v2, "mcu active error"

    invoke-direct {v0, v1, v2}, Lcom/mega/update/manager/Result;-><init>(ILjava/lang/String;)V

    .line 126
    .local v0, "res":Lcom/mega/update/manager/Result;
    iget v1, p0, Lcom/mega/update/protocol/McuUpdateProtocol;->update:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    .line 127
    iput v3, v0, Lcom/mega/update/manager/Result;->ret:I

    .line 128
    const-string v1, "ok"

    iput-object v1, v0, Lcom/mega/update/manager/Result;->desc:Ljava/lang/String;

    goto :goto_1

    .line 131
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/mega/update/rpc/MegaConnector;->self()Lcom/mega/update/rpc/MegaConnector;

    move-result-object v1

    const-string v4, "update/mcu/active/req"

    const-string v5, "1"

    const-string v6, "update/mcu/active/res"

    const/16 v7, 0x1388

    invoke-virtual {v1, v4, v5, v6, v7}, Lcom/mega/update/rpc/MegaConnector;->request(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v1

    .line 136
    .local v1, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    new-instance v4, Ljava/lang/String;

    invoke-static {v1}, Lcom/google/common/primitives/Bytes;->toArray(Ljava/util/Collection;)[B

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([B)V

    .line 137
    .local v4, "msg":Ljava/lang/String;
    new-instance v5, Lcom/google/gson/Gson;

    invoke-direct {v5}, Lcom/google/gson/Gson;-><init>()V

    new-instance v6, Lcom/mega/update/protocol/McuUpdateProtocol$2;

    invoke-direct {v6, p0}, Lcom/mega/update/protocol/McuUpdateProtocol$2;-><init>(Lcom/mega/update/protocol/McuUpdateProtocol;)V

    .line 138
    invoke-virtual {v6}, Lcom/mega/update/protocol/McuUpdateProtocol$2;->getType()Ljava/lang/reflect/Type;

    move-result-object v6

    .line 137
    invoke-virtual {v5, v4, v6}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mega/update/protocol/McuUpdateProtocol$PARAMS$ResultInfo;

    .line 139
    .local v5, "ri":Lcom/mega/update/protocol/McuUpdateProtocol$PARAMS$ResultInfo;
    iget v6, v5, Lcom/mega/update/protocol/McuUpdateProtocol$PARAMS$ResultInfo;->mcu_result:I

    if-nez v6, :cond_1

    .line 140
    iput v3, v0, Lcom/mega/update/manager/Result;->ret:I

    .line 141
    const-string v3, "OK"

    iput-object v3, v0, Lcom/mega/update/manager/Result;->desc:Ljava/lang/String;

    .line 142
    iput v2, p0, Lcom/mega/update/protocol/McuUpdateProtocol;->update:I

    goto :goto_0

    .line 144
    :cond_1
    const/4 v2, -0x2

    iput v2, v0, Lcom/mega/update/manager/Result;->ret:I

    .line 145
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mcu reset fail "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/mega/update/manager/Result;->desc:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    .end local v1    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    .end local v4    # "msg":Ljava/lang/String;
    .end local v5    # "ri":Lcom/mega/update/protocol/McuUpdateProtocol$PARAMS$ResultInfo;
    :goto_0
    goto :goto_1

    .line 147
    :catch_0
    move-exception v1

    .line 148
    .local v1, "e":Ljava/lang/Exception;
    const/4 v2, -0x3

    iput v2, v0, Lcom/mega/update/manager/Result;->ret:I

    .line 149
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/mega/update/manager/Result;->desc:Ljava/lang/String;

    .line 152
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    invoke-interface {p2, v0}, Lcom/mega/update/manager/ITriggerNotifier;->onStatusChanged(Lcom/mega/update/manager/Result;)V

    .line 153
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

    .line 230
    .local p2, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    new-instance v0, Ljava/lang/String;

    invoke-static {p2}, Lcom/google/common/primitives/Bytes;->toArray(Ljava/util/Collection;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .line 231
    .local v0, "mesg":Ljava/lang/String;
    const-string v1, "update/mcu/progress"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mega/update/protocol/McuUpdateProtocol;->mCallback:Lcom/mega/update/manager/ITriggerNotifier;

    if-eqz v1, :cond_0

    .line 233
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    new-instance v2, Lcom/mega/update/protocol/McuUpdateProtocol$5;

    invoke-direct {v2, p0}, Lcom/mega/update/protocol/McuUpdateProtocol$5;-><init>(Lcom/mega/update/protocol/McuUpdateProtocol;)V

    .line 234
    invoke-virtual {v2}, Lcom/mega/update/protocol/McuUpdateProtocol$5;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 233
    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mega/update/protocol/McuUpdateProtocol$PARAMS$ProgressInfo;

    .line 235
    .local v1, "progressInfo":Lcom/mega/update/protocol/McuUpdateProtocol$PARAMS$ProgressInfo;
    iget-object v2, p0, Lcom/mega/update/protocol/McuUpdateProtocol;->mCallback:Lcom/mega/update/manager/ITriggerNotifier;

    iget v3, v1, Lcom/mega/update/protocol/McuUpdateProtocol$PARAMS$ProgressInfo;->mcu_progress:I

    invoke-interface {v2, v3}, Lcom/mega/update/manager/ITriggerNotifier;->onProgressChanged(I)V

    .end local v1    # "progressInfo":Lcom/mega/update/protocol/McuUpdateProtocol$PARAMS$ProgressInfo;
    goto :goto_0

    .line 237
    :cond_0
    const-string v1, "update/mcu/result"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/mega/update/protocol/McuUpdateProtocol;->mCallback:Lcom/mega/update/manager/ITriggerNotifier;

    if-eqz v1, :cond_1

    .line 239
    iget-object v1, p0, Lcom/mega/update/protocol/McuUpdateProtocol;->mCallback:Lcom/mega/update/manager/ITriggerNotifier;

    .line 240
    .local v1, "notifier":Lcom/mega/update/manager/ITriggerNotifier;
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/mega/update/protocol/McuUpdateProtocol;->mCallback:Lcom/mega/update/manager/ITriggerNotifier;

    .line 241
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    new-instance v3, Lcom/mega/update/protocol/McuUpdateProtocol$6;

    invoke-direct {v3, p0}, Lcom/mega/update/protocol/McuUpdateProtocol$6;-><init>(Lcom/mega/update/protocol/McuUpdateProtocol;)V

    .line 242
    invoke-virtual {v3}, Lcom/mega/update/protocol/McuUpdateProtocol$6;->getType()Ljava/lang/reflect/Type;

    move-result-object v3

    .line 241
    invoke-virtual {v2, v0, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mega/update/protocol/McuUpdateProtocol$PARAMS$ResultInfo;

    .line 243
    .local v2, "ri":Lcom/mega/update/protocol/McuUpdateProtocol$PARAMS$ResultInfo;
    new-instance v3, Lcom/mega/update/manager/Result;

    iget v4, v2, Lcom/mega/update/protocol/McuUpdateProtocol$PARAMS$ResultInfo;->mcu_result:I

    iget-object v5, v2, Lcom/mega/update/protocol/McuUpdateProtocol$PARAMS$ResultInfo;->mcu_desc:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Lcom/mega/update/manager/Result;-><init>(ILjava/lang/String;)V

    .line 244
    .local v3, "res":Lcom/mega/update/manager/Result;
    invoke-interface {v1, v3}, Lcom/mega/update/manager/ITriggerNotifier;->onStatusChanged(Lcom/mega/update/manager/Result;)V

    goto :goto_1

    .line 237
    .end local v1    # "notifier":Lcom/mega/update/manager/ITriggerNotifier;
    .end local v2    # "ri":Lcom/mega/update/protocol/McuUpdateProtocol$PARAMS$ResultInfo;
    .end local v3    # "res":Lcom/mega/update/manager/Result;
    :cond_1
    :goto_0
    nop

    .line 246
    :goto_1
    return-void
.end method

.method public reboot(Lcom/mega/update/info/ManifestInfo$DeviceInfo;)Lcom/mega/update/manager/Result;
    .locals 3
    .param p1, "info"    # Lcom/mega/update/info/ManifestInfo$DeviceInfo;

    .line 196
    new-instance v0, Lcom/mega/update/manager/Result;

    const/4 v1, 0x0

    const-string v2, "ok"

    invoke-direct {v0, v1, v2}, Lcom/mega/update/manager/Result;-><init>(ILjava/lang/String;)V

    .line 197
    .local v0, "res":Lcom/mega/update/manager/Result;
    return-object v0
.end method

.method public reset(Lcom/mega/update/info/ManifestInfo$DeviceInfo;)Lcom/mega/update/manager/Result;
    .locals 7
    .param p1, "info"    # Lcom/mega/update/info/ManifestInfo$DeviceInfo;

    .line 164
    new-instance v0, Lcom/mega/update/manager/Result;

    const/4 v1, -0x1

    const-string v2, "mcu reset error"

    invoke-direct {v0, v1, v2}, Lcom/mega/update/manager/Result;-><init>(ILjava/lang/String;)V

    .line 165
    .local v0, "res":Lcom/mega/update/manager/Result;
    iget v1, p0, Lcom/mega/update/protocol/McuUpdateProtocol;->update:I

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 166
    iput v2, v0, Lcom/mega/update/manager/Result;->ret:I

    .line 167
    const-string v1, "ok"

    iput-object v1, v0, Lcom/mega/update/manager/Result;->desc:Ljava/lang/String;

    goto :goto_1

    .line 168
    :cond_0
    const/4 v3, 0x1

    if-ne v1, v3, :cond_2

    .line 170
    :try_start_0
    invoke-static {}, Lcom/mega/update/rpc/MegaConnector;->self()Lcom/mega/update/rpc/MegaConnector;

    move-result-object v1

    const-string v3, "update/mcu/inactive/req"

    const-string v4, "1"

    const-string v5, "update/mcu/inactive/res"

    const/16 v6, 0x1388

    invoke-virtual {v1, v3, v4, v5, v6}, Lcom/mega/update/rpc/MegaConnector;->request(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v1

    .line 175
    .local v1, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    new-instance v3, Ljava/lang/String;

    invoke-static {v1}, Lcom/google/common/primitives/Bytes;->toArray(Ljava/util/Collection;)[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([B)V

    .line 176
    .local v3, "msg":Ljava/lang/String;
    new-instance v4, Lcom/google/gson/Gson;

    invoke-direct {v4}, Lcom/google/gson/Gson;-><init>()V

    new-instance v5, Lcom/mega/update/protocol/McuUpdateProtocol$3;

    invoke-direct {v5, p0}, Lcom/mega/update/protocol/McuUpdateProtocol$3;-><init>(Lcom/mega/update/protocol/McuUpdateProtocol;)V

    .line 177
    invoke-virtual {v5}, Lcom/mega/update/protocol/McuUpdateProtocol$3;->getType()Ljava/lang/reflect/Type;

    move-result-object v5

    .line 176
    invoke-virtual {v4, v3, v5}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mega/update/protocol/McuUpdateProtocol$PARAMS$ResultInfo;

    .line 178
    .local v4, "ri":Lcom/mega/update/protocol/McuUpdateProtocol$PARAMS$ResultInfo;
    iget v5, v4, Lcom/mega/update/protocol/McuUpdateProtocol$PARAMS$ResultInfo;->mcu_result:I

    if-nez v5, :cond_1

    .line 179
    iput v2, v0, Lcom/mega/update/manager/Result;->ret:I

    .line 180
    const-string v5, "OK"

    iput-object v5, v0, Lcom/mega/update/manager/Result;->desc:Ljava/lang/String;

    .line 181
    iput v2, p0, Lcom/mega/update/protocol/McuUpdateProtocol;->update:I

    goto :goto_0

    .line 183
    :cond_1
    const/4 v5, -0x2

    iput v5, v0, Lcom/mega/update/manager/Result;->ret:I

    .line 184
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mcu reset fail "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/mega/update/manager/Result;->desc:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 189
    .end local v1    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    .end local v3    # "msg":Ljava/lang/String;
    .end local v4    # "ri":Lcom/mega/update/protocol/McuUpdateProtocol$PARAMS$ResultInfo;
    :goto_0
    goto :goto_1

    .line 186
    :catch_0
    move-exception v1

    .line 187
    .local v1, "e":Ljava/lang/Exception;
    const/4 v2, -0x3

    iput v2, v0, Lcom/mega/update/manager/Result;->ret:I

    .line 188
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/mega/update/manager/Result;->desc:Ljava/lang/String;

    .line 191
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_1
    return-object v0
.end method

.method public rollback(Lcom/mega/update/info/ManifestInfo$DeviceInfo;Lcom/mega/update/manager/ITriggerNotifier;)Lcom/mega/update/manager/Result;
    .locals 3
    .param p1, "info"    # Lcom/mega/update/info/ManifestInfo$DeviceInfo;
    .param p2, "notifier"    # Lcom/mega/update/manager/ITriggerNotifier;

    .line 158
    new-instance v0, Lcom/mega/update/manager/Result;

    const/4 v1, -0x1

    const-string v2, "mcu rollback not support"

    invoke-direct {v0, v1, v2}, Lcom/mega/update/manager/Result;-><init>(ILjava/lang/String;)V

    .line 159
    .local v0, "res":Lcom/mega/update/manager/Result;
    return-object v0
.end method

.method public start(Lcom/mega/update/info/ManifestInfo$DeviceInfo;Lcom/mega/update/manager/ITriggerNotifier;)Lcom/mega/update/manager/Result;
    .locals 8
    .param p1, "info"    # Lcom/mega/update/info/ManifestInfo$DeviceInfo;
    .param p2, "notifier"    # Lcom/mega/update/manager/ITriggerNotifier;

    .line 93
    iget-object v0, p1, Lcom/mega/update/info/ManifestInfo$DeviceInfo;->package_file:Ljava/lang/String;

    iget-wide v1, p1, Lcom/mega/update/info/ManifestInfo$DeviceInfo;->package_offset:J

    iget-object v3, p1, Lcom/mega/update/info/ManifestInfo$DeviceInfo;->filename:Ljava/lang/String;

    iget-wide v4, p1, Lcom/mega/update/info/ManifestInfo$DeviceInfo;->filesize:J

    invoke-static/range {v0 .. v5}, Lcom/mega/update/util/FileHelper;->socketSendFile(Ljava/lang/String;JLjava/lang/String;J)Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 94
    new-instance v0, Lcom/mega/update/manager/Result;

    const-string v2, "send mcu package error"

    invoke-direct {v0, v1, v2}, Lcom/mega/update/manager/Result;-><init>(ILjava/lang/String;)V

    return-object v0

    .line 96
    :cond_0
    new-instance v0, Lcom/mega/update/manager/Result;

    const-string v2, "mcu start error"

    invoke-direct {v0, v1, v2}, Lcom/mega/update/manager/Result;-><init>(ILjava/lang/String;)V

    .line 97
    .local v0, "res":Lcom/mega/update/manager/Result;
    new-instance v1, Lcom/mega/update/protocol/McuUpdateProtocol$PARAMS$UpdateJson;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/ota/android/package/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/mega/update/info/ManifestInfo$DeviceInfo;->filename:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/mega/update/info/ManifestInfo$DeviceInfo;->sha256:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/mega/update/protocol/McuUpdateProtocol$PARAMS$UpdateJson;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    .local v1, "json":Lcom/mega/update/protocol/McuUpdateProtocol$PARAMS$UpdateJson;
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v2, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 100
    .local v2, "jsonStr":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lcom/mega/update/rpc/MegaConnector;->self()Lcom/mega/update/rpc/MegaConnector;

    move-result-object v3

    const-string v4, "update/mcu/start/req"

    const-string v5, "update/mcu/start/res"

    const/16 v6, 0x1388

    invoke-virtual {v3, v4, v2, v5, v6}, Lcom/mega/update/rpc/MegaConnector;->request(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v3

    .line 105
    .local v3, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    new-instance v4, Ljava/lang/String;

    invoke-static {v3}, Lcom/google/common/primitives/Bytes;->toArray(Ljava/util/Collection;)[B

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([B)V

    .line 106
    .local v4, "msg":Ljava/lang/String;
    new-instance v5, Lcom/google/gson/Gson;

    invoke-direct {v5}, Lcom/google/gson/Gson;-><init>()V

    new-instance v6, Lcom/mega/update/protocol/McuUpdateProtocol$1;

    invoke-direct {v6, p0}, Lcom/mega/update/protocol/McuUpdateProtocol$1;-><init>(Lcom/mega/update/protocol/McuUpdateProtocol;)V

    .line 107
    invoke-virtual {v6}, Lcom/mega/update/protocol/McuUpdateProtocol$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v6

    .line 106
    invoke-virtual {v5, v4, v6}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mega/update/protocol/McuUpdateProtocol$PARAMS$ResultInfo;

    .line 108
    .local v5, "ri":Lcom/mega/update/protocol/McuUpdateProtocol$PARAMS$ResultInfo;
    iget v6, v5, Lcom/mega/update/protocol/McuUpdateProtocol$PARAMS$ResultInfo;->mcu_result:I

    if-nez v6, :cond_1

    .line 109
    const/4 v6, 0x0

    iput v6, v0, Lcom/mega/update/manager/Result;->ret:I

    .line 110
    const-string v6, "OK"

    iput-object v6, v0, Lcom/mega/update/manager/Result;->desc:Ljava/lang/String;

    .line 111
    iput-object p2, p0, Lcom/mega/update/protocol/McuUpdateProtocol;->mCallback:Lcom/mega/update/manager/ITriggerNotifier;

    goto :goto_0

    .line 113
    :cond_1
    const/4 v6, -0x2

    iput v6, v0, Lcom/mega/update/manager/Result;->ret:I

    .line 114
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mcu start fail: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v5, Lcom/mega/update/protocol/McuUpdateProtocol$PARAMS$ResultInfo;->mcu_desc:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/mega/update/manager/Result;->desc:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    .end local v3    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    .end local v4    # "msg":Ljava/lang/String;
    .end local v5    # "ri":Lcom/mega/update/protocol/McuUpdateProtocol$PARAMS$ResultInfo;
    :goto_0
    goto :goto_1

    .line 116
    :catch_0
    move-exception v3

    .line 117
    .local v3, "e":Ljava/lang/Exception;
    const/4 v4, -0x3

    iput v4, v0, Lcom/mega/update/manager/Result;->ret:I

    .line 118
    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/mega/update/manager/Result;->desc:Ljava/lang/String;

    .line 120
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_1
    return-object v0
.end method

.method public version(Lcom/mega/update/info/ManifestInfo$DeviceInfo;)Lcom/mega/update/manager/Result;
    .locals 6
    .param p1, "info"    # Lcom/mega/update/info/ManifestInfo$DeviceInfo;

    .line 202
    new-instance v0, Lcom/mega/update/manager/Result;

    const/4 v1, -0x1

    const-string v2, "mcu get version error"

    invoke-direct {v0, v1, v2}, Lcom/mega/update/manager/Result;-><init>(ILjava/lang/String;)V

    .line 204
    .local v0, "res":Lcom/mega/update/manager/Result;
    :try_start_0
    invoke-static {}, Lcom/mega/update/rpc/MegaConnector;->self()Lcom/mega/update/rpc/MegaConnector;

    move-result-object v1

    const-string v2, "update/mcu/version/req"

    const-string v3, "1"

    const-string v4, "update/mcu/version/res"

    const/16 v5, 0x1388

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/mega/update/rpc/MegaConnector;->request(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v1

    .line 209
    .local v1, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    new-instance v2, Ljava/lang/String;

    invoke-static {v1}, Lcom/google/common/primitives/Bytes;->toArray(Ljava/util/Collection;)[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    .line 210
    .local v2, "msg":Ljava/lang/String;
    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    new-instance v4, Lcom/mega/update/protocol/McuUpdateProtocol$4;

    invoke-direct {v4, p0}, Lcom/mega/update/protocol/McuUpdateProtocol$4;-><init>(Lcom/mega/update/protocol/McuUpdateProtocol;)V

    invoke-virtual {v4}, Lcom/mega/update/protocol/McuUpdateProtocol$4;->getType()Ljava/lang/reflect/Type;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mega/update/protocol/McuUpdateProtocol$PARAMS$VersionInfo;

    .line 211
    .local v3, "ver":Lcom/mega/update/protocol/McuUpdateProtocol$PARAMS$VersionInfo;
    iget v4, v3, Lcom/mega/update/protocol/McuUpdateProtocol$PARAMS$VersionInfo;->ecu_result:I

    if-nez v4, :cond_0

    .line 212
    const/4 v4, 0x0

    iput v4, v0, Lcom/mega/update/manager/Result;->ret:I

    .line 213
    const-string v4, "OK"

    iput-object v4, v0, Lcom/mega/update/manager/Result;->desc:Ljava/lang/String;

    .line 214
    iget-object v4, v3, Lcom/mega/update/protocol/McuUpdateProtocol$PARAMS$VersionInfo;->ecu_vendor_id:Ljava/lang/String;

    iput-object v4, p1, Lcom/mega/update/info/ManifestInfo$DeviceInfo;->current_vendor_id:Ljava/lang/String;

    .line 215
    iget-object v4, v3, Lcom/mega/update/protocol/McuUpdateProtocol$PARAMS$VersionInfo;->ecu_soft_version:Ljava/lang/String;

    iput-object v4, p1, Lcom/mega/update/info/ManifestInfo$DeviceInfo;->current_version:Ljava/lang/String;

    .line 216
    iget-object v4, v3, Lcom/mega/update/protocol/McuUpdateProtocol$PARAMS$VersionInfo;->ecu_slot_version:Ljava/lang/String;

    iput-object v4, p1, Lcom/mega/update/info/ManifestInfo$DeviceInfo;->current_slot:Ljava/lang/String;

    goto :goto_0

    .line 218
    :cond_0
    const/4 v4, -0x2

    iput v4, v0, Lcom/mega/update/manager/Result;->ret:I

    .line 219
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mcu get version fail: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v3, Lcom/mega/update/protocol/McuUpdateProtocol$PARAMS$VersionInfo;->ecu_desc:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/mega/update/manager/Result;->desc:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 224
    .end local v1    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    .end local v2    # "msg":Ljava/lang/String;
    .end local v3    # "ver":Lcom/mega/update/protocol/McuUpdateProtocol$PARAMS$VersionInfo;
    :goto_0
    goto :goto_1

    .line 221
    :catch_0
    move-exception v1

    .line 222
    .local v1, "e":Ljava/lang/Exception;
    const/4 v2, -0x3

    iput v2, v0, Lcom/mega/update/manager/Result;->ret:I

    .line 223
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/mega/update/manager/Result;->desc:Ljava/lang/String;

    .line 225
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    return-object v0
.end method
