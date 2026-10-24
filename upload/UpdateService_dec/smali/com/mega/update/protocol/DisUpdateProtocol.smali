.class public Lcom/mega/update/protocol/DisUpdateProtocol;
.super Lcom/mega/update/protocol/IUpdateProtocol;
.source "DisUpdateProtocol.java"

# interfaces
.implements Lcom/mega/update/rpc/MegaConnector$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mega/update/protocol/DisUpdateProtocol$TOPICS;,
        Lcom/mega/update/protocol/DisUpdateProtocol$PARAMS;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private curType:I

.field private mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20
    const-class v0, Lcom/mega/update/protocol/DisUpdateProtocol;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mega/update/protocol/DisUpdateProtocol;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 90
    invoke-direct {p0}, Lcom/mega/update/protocol/IUpdateProtocol;-><init>()V

    .line 22
    const/4 v0, -0x1

    iput v0, p0, Lcom/mega/update/protocol/DisUpdateProtocol;->mType:I

    .line 23
    const/4 v0, 0x0

    iput v0, p0, Lcom/mega/update/protocol/DisUpdateProtocol;->curType:I

    .line 91
    invoke-static {}, Lcom/mega/update/rpc/MegaConnector;->self()Lcom/mega/update/rpc/MegaConnector;

    move-result-object v0

    const-string v1, "update/dis/progress"

    invoke-virtual {v0, p0, v1}, Lcom/mega/update/rpc/MegaConnector;->addCallback(Lcom/mega/update/rpc/MegaConnector$Callback;Ljava/lang/String;)V

    .line 92
    invoke-static {}, Lcom/mega/update/rpc/MegaConnector;->self()Lcom/mega/update/rpc/MegaConnector;

    move-result-object v0

    const-string v1, "update/dis/result"

    invoke-virtual {v0, p0, v1}, Lcom/mega/update/rpc/MegaConnector;->addCallback(Lcom/mega/update/rpc/MegaConnector$Callback;Ljava/lang/String;)V

    .line 93
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "type"    # I

    .line 95
    invoke-direct {p0}, Lcom/mega/update/protocol/IUpdateProtocol;-><init>()V

    .line 22
    const/4 v0, -0x1

    iput v0, p0, Lcom/mega/update/protocol/DisUpdateProtocol;->mType:I

    .line 23
    const/4 v0, 0x0

    iput v0, p0, Lcom/mega/update/protocol/DisUpdateProtocol;->curType:I

    .line 96
    iput p1, p0, Lcom/mega/update/protocol/DisUpdateProtocol;->mType:I

    .line 97
    invoke-static {}, Lcom/mega/update/rpc/MegaConnector;->self()Lcom/mega/update/rpc/MegaConnector;

    move-result-object v0

    const-string v1, "update/dis/progress"

    invoke-virtual {v0, p0, v1}, Lcom/mega/update/rpc/MegaConnector;->addCallback(Lcom/mega/update/rpc/MegaConnector$Callback;Ljava/lang/String;)V

    .line 98
    invoke-static {}, Lcom/mega/update/rpc/MegaConnector;->self()Lcom/mega/update/rpc/MegaConnector;

    move-result-object v0

    const-string v1, "update/dis/result"

    invoke-virtual {v0, p0, v1}, Lcom/mega/update/rpc/MegaConnector;->addCallback(Lcom/mega/update/rpc/MegaConnector$Callback;Ljava/lang/String;)V

    .line 99
    return-void
.end method


