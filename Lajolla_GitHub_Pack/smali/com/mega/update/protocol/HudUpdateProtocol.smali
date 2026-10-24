.class public Lcom/mega/update/protocol/HudUpdateProtocol;
.super Lcom/mega/update/protocol/IUpdateProtocol;
.source "HudUpdateProtocol.java"

# interfaces
.implements Lcom/mega/update/rpc/MegaConnector$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mega/update/protocol/HudUpdateProtocol$TOPICS;,
        Lcom/mega/update/protocol/HudUpdateProtocol$PARAMS;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    const-class v0, Lcom/mega/update/protocol/HudUpdateProtocol;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mega/update/protocol/HudUpdateProtocol;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 82
    invoke-direct {p0}, Lcom/mega/update/protocol/IUpdateProtocol;-><init>()V

    .line 83
    invoke-static {}, Lcom/mega/update/rpc/MegaConnector;->self()Lcom/mega/update/rpc/MegaConnector;

    move-result-object v0

    const-string v1, "update/hud/progress"

    invoke-virtual {v0, p0, v1}, Lcom/mega/update/rpc/MegaConnector;->addCallback(Lcom/mega/update/rpc/MegaConnector$Callback;Ljava/lang/String;)V

    .line 84
    invoke-static {}, Lcom/mega/update/rpc/MegaConnector;->self()Lcom/mega/update/rpc/MegaConnector;

    move-result-object v0

    const-string v1, "update/hud/result"

    invoke-virtual {v0, p0, v1}, Lcom/mega/update/rpc/MegaConnector;->addCallback(Lcom/mega/update/rpc/MegaConnector$Callback;Ljava/lang/String;)V

    .line 85
    return-void
.end method


