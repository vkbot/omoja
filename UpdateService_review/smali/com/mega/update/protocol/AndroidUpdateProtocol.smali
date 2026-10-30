.class public Lcom/mega/update/protocol/AndroidUpdateProtocol;
.super Lcom/mega/update/protocol/IUpdateProtocol;
.source "AndroidUpdateProtocol.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mega/update/protocol/AndroidUpdateProtocol$UpdateEngineCallbackImpl;,
        Lcom/mega/update/protocol/AndroidUpdateProtocol$UpdaterConfig;
    }
.end annotation


# static fields
.field public static final BUILD_SLOT_PROPERTY:Ljava/lang/String; = "ro.boot.slot_suffix"

.field public static final BUILD_VERSION_PROPERTY:Ljava/lang/String; = "ro.system.build.version.incremental"

.field public static final PAYLOAD_BINARY_FILE_NAME:Ljava/lang/String; = "payload.bin"

.field public static final PAYLOAD_PROPERTIES_FILE_NAME:Ljava/lang/String; = "payload_properties.txt"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mUpdateEngine:Landroid/os/UpdateEngine;

.field private final mUpdateEngineCallback:Lcom/mega/update/protocol/AndroidUpdateProtocol$UpdateEngineCallbackImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    const-class v0, Lcom/mega/update/protocol/AndroidUpdateProtocol;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mega/update/protocol/AndroidUpdateProtocol;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 41
    invoke-direct {p0}, Lcom/mega/update/protocol/IUpdateProtocol;-><init>()V

    .line 42
    sget-object v0, Lcom/mega/update/protocol/AndroidUpdateProtocol;->TAG:Ljava/lang/String;

    const-string v1, "UpdateEngine init!!"

    invoke-static {v0, v1}, Lcom/mega/update/util/LogUtil;->logMsg(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    new-instance v0, Landroid/os/UpdateEngine;

    invoke-direct {v0}, Landroid/os/UpdateEngine;-><init>()V

    iput-object v0, p0, Lcom/mega/update/protocol/AndroidUpdateProtocol;->mUpdateEngine:Landroid/os/UpdateEngine;

    .line 44
    new-instance v0, Lcom/mega/update/protocol/AndroidUpdateProtocol$UpdateEngineCallbackImpl;

    invoke-direct {v0, p0}, Lcom/mega/update/protocol/AndroidUpdateProtocol$UpdateEngineCallbackImpl;-><init>(Lcom/mega/update/protocol/AndroidUpdateProtocol;)V

    iput-object v0, p0, Lcom/mega/update/protocol/AndroidUpdateProtocol;->mUpdateEngineCallback:Lcom/mega/update/protocol/AndroidUpdateProtocol$UpdateEngineCallbackImpl;

    .line 45
    iget-object v1, p0, Lcom/mega/update/protocol/AndroidUpdateProtocol;->mUpdateEngine:Landroid/os/UpdateEngine;

    if-eqz v1, :cond_1

    if-nez v0, :cond_0

    goto :goto_2

    .line 48
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/mega/update/protocol/AndroidUpdateProtocol;->mUpdateEngine:Landroid/os/UpdateEngine;

    iget-object v1, p0, Lcom/mega/update/protocol/AndroidUpdateProtocol;->mUpdateEngineCallback:Lcom/mega/update/protocol/AndroidUpdateProtocol$UpdateEngineCallbackImpl;

    invoke-virtual {v0, v1}, Landroid/os/UpdateEngine;->bind(Landroid/os/UpdateEngineCallback;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 49
    sget-object v0, Lcom/mega/update/protocol/AndroidUpdateProtocol;->TAG:Ljava/lang/String;

    const-string v1, "UpdateEngine bind fail, retry after 1s"

    invoke-static {v0, v1}, Lcom/mega/update/util/LogUtil;->logError(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    const-wide/16 v0, 0x3e8

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    :goto_1
    goto :goto_0

    .line 52
    :catch_0
    move-exception v0

    .line 53
    .local v0, "e":Ljava/lang/InterruptedException;
    sget-object v1, Lcom/mega/update/protocol/AndroidUpdateProtocol;->TAG:Ljava/lang/String;

    const-string v2, "sleep delay error"

    invoke-static {v1, v2}, Lcom/mega/update/util/LogUtil;->logError(Ljava/lang/String;Ljava/lang/String;)V

    .end local v0    # "e":Ljava/lang/InterruptedException;
    goto :goto_1

    .line 46
    :cond_1
    :goto_2
    sget-object v0, Lcom/mega/update/protocol/AndroidUpdateProtocol;->TAG:Ljava/lang/String;

    const-string v1, "UpdateEngine init fail:  mUpdateEngine is null or mUpdateEngineCallback is null "

    invoke-static {v0, v1}, Lcom/mega/update/util/LogUtil;->logError(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    :cond_2
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 31
    sget-object v0, Lcom/mega/update/protocol/AndroidUpdateProtocol;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public active(Lcom/mega/update/info/ManifestInfo$DeviceInfo;Lcom/mega/update/manager/ITriggerNotifier;)Lcom/mega/update/manager/Result;
    .locals 3
    .param p1, "info"    # Lcom/mega/update/info/ManifestInfo$DeviceInfo;
    .param p2, "notifier"    # Lcom/mega/update/manager/ITriggerNotifier;

    .line 180
    new-instance v0, Lcom/mega/update/manager/Result;

    const/4 v1, 0x0

    const-string v2, "ok"

    invoke-direct {v0, v1, v2}, Lcom/mega/update/manager/Result;-><init>(ILjava/lang/String;)V

    .line 181
    .local v0, "res":Lcom/mega/update/manager/Result;
    invoke-interface {p2, v0}, Lcom/mega/update/manager/ITriggerNotifier;->onStatusChanged(Lcom/mega/update/manager/Result;)V

    .line 182
    return-object v0
.end method

.method public reboot(Lcom/mega/update/info/ManifestInfo$DeviceInfo;)Lcom/mega/update/manager/Result;
    .locals 3
    .param p1, "info"    # Lcom/mega/update/info/ManifestInfo$DeviceInfo;

    .line 212
    new-instance v0, Lcom/mega/update/manager/Result;

    const/4 v1, -0x1

    const-string v2, "android reboot not support"

    invoke-direct {v0, v1, v2}, Lcom/mega/update/manager/Result;-><init>(ILjava/lang/String;)V

    .line 213
    .local v0, "res":Lcom/mega/update/manager/Result;
    return-object v0
.end method

.method public reset(Lcom/mega/update/info/ManifestInfo$DeviceInfo;)Lcom/mega/update/manager/Result;
    .locals 4
    .param p1, "info"    # Lcom/mega/update/info/ManifestInfo$DeviceInfo;

    .line 193
    new-instance v0, Lcom/mega/update/manager/Result;

    const/4 v1, 0x0

    const-string v2, "ok"

    invoke-direct {v0, v1, v2}, Lcom/mega/update/manager/Result;-><init>(ILjava/lang/String;)V

    .line 196
    .local v0, "res":Lcom/mega/update/manager/Result;
    :try_start_0
    iget-object v1, p0, Lcom/mega/update/protocol/AndroidUpdateProtocol;->mUpdateEngine:Landroid/os/UpdateEngine;

    invoke-virtual {v1}, Landroid/os/UpdateEngine;->cancel()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 199
    goto :goto_0

    .line 197
    :catch_0
    move-exception v1

    .line 198
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/mega/update/protocol/AndroidUpdateProtocol;->TAG:Ljava/lang/String;

    const-string v3, "nothing to cancel"

    invoke-static {v2, v3}, Lcom/mega/update/util/LogUtil;->logError(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/mega/update/protocol/AndroidUpdateProtocol;->mUpdateEngine:Landroid/os/UpdateEngine;

    invoke-virtual {v1}, Landroid/os/UpdateEngine;->resetStatus()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 206
    goto :goto_1

    .line 203
    :catch_1
    move-exception v1

    .line 204
    .restart local v1    # "e":Ljava/lang/Exception;
    const/4 v2, -0x1

    iput v2, v0, Lcom/mega/update/manager/Result;->ret:I

    .line 205
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/mega/update/manager/Result;->desc:Ljava/lang/String;

    .line 207
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    return-object v0
.end method

.method public rollback(Lcom/mega/update/info/ManifestInfo$DeviceInfo;Lcom/mega/update/manager/ITriggerNotifier;)Lcom/mega/update/manager/Result;
    .locals 3
    .param p1, "info"    # Lcom/mega/update/info/ManifestInfo$DeviceInfo;
    .param p2, "notifier"    # Lcom/mega/update/manager/ITriggerNotifier;

    .line 187
    new-instance v0, Lcom/mega/update/manager/Result;

    const/4 v1, -0x1

    const-string v2, "android rollback not support"

    invoke-direct {v0, v1, v2}, Lcom/mega/update/manager/Result;-><init>(ILjava/lang/String;)V

    .line 188
    .local v0, "res":Lcom/mega/update/manager/Result;
    return-object v0
.end method

.method public start(Lcom/mega/update/info/ManifestInfo$DeviceInfo;Lcom/mega/update/manager/ITriggerNotifier;)Lcom/mega/update/manager/Result;
    .locals 10
    .param p1, "info"    # Lcom/mega/update/info/ManifestInfo$DeviceInfo;
    .param p2, "notifier"    # Lcom/mega/update/manager/ITriggerNotifier;

    .line 156
    new-instance v0, Lcom/mega/update/manager/Result;

    const/4 v1, 0x0

    const-string v2, "ok"

    invoke-direct {v0, v1, v2}, Lcom/mega/update/manager/Result;-><init>(ILjava/lang/String;)V

    .line 157
    .local v0, "res":Lcom/mega/update/manager/Result;
    new-instance v2, Lcom/mega/update/protocol/AndroidUpdateProtocol$UpdaterConfig;

    invoke-direct {v2, v1}, Lcom/mega/update/protocol/AndroidUpdateProtocol$UpdaterConfig;-><init>(Z)V

    .line 158
    .local v2, "config":Lcom/mega/update/protocol/AndroidUpdateProtocol$UpdaterConfig;
    iget-object v3, p1, Lcom/mega/update/info/ManifestInfo$DeviceInfo;->package_file:Ljava/lang/String;

    iget-wide v4, p1, Lcom/mega/update/info/ManifestInfo$DeviceInfo;->package_offset:J

    invoke-virtual {v2, v3, v4, v5}, Lcom/mega/update/protocol/AndroidUpdateProtocol$UpdaterConfig;->parseConfig(Ljava/lang/String;J)Z

    move-result v3

    if-nez v3, :cond_0

    .line 159
    const/4 v1, -0x1

    iput v1, v0, Lcom/mega/update/manager/Result;->ret:I

    .line 160
    const-string v1, "config file parse error"

    iput-object v1, v0, Lcom/mega/update/manager/Result;->desc:Ljava/lang/String;

    .line 161
    return-object v0

    .line 163
    :cond_0
    iput-object p2, p0, Lcom/mega/update/protocol/AndroidUpdateProtocol;->mCallback:Lcom/mega/update/manager/ITriggerNotifier;

    .line 165
    :try_start_0
    iget-object v3, p0, Lcom/mega/update/protocol/AndroidUpdateProtocol;->mUpdateEngine:Landroid/os/UpdateEngine;

    .line 166
    invoke-static {v2}, Lcom/mega/update/protocol/AndroidUpdateProtocol$UpdaterConfig;->access$100(Lcom/mega/update/protocol/AndroidUpdateProtocol$UpdaterConfig;)Ljava/lang/String;

    move-result-object v4

    .line 167
    invoke-static {v2}, Lcom/mega/update/protocol/AndroidUpdateProtocol$UpdaterConfig;->access$200(Lcom/mega/update/protocol/AndroidUpdateProtocol$UpdaterConfig;)J

    move-result-wide v5

    .line 168
    invoke-static {v2}, Lcom/mega/update/protocol/AndroidUpdateProtocol$UpdaterConfig;->access$300(Lcom/mega/update/protocol/AndroidUpdateProtocol$UpdaterConfig;)J

    move-result-wide v7

    .line 169
    invoke-static {v2}, Lcom/mega/update/protocol/AndroidUpdateProtocol$UpdaterConfig;->access$400(Lcom/mega/update/protocol/AndroidUpdateProtocol$UpdaterConfig;)Ljava/util/List;

    move-result-object v9

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v9, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, [Ljava/lang/String;

    .line 165
    invoke-virtual/range {v3 .. v9}, Landroid/os/UpdateEngine;->applyPayload(Ljava/lang/String;JJ[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 173
    goto :goto_0

    .line 170
    :catch_0
    move-exception v1

    .line 171
    .local v1, "e":Ljava/lang/Exception;
    const/4 v3, -0x2

    iput v3, v0, Lcom/mega/update/manager/Result;->ret:I

    .line 172
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/mega/update/manager/Result;->desc:Ljava/lang/String;

    .line 174
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-object v0
.end method

.method public version(Lcom/mega/update/info/ManifestInfo$DeviceInfo;)Lcom/mega/update/manager/Result;
    .locals 6
    .param p1, "info"    # Lcom/mega/update/info/ManifestInfo$DeviceInfo;

    .line 218
    new-instance v0, Lcom/mega/update/manager/Result;

    const/4 v1, 0x0

    const-string v2, "ok"

    invoke-direct {v0, v1, v2}, Lcom/mega/update/manager/Result;-><init>(ILjava/lang/String;)V

    .line 219
    .local v0, "res":Lcom/mega/update/manager/Result;
    const-string v1, "ro.system.build.version.incremental"

    const-string v2, "0.0.0.0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 220
    .local v1, "version":Ljava/lang/String;
    const-string v2, "ro.boot.slot_suffix"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 221
    .local v2, "slot":Ljava/lang/String;
    iput-object v3, p1, Lcom/mega/update/info/ManifestInfo$DeviceInfo;->current_vendor_id:Ljava/lang/String;

    .line 222
    iput-object v1, p1, Lcom/mega/update/info/ManifestInfo$DeviceInfo;->current_version:Ljava/lang/String;

    .line 223
    iput-object v2, p1, Lcom/mega/update/info/ManifestInfo$DeviceInfo;->current_slot:Ljava/lang/String;

    .line 224
    sget-object v3, Lcom/mega/update/protocol/AndroidUpdateProtocol;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "android slot: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " version: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mega/update/util/LogUtil;->logMsg(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    return-object v0
.end method
