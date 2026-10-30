.class public Lcom/mega/update/protocol/QnxUpdateProtocol;
.super Lcom/mega/update/protocol/IUpdateProtocol;
.source "QnxUpdateProtocol.java"

# interfaces
.implements Lcom/mega/update/rpc/MegaConnector$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mega/update/protocol/QnxUpdateProtocol$TOPICS;,
        Lcom/mega/update/protocol/QnxUpdateProtocol$PARAMS;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20
    const-class v0, Lcom/mega/update/protocol/QnxUpdateProtocol;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mega/update/protocol/QnxUpdateProtocol;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 75
    invoke-direct {p0}, Lcom/mega/update/protocol/IUpdateProtocol;-><init>()V

    .line 76
    invoke-static {}, Lcom/mega/update/rpc/MegaConnector;->self()Lcom/mega/update/rpc/MegaConnector;

    move-result-object v0

    const-string v1, "update/qnx/progress"

    invoke-virtual {v0, p0, v1}, Lcom/mega/update/rpc/MegaConnector;->addCallback(Lcom/mega/update/rpc/MegaConnector$Callback;Ljava/lang/String;)V

    .line 77
    invoke-static {}, Lcom/mega/update/rpc/MegaConnector;->self()Lcom/mega/update/rpc/MegaConnector;

    move-result-object v0

    const-string v1, "update/qnx/result"

    invoke-virtual {v0, p0, v1}, Lcom/mega/update/rpc/MegaConnector;->addCallback(Lcom/mega/update/rpc/MegaConnector$Callback;Ljava/lang/String;)V

    .line 78
    return-void
.end method