# virtual methods
.method public active(Lcom/mega/update/info/ManifestInfo$DeviceInfo;Lcom/mega/update/manager/ITriggerNotifier;)Lcom/mega/update/manager/Result;
    .locals 3
    .param p1, "info"    # Lcom/mega/update/info/ManifestInfo$DeviceInfo;
    .param p2, "notifier"    # Lcom/mega/update/manager/ITriggerNotifier;

    .line 142
    new-instance v0, Lcom/mega/update/manager/Result;

    const/4 v1, 0x0

    const-string v2, "ok"

    invoke-direct {v0, v1, v2}, Lcom/mega/update/manager/Result;-><init>(ILjava/lang/String;)V

    .line 143
    .local v0, "res":Lcom/mega/update/manager/Result;
    invoke-interface {p2, v0}, Lcom/mega/update/manager/ITriggerNotifier;->onStatusChanged(Lcom/mega/update/manager/Result;)V

    .line 144
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

    .line 197
    .local p2, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    new-instance v0, Ljava/lang/String;

    invoke-static {p2}, Lcom/google/common/primitives/Bytes;->toArray(Ljava/util/Collection;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .line 198
    .local v0, "mesg":Ljava/lang/String;
    const-string v1, "update/dis/progress"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/mega/update/protocol/DisUpdateProtocol;->mCallback:Lcom/mega/update/manager/ITriggerNotifier;

    if-eqz v1, :cond_1

    .line 199
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    new-instance v2, Lcom/mega/update/protocol/DisUpdateProtocol$3;

    invoke-direct {v2, p0}, Lcom/mega/update/protocol/DisUpdateProtocol$3;-><init>(Lcom/mega/update/protocol/DisUpdateProtocol;)V

    .line 200
    invoke-virtual {v2}, Lcom/mega/update/protocol/DisUpdateProtocol$3;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 199
    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mega/update/protocol/DisUpdateProtocol$PARAMS$ProgressInfo;

    .line 201
    .local v1, "pi":Lcom/mega/update/protocol/DisUpdateProtocol$PARAMS$ProgressInfo;
    iget v2, p0, Lcom/mega/update/protocol/DisUpdateProtocol;->curType:I

    iget v3, v1, Lcom/mega/update/protocol/DisUpdateProtocol$PARAMS$ProgressInfo;->dis_type:I

    if-eq v2, v3, :cond_0

    .line 202
    return-void

    .line 204
    :cond_0
    iget-object v2, p0, Lcom/mega/update/protocol/DisUpdateProtocol;->mCallback:Lcom/mega/update/manager/ITriggerNotifier;

    iget v3, v1, Lcom/mega/update/protocol/DisUpdateProtocol$PARAMS$ProgressInfo;->dis_progress:I

    invoke-interface {v2, v3}, Lcom/mega/update/manager/ITriggerNotifier;->onProgressChanged(I)V

    .end local v1    # "pi":Lcom/mega/update/protocol/DisUpdateProtocol$PARAMS$ProgressInfo;
    goto :goto_0

    .line 206
    :cond_1
    const-string v1, "update/dis/result"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/mega/update/protocol/DisUpdateProtocol;->mCallback:Lcom/mega/update/manager/ITriggerNotifier;

    if-eqz v1, :cond_3

    .line 208
    iget-object v1, p0, Lcom/mega/update/protocol/DisUpdateProtocol;->mCallback:Lcom/mega/update/manager/ITriggerNotifier;

    .line 209
    .local v1, "notifier":Lcom/mega/update/manager/ITriggerNotifier;
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/mega/update/protocol/DisUpdateProtocol;->mCallback:Lcom/mega/update/manager/ITriggerNotifier;

    .line 210
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    new-instance v3, Lcom/mega/update/protocol/DisUpdateProtocol$4;

    invoke-direct {v3, p0}, Lcom/mega/update/protocol/DisUpdateProtocol$4;-><init>(Lcom/mega/update/protocol/DisUpdateProtocol;)V

    .line 211
    invoke-virtual {v3}, Lcom/mega/update/protocol/DisUpdateProtocol$4;->getType()Ljava/lang/reflect/Type;

    move-result-object v3

    .line 210
    invoke-virtual {v2, v0, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mega/update/protocol/DisUpdateProtocol$PARAMS$ResultInfo;

    .line 212
    .local v2, "ri":Lcom/mega/update/protocol/DisUpdateProtocol$PARAMS$ResultInfo;
    iget v3, p0, Lcom/mega/update/protocol/DisUpdateProtocol;->curType:I

    iget v4, v2, Lcom/mega/update/protocol/DisUpdateProtocol$PARAMS$ResultInfo;->dis_type:I

    if-eq v3, v4, :cond_2

    .line 213
    return-void

    .line 215
    :cond_2
    const/4 v3, 0x0

    iput v3, p0, Lcom/mega/update/protocol/DisUpdateProtocol;->curType:I

    .line 216
    new-instance v3, Lcom/mega/update/manager/Result;

    iget v4, v2, Lcom/mega/update/protocol/DisUpdateProtocol$PARAMS$ResultInfo;->dis_result:I

    iget-object v5, v2, Lcom/mega/update/protocol/DisUpdateProtocol$PARAMS$ResultInfo;->dis_desc:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Lcom/mega/update/manager/Result;-><init>(ILjava/lang/String;)V

    .line 217
    .local v3, "res":Lcom/mega/update/manager/Result;
    invoke-interface {v1, v3}, Lcom/mega/update/manager/ITriggerNotifier;->onStatusChanged(Lcom/mega/update/manager/Result;)V

    goto :goto_1

    .line 206
    .end local v1    # "notifier":Lcom/mega/update/manager/ITriggerNotifier;
    .end local v2    # "ri":Lcom/mega/update/protocol/DisUpdateProtocol$PARAMS$ResultInfo;
    .end local v3    # "res":Lcom/mega/update/manager/Result;
    :cond_3
    :goto_0
    nop

    .line 219
    :goto_1
    return-void
.end method

.method public reboot(Lcom/mega/update/info/ManifestInfo$DeviceInfo;)Lcom/mega/update/manager/Result;
    .locals 3
    .param p1, "info"    # Lcom/mega/update/info/ManifestInfo$DeviceInfo;

    .line 162
    new-instance v0, Lcom/mega/update/manager/Result;

    const/4 v1, 0x0

    const-string v2, "ok"

    invoke-direct {v0, v1, v2}, Lcom/mega/update/manager/Result;-><init>(ILjava/lang/String;)V

    .line 163
    .local v0, "res":Lcom/mega/update/manager/Result;
    return-object v0
.end method

.method public reset(Lcom/mega/update/info/ManifestInfo$DeviceInfo;)Lcom/mega/update/manager/Result;
    .locals 3
    .param p1, "info"    # Lcom/mega/update/info/ManifestInfo$DeviceInfo;

    .line 156
    new-instance v0, Lcom/mega/update/manager/Result;

    const/4 v1, 0x0

    const-string v2, "ok"

    invoke-direct {v0, v1, v2}, Lcom/mega/update/manager/Result;-><init>(ILjava/lang/String;)V

    .line 157
    .local v0, "res":Lcom/mega/update/manager/Result;
    return-object v0
.end method

.method public rollback(Lcom/mega/update/info/ManifestInfo$DeviceInfo;Lcom/mega/update/manager/ITriggerNotifier;)Lcom/mega/update/manager/Result;
    .locals 5
    .param p1, "info"    # Lcom/mega/update/info/ManifestInfo$DeviceInfo;
    .param p2, "notifier"    # Lcom/mega/update/manager/ITriggerNotifier;

    .line 149
    iget v0, p0, Lcom/mega/update/protocol/DisUpdateProtocol;->mType:I

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p1, Lcom/mega/update/info/ManifestInfo$DeviceInfo;->child_id:I

    .line 150
    .local v0, "type":I
    :goto_0
    new-instance v1, Lcom/mega/update/manager/Result;

    const/4 v2, -0x1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "display "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " rollback not support"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/mega/update/manager/Result;-><init>(ILjava/lang/String;)V

    .line 151
    .local v1, "res":Lcom/mega/update/manager/Result;
    return-object v1
.end method

.method public start(Lcom/mega/update/info/ManifestInfo$DeviceInfo;Lcom/mega/update/manager/ITriggerNotifier;)Lcom/mega/update/manager/Result;
    .locals 9
    .param p1, "info"    # Lcom/mega/update/info/ManifestInfo$DeviceInfo;
    .param p2, "notifier"    # Lcom/mega/update/manager/ITriggerNotifier;

    .line 103
    iget-object v0, p1, Lcom/mega/update/info/ManifestInfo$DeviceInfo;->package_file:Ljava/lang/String;

    iget-wide v1, p1, Lcom/mega/update/info/ManifestInfo$DeviceInfo;->package_offset:J

    iget-object v3, p1, Lcom/mega/update/info/ManifestInfo$DeviceInfo;->filename:Ljava/lang/String;

    iget-wide v4, p1, Lcom/mega/update/info/ManifestInfo$DeviceInfo;->filesize:J

    invoke-static/range {v0 .. v5}, Lcom/mega/update/util/FileHelper;->socketSendFile(Ljava/lang/String;JLjava/lang/String;J)Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 104
    new-instance v0, Lcom/mega/update/manager/Result;

    const-string v2, "send dis package error"

    invoke-direct {v0, v1, v2}, Lcom/mega/update/manager/Result;-><init>(ILjava/lang/String;)V

    return-object v0

    .line 106
    :cond_0
    iget v0, p0, Lcom/mega/update/protocol/DisUpdateProtocol;->mType:I

    if-lez v0, :cond_1

    goto :goto_0

    :cond_1
    iget v0, p1, Lcom/mega/update/info/ManifestInfo$DeviceInfo;->child_id:I

    .line 107
    .local v0, "type":I
    :goto_0
    iput v0, p0, Lcom/mega/update/protocol/DisUpdateProtocol;->curType:I

    .line 108
    new-instance v2, Lcom/mega/update/manager/Result;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "display "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " start error"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Lcom/mega/update/manager/Result;-><init>(ILjava/lang/String;)V

    move-object v1, v2

    .line 109
    .local v1, "res":Lcom/mega/update/manager/Result;
    new-instance v2, Lcom/mega/update/protocol/DisUpdateProtocol$PARAMS$UpdateJson;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/ota/android/package/"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p1, Lcom/mega/update/info/ManifestInfo$DeviceInfo;->filename:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v5, p1, Lcom/mega/update/info/ManifestInfo$DeviceInfo;->sha256:Ljava/lang/String;

    invoke-direct {v2, v0, v3, v5}, Lcom/mega/update/protocol/DisUpdateProtocol$PARAMS$UpdateJson;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 110
    .local v2, "json":Lcom/mega/update/protocol/DisUpdateProtocol$PARAMS$UpdateJson;
    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v3, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 112
    .local v3, "jsonStr":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lcom/mega/update/rpc/MegaConnector;->self()Lcom/mega/update/rpc/MegaConnector;

    move-result-object v5

    const-string v6, "update/dis/start/req"

    const-string v7, "update/dis/start/res"

    const/16 v8, 0x1388

    invoke-virtual {v5, v6, v3, v7, v8}, Lcom/mega/update/rpc/MegaConnector;->request(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v5

    .line 117
    .local v5, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    new-instance v6, Ljava/lang/String;

    invoke-static {v5}, Lcom/google/common/primitives/Bytes;->toArray(Ljava/util/Collection;)[B

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/String;-><init>([B)V

    .line 118
    .local v6, "msg":Ljava/lang/String;
    new-instance v7, Lcom/google/gson/Gson;

    invoke-direct {v7}, Lcom/google/gson/Gson;-><init>()V

    new-instance v8, Lcom/mega/update/protocol/DisUpdateProtocol$1;

    invoke-direct {v8, p0}, Lcom/mega/update/protocol/DisUpdateProtocol$1;-><init>(Lcom/mega/update/protocol/DisUpdateProtocol;)V

    .line 119
    invoke-virtual {v8}, Lcom/mega/update/protocol/DisUpdateProtocol$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v8

    .line 118
    invoke-virtual {v7, v6, v8}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/mega/update/protocol/DisUpdateProtocol$PARAMS$ResultInfo;

    .line 120
    .local v7, "ri":Lcom/mega/update/protocol/DisUpdateProtocol$PARAMS$ResultInfo;
    iget v8, v7, Lcom/mega/update/protocol/DisUpdateProtocol$PARAMS$ResultInfo;->dis_type:I

    if-eq v0, v8, :cond_2

    .line 121
    const/16 v4, -0x9

    iput v4, v1, Lcom/mega/update/manager/Result;->ret:I

    .line 122
    const-string v4, "error dis_type"

    iput-object v4, v1, Lcom/mega/update/manager/Result;->desc:Ljava/lang/String;

    goto :goto_1

    .line 124
    :cond_2
    iget v8, v7, Lcom/mega/update/protocol/DisUpdateProtocol$PARAMS$ResultInfo;->dis_result:I

    if-nez v8, :cond_3

    .line 125
    const/4 v4, 0x0

    iput v4, v1, Lcom/mega/update/manager/Result;->ret:I

    .line 126
    const-string v4, "OK"

    iput-object v4, v1, Lcom/mega/update/manager/Result;->desc:Ljava/lang/String;

    .line 127
    iput-object p2, p0, Lcom/mega/update/protocol/DisUpdateProtocol;->mCallback:Lcom/mega/update/manager/ITriggerNotifier;

    goto :goto_1

    .line 129
    :cond_3
    const/4 v8, -0x2

    iput v8, v1, Lcom/mega/update/manager/Result;->ret:I

    .line 130
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " start fail: "

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v7, Lcom/mega/update/protocol/DisUpdateProtocol$PARAMS$ResultInfo;->dis_desc:Ljava/lang/String;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/mega/update/manager/Result;->desc:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    .end local v5    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    .end local v6    # "msg":Ljava/lang/String;
    .end local v7    # "ri":Lcom/mega/update/protocol/DisUpdateProtocol$PARAMS$ResultInfo;
    :goto_1
    goto :goto_2

    .line 133
    :catch_0
    move-exception v4

    .line 134
    .local v4, "e":Ljava/lang/Exception;
    const/4 v5, -0x3

    iput v5, v1, Lcom/mega/update/manager/Result;->ret:I

    .line 135
    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/mega/update/manager/Result;->desc:Ljava/lang/String;

    .line 137
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_2
    return-object v1
.end method

.method public version(Lcom/mega/update/info/ManifestInfo$DeviceInfo;)Lcom/mega/update/manager/Result;
    .locals 8
    .param p1, "info"    # Lcom/mega/update/info/ManifestInfo$DeviceInfo;

    .line 168
    iget v0, p0, Lcom/mega/update/protocol/DisUpdateProtocol;->mType:I

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p1, Lcom/mega/update/info/ManifestInfo$DeviceInfo;->child_id:I

    .line 169
    .local v0, "type":I
    :goto_0
    new-instance v1, Lcom/mega/update/manager/Result;

    const/4 v2, -0x1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "display "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " get version error"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/mega/update/manager/Result;-><init>(ILjava/lang/String;)V

    .line 171
    .local v1, "res":Lcom/mega/update/manager/Result;
    :try_start_0
    invoke-static {}, Lcom/mega/update/rpc/MegaConnector;->self()Lcom/mega/update/rpc/MegaConnector;

    move-result-object v2

    const-string v3, "update/dis/version/req"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "update/dis/version/res"

    const/16 v7, 0x1388

    invoke-virtual {v2, v3, v5, v6, v7}, Lcom/mega/update/rpc/MegaConnector;->request(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v2

    .line 176
    .local v2, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    new-instance v3, Ljava/lang/String;

    invoke-static {v2}, Lcom/google/common/primitives/Bytes;->toArray(Ljava/util/Collection;)[B

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/String;-><init>([B)V

    .line 177
    .local v3, "msg":Ljava/lang/String;
    new-instance v5, Lcom/google/gson/Gson;

    invoke-direct {v5}, Lcom/google/gson/Gson;-><init>()V

    new-instance v6, Lcom/mega/update/protocol/DisUpdateProtocol$2;

    invoke-direct {v6, p0}, Lcom/mega/update/protocol/DisUpdateProtocol$2;-><init>(Lcom/mega/update/protocol/DisUpdateProtocol;)V

    invoke-virtual {v6}, Lcom/mega/update/protocol/DisUpdateProtocol$2;->getType()Ljava/lang/reflect/Type;

    move-result-object v6

    invoke-virtual {v5, v3, v6}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mega/update/protocol/DisUpdateProtocol$PARAMS$VersionInfo;

    .line 178
    .local v5, "ver":Lcom/mega/update/protocol/DisUpdateProtocol$PARAMS$VersionInfo;
    iget v6, v5, Lcom/mega/update/protocol/DisUpdateProtocol$PARAMS$VersionInfo;->ecu_result:I

    if-nez v6, :cond_1

    .line 179
    const/4 v4, 0x0

    iput v4, v1, Lcom/mega/update/manager/Result;->ret:I

    .line 180
    const-string v4, "OK"

    iput-object v4, v1, Lcom/mega/update/manager/Result;->desc:Ljava/lang/String;

    .line 181
    iget-object v4, v5, Lcom/mega/update/protocol/DisUpdateProtocol$PARAMS$VersionInfo;->ecu_vendor_id:Ljava/lang/String;

    iput-object v4, p1, Lcom/mega/update/info/ManifestInfo$DeviceInfo;->current_vendor_id:Ljava/lang/String;

    .line 182
    iget-object v4, v5, Lcom/mega/update/protocol/DisUpdateProtocol$PARAMS$VersionInfo;->ecu_soft_version:Ljava/lang/String;

    iput-object v4, p1, Lcom/mega/update/info/ManifestInfo$DeviceInfo;->current_version:Ljava/lang/String;

    .line 183
    iget-object v4, v5, Lcom/mega/update/protocol/DisUpdateProtocol$PARAMS$VersionInfo;->ecu_slot_version:Ljava/lang/String;

    iput-object v4, p1, Lcom/mega/update/info/ManifestInfo$DeviceInfo;->current_slot:Ljava/lang/String;

    goto :goto_1

    .line 185
    :cond_1
    const/4 v6, -0x2

    iput v6, v1, Lcom/mega/update/manager/Result;->ret:I

    .line 186
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " get version fail: "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v5, Lcom/mega/update/protocol/DisUpdateProtocol$PARAMS$VersionInfo;->ecu_desc:Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/mega/update/manager/Result;->desc:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 191
    .end local v2    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    .end local v3    # "msg":Ljava/lang/String;
    .end local v5    # "ver":Lcom/mega/update/protocol/DisUpdateProtocol$PARAMS$VersionInfo;
    :goto_1
    goto :goto_2

    .line 188
    :catch_0
    move-exception v2

    .line 189
    .local v2, "e":Ljava/lang/Exception;
    const/4 v3, -0x3

    iput v3, v1, Lcom/mega/update/manager/Result;->ret:I

    .line 190
    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/mega/update/manager/Result;->desc:Ljava/lang/String;

    .line 192
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_2
    return-object v1
.end method