# virtual methods
.method public active(Lcom/mega/update/info/ManifestInfo$DeviceInfo;Lcom/mega/update/manager/ITriggerNotifier;)Lcom/mega/update/manager/Result;
    .locals 3
    .param p1, "info"    # Lcom/mega/update/info/ManifestInfo$DeviceInfo;
    .param p2, "notifier"    # Lcom/mega/update/manager/ITriggerNotifier;

    .line 121
    new-instance v0, Lcom/mega/update/manager/Result;

    const/4 v1, 0x0

    const-string v2, "ok"

    invoke-direct {v0, v1, v2}, Lcom/mega/update/manager/Result;-><init>(ILjava/lang/String;)V

    .line 122
    .local v0, "res":Lcom/mega/update/manager/Result;
    invoke-interface {p2, v0}, Lcom/mega/update/manager/ITriggerNotifier;->onStatusChanged(Lcom/mega/update/manager/Result;)V

    .line 123
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

    .line 174
    .local p2, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    new-instance v0, Ljava/lang/String;

    invoke-static {p2}, Lcom/google/common/primitives/Bytes;->toArray(Ljava/util/Collection;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .line 175
    .local v0, "mesg":Ljava/lang/String;
    const-string v1, "update/hud/progress"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mega/update/protocol/HudUpdateProtocol;->mCallback:Lcom/mega/update/manager/ITriggerNotifier;

    if-eqz v1, :cond_0

    .line 176
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    new-instance v2, Lcom/mega/update/protocol/HudUpdateProtocol$3;

    invoke-direct {v2, p0}, Lcom/mega/update/protocol/HudUpdateProtocol$3;-><init>(Lcom/mega/update/protocol/HudUpdateProtocol;)V

    .line 177
    invoke-virtual {v2}, Lcom/mega/update/protocol/HudUpdateProtocol$3;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 176
    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mega/update/protocol/HudUpdateProtocol$PARAMS$ProgressInfo;

    .line 178
    .local v1, "progressInfo":Lcom/mega/update/protocol/HudUpdateProtocol$PARAMS$ProgressInfo;
    iget-object v2, p0, Lcom/mega/update/protocol/HudUpdateProtocol;->mCallback:Lcom/mega/update/manager/ITriggerNotifier;

    iget v3, v1, Lcom/mega/update/protocol/HudUpdateProtocol$PARAMS$ProgressInfo;->ecu_progress:I

    invoke-interface {v2, v3}, Lcom/mega/update/manager/ITriggerNotifier;->onProgressChanged(I)V

    .end local v1    # "progressInfo":Lcom/mega/update/protocol/HudUpdateProtocol$PARAMS$ProgressInfo;
    goto :goto_0

    .line 180
    :cond_0
    const-string v1, "update/hud/result"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/mega/update/protocol/HudUpdateProtocol;->mCallback:Lcom/mega/update/manager/ITriggerNotifier;

    if-eqz v1, :cond_1

    .line 182
    iget-object v1, p0, Lcom/mega/update/protocol/HudUpdateProtocol;->mCallback:Lcom/mega/update/manager/ITriggerNotifier;

    .line 183
    .local v1, "notifier":Lcom/mega/update/manager/ITriggerNotifier;
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/mega/update/protocol/HudUpdateProtocol;->mCallback:Lcom/mega/update/manager/ITriggerNotifier;

    .line 184
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    new-instance v3, Lcom/mega/update/protocol/HudUpdateProtocol$4;

    invoke-direct {v3, p0}, Lcom/mega/update/protocol/HudUpdateProtocol$4;-><init>(Lcom/mega/update/protocol/HudUpdateProtocol;)V

    .line 185
    invoke-virtual {v3}, Lcom/mega/update/protocol/HudUpdateProtocol$4;->getType()Ljava/lang/reflect/Type;

    move-result-object v3

    .line 184
    invoke-virtual {v2, v0, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mega/update/protocol/HudUpdateProtocol$PARAMS$ResultInfo;

    .line 186
    .local v2, "resultInfo":Lcom/mega/update/protocol/HudUpdateProtocol$PARAMS$ResultInfo;
    new-instance v3, Lcom/mega/update/manager/Result;

    iget v4, v2, Lcom/mega/update/protocol/HudUpdateProtocol$PARAMS$ResultInfo;->ecu_result:I

    iget-object v5, v2, Lcom/mega/update/protocol/HudUpdateProtocol$PARAMS$ResultInfo;->ecu_desc:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Lcom/mega/update/manager/Result;-><init>(ILjava/lang/String;)V

    .line 187
    .local v3, "res":Lcom/mega/update/manager/Result;
    invoke-interface {v1, v3}, Lcom/mega/update/manager/ITriggerNotifier;->onStatusChanged(Lcom/mega/update/manager/Result;)V

    goto :goto_1

    .line 180
    .end local v1    # "notifier":Lcom/mega/update/manager/ITriggerNotifier;
    .end local v2    # "resultInfo":Lcom/mega/update/protocol/HudUpdateProtocol$PARAMS$ResultInfo;
    .end local v3    # "res":Lcom/mega/update/manager/Result;
    :cond_1
    :goto_0
    nop

    .line 189
    :goto_1
    return-void
.end method

.method public reboot(Lcom/mega/update/info/ManifestInfo$DeviceInfo;)Lcom/mega/update/manager/Result;
    .locals 3
    .param p1, "info"    # Lcom/mega/update/info/ManifestInfo$DeviceInfo;

    .line 140
    new-instance v0, Lcom/mega/update/manager/Result;

    const/4 v1, 0x0

    const-string v2, "ok"

    invoke-direct {v0, v1, v2}, Lcom/mega/update/manager/Result;-><init>(ILjava/lang/String;)V

    .line 141
    .local v0, "res":Lcom/mega/update/manager/Result;
    return-object v0
.end method

.method public reset(Lcom/mega/update/info/ManifestInfo$DeviceInfo;)Lcom/mega/update/manager/Result;
    .locals 3
    .param p1, "info"    # Lcom/mega/update/info/ManifestInfo$DeviceInfo;

    .line 134
    new-instance v0, Lcom/mega/update/manager/Result;

    const/4 v1, 0x0

    const-string v2, "ok"

    invoke-direct {v0, v1, v2}, Lcom/mega/update/manager/Result;-><init>(ILjava/lang/String;)V

    .line 135
    .local v0, "res":Lcom/mega/update/manager/Result;
    return-object v0
.end method

.method public rollback(Lcom/mega/update/info/ManifestInfo$DeviceInfo;Lcom/mega/update/manager/ITriggerNotifier;)Lcom/mega/update/manager/Result;
    .locals 3
    .param p1, "info"    # Lcom/mega/update/info/ManifestInfo$DeviceInfo;
    .param p2, "notifier"    # Lcom/mega/update/manager/ITriggerNotifier;

    .line 128
    new-instance v0, Lcom/mega/update/manager/Result;

    const/4 v1, -0x1

    const-string v2, "hud rollback not support"

    invoke-direct {v0, v1, v2}, Lcom/mega/update/manager/Result;-><init>(ILjava/lang/String;)V

    .line 129
    .local v0, "res":Lcom/mega/update/manager/Result;
    return-object v0
.end method

.method public start(Lcom/mega/update/info/ManifestInfo$DeviceInfo;Lcom/mega/update/manager/ITriggerNotifier;)Lcom/mega/update/manager/Result;
    .locals 8
    .param p1, "info"    # Lcom/mega/update/info/ManifestInfo$DeviceInfo;
    .param p2, "notifier"    # Lcom/mega/update/manager/ITriggerNotifier;

    .line 89
    iget-object v0, p1, Lcom/mega/update/info/ManifestInfo$DeviceInfo;->package_file:Ljava/lang/String;

    iget-wide v1, p1, Lcom/mega/update/info/ManifestInfo$DeviceInfo;->package_offset:J

    iget-object v3, p1, Lcom/mega/update/info/ManifestInfo$DeviceInfo;->filename:Ljava/lang/String;

    iget-wide v4, p1, Lcom/mega/update/info/ManifestInfo$DeviceInfo;->filesize:J

    invoke-static/range {v0 .. v5}, Lcom/mega/update/util/FileHelper;->socketSendFile(Ljava/lang/String;JLjava/lang/String;J)Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 90
    new-instance v0, Lcom/mega/update/manager/Result;

    const-string v2, "send hud package error"

    invoke-direct {v0, v1, v2}, Lcom/mega/update/manager/Result;-><init>(ILjava/lang/String;)V

    return-object v0

    .line 92
    :cond_0
    new-instance v0, Lcom/mega/update/manager/Result;

    const-string v2, "hud start error"

    invoke-direct {v0, v1, v2}, Lcom/mega/update/manager/Result;-><init>(ILjava/lang/String;)V

    .line 93
    .local v0, "res":Lcom/mega/update/manager/Result;
    new-instance v1, Lcom/mega/update/protocol/HudUpdateProtocol$PARAMS$UpdateJson;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/ota/android/package/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/mega/update/info/ManifestInfo$DeviceInfo;->filename:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/mega/update/info/ManifestInfo$DeviceInfo;->sha256:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/mega/update/protocol/HudUpdateProtocol$PARAMS$UpdateJson;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    .local v1, "json":Lcom/mega/update/protocol/HudUpdateProtocol$PARAMS$UpdateJson;
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v2, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 96
    .local v2, "jsonStr":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lcom/mega/update/rpc/MegaConnector;->self()Lcom/mega/update/rpc/MegaConnector;

    move-result-object v3

    const-string v4, "update/hud/start/req"

    const-string v5, "update/hud/start/res"

    const/16 v6, 0x1388

    invoke-virtual {v3, v4, v2, v5, v6}, Lcom/mega/update/rpc/MegaConnector;->request(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v3

    .line 101
    .local v3, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    new-instance v4, Ljava/lang/String;

    invoke-static {v3}, Lcom/google/common/primitives/Bytes;->toArray(Ljava/util/Collection;)[B

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([B)V

    .line 102
    .local v4, "msg":Ljava/lang/String;
    new-instance v5, Lcom/google/gson/Gson;

    invoke-direct {v5}, Lcom/google/gson/Gson;-><init>()V

    new-instance v6, Lcom/mega/update/protocol/HudUpdateProtocol$1;

    invoke-direct {v6, p0}, Lcom/mega/update/protocol/HudUpdateProtocol$1;-><init>(Lcom/mega/update/protocol/HudUpdateProtocol;)V

    .line 103
    invoke-virtual {v6}, Lcom/mega/update/protocol/HudUpdateProtocol$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v6

    .line 102
    invoke-virtual {v5, v4, v6}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mega/update/protocol/HudUpdateProtocol$PARAMS$ResultInfo;

    .line 104
    .local v5, "ri":Lcom/mega/update/protocol/HudUpdateProtocol$PARAMS$ResultInfo;
    iget v6, v5, Lcom/mega/update/protocol/HudUpdateProtocol$PARAMS$ResultInfo;->ecu_result:I

    if-nez v6, :cond_1

    .line 105
    const/4 v6, 0x0

    iput v6, v0, Lcom/mega/update/manager/Result;->ret:I

    .line 106
    const-string v6, "OK"

    iput-object v6, v0, Lcom/mega/update/manager/Result;->desc:Ljava/lang/String;

    .line 107
    iput-object p2, p0, Lcom/mega/update/protocol/HudUpdateProtocol;->mCallback:Lcom/mega/update/manager/ITriggerNotifier;

    goto :goto_0

    .line 109
    :cond_1
    const/4 v6, -0x2

    iput v6, v0, Lcom/mega/update/manager/Result;->ret:I

    .line 110
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "hud start fail: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v5, Lcom/mega/update/protocol/HudUpdateProtocol$PARAMS$ResultInfo;->ecu_desc:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/mega/update/manager/Result;->desc:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    .end local v3    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    .end local v4    # "msg":Ljava/lang/String;
    .end local v5    # "ri":Lcom/mega/update/protocol/HudUpdateProtocol$PARAMS$ResultInfo;
    :goto_0
    goto :goto_1

    .line 112
    :catch_0
    move-exception v3

    .line 113
    .local v3, "e":Ljava/lang/Exception;
    const/4 v4, -0x3

    iput v4, v0, Lcom/mega/update/manager/Result;->ret:I

    .line 114
    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/mega/update/manager/Result;->desc:Ljava/lang/String;

    .line 116
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_1
    return-object v0
.end method

.method public version(Lcom/mega/update/info/ManifestInfo$DeviceInfo;)Lcom/mega/update/manager/Result;
    .locals 6
    .param p1, "info"    # Lcom/mega/update/info/ManifestInfo$DeviceInfo;

    .line 146
    new-instance v0, Lcom/mega/update/manager/Result;

    const/4 v1, -0x1

    const-string v2, "hud get version error"

    invoke-direct {v0, v1, v2}, Lcom/mega/update/manager/Result;-><init>(ILjava/lang/String;)V

    .line 148
    .local v0, "res":Lcom/mega/update/manager/Result;
    :try_start_0
    invoke-static {}, Lcom/mega/update/rpc/MegaConnector;->self()Lcom/mega/update/rpc/MegaConnector;

    move-result-object v1

    const-string v2, "update/hud/version/req"

    const-string v3, "1"

    const-string v4, "update/hud/version/res"

    const/16 v5, 0x1388

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/mega/update/rpc/MegaConnector;->request(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v1

    .line 153
    .local v1, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    new-instance v2, Ljava/lang/String;

    invoke-static {v1}, Lcom/google/common/primitives/Bytes;->toArray(Ljava/util/Collection;)[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    .line 154
    .local v2, "msg":Ljava/lang/String;
    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    new-instance v4, Lcom/mega/update/protocol/HudUpdateProtocol$2;

    invoke-direct {v4, p0}, Lcom/mega/update/protocol/HudUpdateProtocol$2;-><init>(Lcom/mega/update/protocol/HudUpdateProtocol;)V

    invoke-virtual {v4}, Lcom/mega/update/protocol/HudUpdateProtocol$2;->getType()Ljava/lang/reflect/Type;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mega/update/protocol/HudUpdateProtocol$PARAMS$VersionInfo;

    .line 155
    .local v3, "ver":Lcom/mega/update/protocol/HudUpdateProtocol$PARAMS$VersionInfo;
    iget v4, v3, Lcom/mega/update/protocol/HudUpdateProtocol$PARAMS$VersionInfo;->ecu_result:I

    if-nez v4, :cond_0

    .line 156
    const/4 v4, 0x0

    iput v4, v0, Lcom/mega/update/manager/Result;->ret:I

    .line 157
    const-string v4, "OK"

    iput-object v4, v0, Lcom/mega/update/manager/Result;->desc:Ljava/lang/String;

    .line 158
    iget-object v4, v3, Lcom/mega/update/protocol/HudUpdateProtocol$PARAMS$VersionInfo;->ecu_vendor_id:Ljava/lang/String;

    iput-object v4, p1, Lcom/mega/update/info/ManifestInfo$DeviceInfo;->current_vendor_id:Ljava/lang/String;

    .line 159
    iget-object v4, v3, Lcom/mega/update/protocol/HudUpdateProtocol$PARAMS$VersionInfo;->ecu_soft_version:Ljava/lang/String;

    iput-object v4, p1, Lcom/mega/update/info/ManifestInfo$DeviceInfo;->current_version:Ljava/lang/String;

    .line 160
    iget-object v4, v3, Lcom/mega/update/protocol/HudUpdateProtocol$PARAMS$VersionInfo;->ecu_slot_version:Ljava/lang/String;

    iput-object v4, p1, Lcom/mega/update/info/ManifestInfo$DeviceInfo;->current_slot:Ljava/lang/String;

    goto :goto_0

    .line 162
    :cond_0
    const/4 v4, -0x2

    iput v4, v0, Lcom/mega/update/manager/Result;->ret:I

    .line 163
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "hud get version fail: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v3, Lcom/mega/update/protocol/HudUpdateProtocol$PARAMS$VersionInfo;->ecu_desc:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/mega/update/manager/Result;->desc:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 168
    .end local v1    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    .end local v2    # "msg":Ljava/lang/String;
    .end local v3    # "ver":Lcom/mega/update/protocol/HudUpdateProtocol$PARAMS$VersionInfo;
    :goto_0
    goto :goto_1

    .line 165
    :catch_0
    move-exception v1

    .line 166
    .local v1, "e":Ljava/lang/Exception;
    const/4 v2, -0x3

    iput v2, v0, Lcom/mega/update/manager/Result;->ret:I

    .line 167
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/mega/update/manager/Result;->desc:Ljava/lang/String;

    .line 169
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    return-object v0
.end method