# virtual methods
.method public active(Lcom/mega/update/info/ManifestInfo$DeviceInfo;Lcom/mega/update/manager/ITriggerNotifier;)Lcom/mega/update/manager/Result;
    .locals 6
    .param p1, "info"    # Lcom/mega/update/info/ManifestInfo$DeviceInfo;
    .param p2, "notifier"    # Lcom/mega/update/manager/ITriggerNotifier;

    .line 112
    new-instance v0, Lcom/mega/update/manager/Result;

    const/4 v1, -0x1

    const-string v2, "qnx active error"

    invoke-direct {v0, v1, v2}, Lcom/mega/update/manager/Result;-><init>(ILjava/lang/String;)V

    .line 114
    .local v0, "res":Lcom/mega/update/manager/Result;
    :try_start_0
    invoke-static {}, Lcom/mega/update/rpc/MegaConnector;->self()Lcom/mega/update/rpc/MegaConnector;

    move-result-object v1

    const-string v2, "update/qnx/switch/req"

    const-string v3, "1"

    const-string v4, "update/qnx/switch/res"

    const/16 v5, 0x1388

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/mega/update/rpc/MegaConnector;->request(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v1

    .line 119
    .local v1, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Byte;

    invoke-virtual {v3}, Ljava/lang/Byte;->byteValue()B

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Byte;

    invoke-virtual {v3}, Ljava/lang/Byte;->byteValue()B

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    goto :goto_0

    .line 124
    :cond_0
    const/4 v3, -0x2

    iput v3, v0, Lcom/mega/update/manager/Result;->ret:I

    .line 125
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "qnx active fail "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/mega/update/manager/Result;->desc:Ljava/lang/String;

    goto :goto_1

    .line 120
    :cond_1
    :goto_0
    iput v2, v0, Lcom/mega/update/manager/Result;->ret:I

    .line 121
    const-string v2, "OK"

    iput-object v2, v0, Lcom/mega/update/manager/Result;->desc:Ljava/lang/String;

    .line 122
    invoke-interface {p2, v0}, Lcom/mega/update/manager/ITriggerNotifier;->onStatusChanged(Lcom/mega/update/manager/Result;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    .end local v1    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    :goto_1
    goto :goto_2

    .line 127
    :catch_0
    move-exception v1

    .line 128
    .local v1, "e":Ljava/lang/Exception;
    const/4 v2, -0x3

    iput v2, v0, Lcom/mega/update/manager/Result;->ret:I

    .line 129
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/mega/update/manager/Result;->desc:Ljava/lang/String;

    .line 131
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_2
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

    .line 200
    .local p2, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    new-instance v0, Ljava/lang/String;

    invoke-static {p2}, Lcom/google/common/primitives/Bytes;->toArray(Ljava/util/Collection;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .line 202
    .local v0, "mesg":Ljava/lang/String;
    const-string v1, "update/qnx/progress"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mega/update/protocol/QnxUpdateProtocol;->mCallback:Lcom/mega/update/manager/ITriggerNotifier;

    if-eqz v1, :cond_0

    .line 203
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    new-instance v2, Lcom/mega/update/protocol/QnxUpdateProtocol$2;

    invoke-direct {v2, p0}, Lcom/mega/update/protocol/QnxUpdateProtocol$2;-><init>(Lcom/mega/update/protocol/QnxUpdateProtocol;)V

    .line 204
    invoke-virtual {v2}, Lcom/mega/update/protocol/QnxUpdateProtocol$2;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 203
    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mega/update/protocol/QnxUpdateProtocol$PARAMS$ProgressInfo;

    .line 205
    .local v1, "progressInfo":Lcom/mega/update/protocol/QnxUpdateProtocol$PARAMS$ProgressInfo;
    iget-object v2, p0, Lcom/mega/update/protocol/QnxUpdateProtocol;->mCallback:Lcom/mega/update/manager/ITriggerNotifier;

    iget v3, v1, Lcom/mega/update/protocol/QnxUpdateProtocol$PARAMS$ProgressInfo;->totalprogress:I

    invoke-interface {v2, v3}, Lcom/mega/update/manager/ITriggerNotifier;->onProgressChanged(I)V

    .end local v1    # "progressInfo":Lcom/mega/update/protocol/QnxUpdateProtocol$PARAMS$ProgressInfo;
    goto :goto_0

    .line 207
    :cond_0
    const-string v1, "update/qnx/result"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/mega/update/protocol/QnxUpdateProtocol;->mCallback:Lcom/mega/update/manager/ITriggerNotifier;

    if-eqz v1, :cond_1

    .line 209
    iget-object v1, p0, Lcom/mega/update/protocol/QnxUpdateProtocol;->mCallback:Lcom/mega/update/manager/ITriggerNotifier;

    .line 210
    .local v1, "notifier":Lcom/mega/update/manager/ITriggerNotifier;
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/mega/update/protocol/QnxUpdateProtocol;->mCallback:Lcom/mega/update/manager/ITriggerNotifier;

    .line 211
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    new-instance v3, Lcom/mega/update/protocol/QnxUpdateProtocol$3;

    invoke-direct {v3, p0}, Lcom/mega/update/protocol/QnxUpdateProtocol$3;-><init>(Lcom/mega/update/protocol/QnxUpdateProtocol;)V

    .line 212
    invoke-virtual {v3}, Lcom/mega/update/protocol/QnxUpdateProtocol$3;->getType()Ljava/lang/reflect/Type;

    move-result-object v3

    .line 211
    invoke-virtual {v2, v0, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mega/update/protocol/QnxUpdateProtocol$PARAMS$ResultInfo;

    .line 213
    .local v2, "resultInfo":Lcom/mega/update/protocol/QnxUpdateProtocol$PARAMS$ResultInfo;
    new-instance v3, Lcom/mega/update/manager/Result;

    iget v4, v2, Lcom/mega/update/protocol/QnxUpdateProtocol$PARAMS$ResultInfo;->result:I

    iget-object v5, v2, Lcom/mega/update/protocol/QnxUpdateProtocol$PARAMS$ResultInfo;->desc:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Lcom/mega/update/manager/Result;-><init>(ILjava/lang/String;)V

    .line 214
    .local v3, "res":Lcom/mega/update/manager/Result;
    invoke-interface {v1, v3}, Lcom/mega/update/manager/ITriggerNotifier;->onStatusChanged(Lcom/mega/update/manager/Result;)V

    goto :goto_1

    .line 207
    .end local v1    # "notifier":Lcom/mega/update/manager/ITriggerNotifier;
    .end local v2    # "resultInfo":Lcom/mega/update/protocol/QnxUpdateProtocol$PARAMS$ResultInfo;
    .end local v3    # "res":Lcom/mega/update/manager/Result;
    :cond_1
    :goto_0
    nop

    .line 217
    :goto_1
    return-void
.end method

.method public reboot(Lcom/mega/update/info/ManifestInfo$DeviceInfo;)Lcom/mega/update/manager/Result;
    .locals 3
    .param p1, "info"    # Lcom/mega/update/info/ManifestInfo$DeviceInfo;

    .line 165
    new-instance v0, Lcom/mega/update/manager/Result;

    const/4 v1, -0x1

    const-string v2, "qnx reboot not support"

    invoke-direct {v0, v1, v2}, Lcom/mega/update/manager/Result;-><init>(ILjava/lang/String;)V

    .line 166
    .local v0, "res":Lcom/mega/update/manager/Result;
    return-object v0
.end method

.method public reset(Lcom/mega/update/info/ManifestInfo$DeviceInfo;)Lcom/mega/update/manager/Result;
    .locals 6
    .param p1, "info"    # Lcom/mega/update/info/ManifestInfo$DeviceInfo;

    .line 142
    new-instance v0, Lcom/mega/update/manager/Result;

    const/4 v1, -0x1

    const-string v2, "qnx reset error"

    invoke-direct {v0, v1, v2}, Lcom/mega/update/manager/Result;-><init>(ILjava/lang/String;)V

    .line 144
    .local v0, "res":Lcom/mega/update/manager/Result;
    :try_start_0
    invoke-static {}, Lcom/mega/update/rpc/MegaConnector;->self()Lcom/mega/update/rpc/MegaConnector;

    move-result-object v1

    const-string v2, "update/qnx/switch/req"

    const-string v3, "0"

    const-string v4, "update/qnx/switch/res"

    const/16 v5, 0x1388

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/mega/update/rpc/MegaConnector;->request(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v1

    .line 149
    .local v1, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Byte;

    invoke-virtual {v3}, Ljava/lang/Byte;->byteValue()B

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Byte;

    invoke-virtual {v3}, Ljava/lang/Byte;->byteValue()B

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    goto :goto_0

    .line 153
    :cond_0
    const/4 v3, -0x2

    iput v3, v0, Lcom/mega/update/manager/Result;->ret:I

    .line 154
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "qnx reset fail "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/mega/update/manager/Result;->desc:Ljava/lang/String;

    goto :goto_1

    .line 150
    :cond_1
    :goto_0
    iput v2, v0, Lcom/mega/update/manager/Result;->ret:I

    .line 151
    const-string v2, "OK"

    iput-object v2, v0, Lcom/mega/update/manager/Result;->desc:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    .end local v1    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    :goto_1
    goto :goto_2

    .line 156
    :catch_0
    move-exception v1

    .line 157
    .local v1, "e":Ljava/lang/Exception;
    const/4 v2, -0x3

    iput v2, v0, Lcom/mega/update/manager/Result;->ret:I

    .line 158
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/mega/update/manager/Result;->desc:Ljava/lang/String;

    .line 160
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_2
    return-object v0
.end method

.method public rollback(Lcom/mega/update/info/ManifestInfo$DeviceInfo;Lcom/mega/update/manager/ITriggerNotifier;)Lcom/mega/update/manager/Result;
    .locals 3
    .param p1, "info"    # Lcom/mega/update/info/ManifestInfo$DeviceInfo;
    .param p2, "notifier"    # Lcom/mega/update/manager/ITriggerNotifier;

    .line 136
    new-instance v0, Lcom/mega/update/manager/Result;

    const/4 v1, -0x1

    const-string v2, "qnx rollback not support"

    invoke-direct {v0, v1, v2}, Lcom/mega/update/manager/Result;-><init>(ILjava/lang/String;)V

    .line 137
    .local v0, "res":Lcom/mega/update/manager/Result;
    return-object v0
.end method

.method public start(Lcom/mega/update/info/ManifestInfo$DeviceInfo;Lcom/mega/update/manager/ITriggerNotifier;)Lcom/mega/update/manager/Result;
    .locals 8
    .param p1, "info"    # Lcom/mega/update/info/ManifestInfo$DeviceInfo;
    .param p2, "notifier"    # Lcom/mega/update/manager/ITriggerNotifier;

    .line 82
    iget-object v0, p1, Lcom/mega/update/info/ManifestInfo$DeviceInfo;->package_file:Ljava/lang/String;

    iget-wide v1, p1, Lcom/mega/update/info/ManifestInfo$DeviceInfo;->package_offset:J

    iget-object v3, p1, Lcom/mega/update/info/ManifestInfo$DeviceInfo;->filename:Ljava/lang/String;

    iget-wide v4, p1, Lcom/mega/update/info/ManifestInfo$DeviceInfo;->filesize:J

    invoke-static/range {v0 .. v5}, Lcom/mega/update/util/FileHelper;->socketSendFile(Ljava/lang/String;JLjava/lang/String;J)Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 83
    new-instance v0, Lcom/mega/update/manager/Result;

    const-string v2, "send qnx package error"

    invoke-direct {v0, v1, v2}, Lcom/mega/update/manager/Result;-><init>(ILjava/lang/String;)V

    return-object v0

    .line 85
    :cond_0
    new-instance v0, Lcom/mega/update/manager/Result;

    const-string v2, "qnx start error"

    invoke-direct {v0, v1, v2}, Lcom/mega/update/manager/Result;-><init>(ILjava/lang/String;)V

    .line 86
    .local v0, "res":Lcom/mega/update/manager/Result;
    new-instance v1, Lcom/mega/update/protocol/QnxUpdateProtocol$PARAMS$UpdateJson;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/ota/android/package/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/mega/update/info/ManifestInfo$DeviceInfo;->filename:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/mega/update/info/ManifestInfo$DeviceInfo;->sha256:Ljava/lang/String;

    iget v4, p1, Lcom/mega/update/info/ManifestInfo$DeviceInfo;->delta:I

    const/4 v5, 0x0

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/mega/update/protocol/QnxUpdateProtocol$PARAMS$UpdateJson;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    .line 88
    .local v1, "json":Lcom/mega/update/protocol/QnxUpdateProtocol$PARAMS$UpdateJson;
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v2, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 90
    .local v2, "jsonStr":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lcom/mega/update/rpc/MegaConnector;->self()Lcom/mega/update/rpc/MegaConnector;

    move-result-object v3

    const-string v4, "update/qnx/start/req"

    const-string v6, "update/qnx/start/res"

    const/16 v7, 0x1388

    invoke-virtual {v3, v4, v2, v6, v7}, Lcom/mega/update/rpc/MegaConnector;->request(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v3

    .line 95
    .local v3, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Byte;

    invoke-virtual {v4}, Ljava/lang/Byte;->byteValue()B

    move-result v4

    if-nez v4, :cond_1

    .line 96
    iput v5, v0, Lcom/mega/update/manager/Result;->ret:I

    .line 97
    const-string v4, "OK"

    iput-object v4, v0, Lcom/mega/update/manager/Result;->desc:Ljava/lang/String;

    .line 98
    iput-object p2, p0, Lcom/mega/update/protocol/QnxUpdateProtocol;->mCallback:Lcom/mega/update/manager/ITriggerNotifier;

    goto :goto_0

    .line 100
    :cond_1
    const/4 v4, -0x2

    iput v4, v0, Lcom/mega/update/manager/Result;->ret:I

    .line 101
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "qnx start fail "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/mega/update/manager/Result;->desc:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    .end local v3    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    :goto_0
    goto :goto_1

    .line 103
    :catch_0
    move-exception v3

    .line 104
    .local v3, "e":Ljava/lang/Exception;
    const/4 v4, -0x3

    iput v4, v0, Lcom/mega/update/manager/Result;->ret:I

    .line 105
    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/mega/update/manager/Result;->desc:Ljava/lang/String;

    .line 107
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_1
    return-object v0
.end method

.method public version(Lcom/mega/update/info/ManifestInfo$DeviceInfo;)Lcom/mega/update/manager/Result;
    .locals 7
    .param p1, "info"    # Lcom/mega/update/info/ManifestInfo$DeviceInfo;

    .line 171
    new-instance v0, Lcom/mega/update/manager/Result;

    const/4 v1, -0x1

    const-string v2, "qnx get version error"

    invoke-direct {v0, v1, v2}, Lcom/mega/update/manager/Result;-><init>(ILjava/lang/String;)V

    .line 173
    .local v0, "res":Lcom/mega/update/manager/Result;
    :try_start_0
    invoke-static {}, Lcom/mega/update/rpc/MegaConnector;->self()Lcom/mega/update/rpc/MegaConnector;

    move-result-object v1

    const-string v2, "update/qnx/version/req"

    const-string v3, "1"

    const-string v4, "update/qnx/version/res"

    const/16 v5, 0x1388

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/mega/update/rpc/MegaConnector;->request(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v1

    .line 178
    .local v1, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    new-instance v2, Ljava/lang/String;

    invoke-static {v1}, Lcom/google/common/primitives/Bytes;->toArray(Ljava/util/Collection;)[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    .line 179
    .local v2, "msg":Ljava/lang/String;
    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    new-instance v4, Lcom/mega/update/protocol/QnxUpdateProtocol$1;

    invoke-direct {v4, p0}, Lcom/mega/update/protocol/QnxUpdateProtocol$1;-><init>(Lcom/mega/update/protocol/QnxUpdateProtocol;)V

    invoke-virtual {v4}, Lcom/mega/update/protocol/QnxUpdateProtocol$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mega/update/protocol/QnxUpdateProtocol$PARAMS$VersionInfo;

    .line 180
    .local v3, "ver":Lcom/mega/update/protocol/QnxUpdateProtocol$PARAMS$VersionInfo;
    iget v4, v3, Lcom/mega/update/protocol/QnxUpdateProtocol$PARAMS$VersionInfo;->result:I

    if-nez v4, :cond_0

    .line 181
    const/4 v4, 0x0

    iput v4, v0, Lcom/mega/update/manager/Result;->ret:I

    .line 182
    const-string v5, "OK"

    iput-object v5, v0, Lcom/mega/update/manager/Result;->desc:Ljava/lang/String;

    .line 183
    const-string v5, ""

    iput-object v5, p1, Lcom/mega/update/info/ManifestInfo$DeviceInfo;->current_vendor_id:Ljava/lang/String;

    .line 184
    iget-object v5, v3, Lcom/mega/update/protocol/QnxUpdateProtocol$PARAMS$VersionInfo;->version:Ljava/lang/String;

    const-string v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 185
    .local v5, "list":[Ljava/lang/String;
    aget-object v4, v5, v4

    iput-object v4, p1, Lcom/mega/update/info/ManifestInfo$DeviceInfo;->current_version:Ljava/lang/String;

    .line 186
    iget-object v4, v3, Lcom/mega/update/protocol/QnxUpdateProtocol$PARAMS$VersionInfo;->slot:Ljava/lang/String;

    iput-object v4, p1, Lcom/mega/update/info/ManifestInfo$DeviceInfo;->current_slot:Ljava/lang/String;

    .line 187
    .end local v5    # "list":[Ljava/lang/String;
    goto :goto_0

    .line 188
    :cond_0
    const/4 v4, -0x2

    iput v4, v0, Lcom/mega/update/manager/Result;->ret:I

    .line 189
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "qnx get version fail: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v3, Lcom/mega/update/protocol/QnxUpdateProtocol$PARAMS$VersionInfo;->desc:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/mega/update/manager/Result;->desc:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 194
    .end local v1    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    .end local v2    # "msg":Ljava/lang/String;
    .end local v3    # "ver":Lcom/mega/update/protocol/QnxUpdateProtocol$PARAMS$VersionInfo;
    :goto_0
    goto :goto_1

    .line 191
    :catch_0
    move-exception v1

    .line 192
    .local v1, "e":Ljava/lang/Exception;
    const/4 v2, -0x3

    iput v2, v0, Lcom/mega/update/manager/Result;->ret:I

    .line 193
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/mega/update/manager/Result;->desc:Ljava/lang/String;

    .line 195
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    return-object v0
.end method
