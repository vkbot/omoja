.class public abstract Lcom/mega/update/protocol/IUpdateProtocol;
.super Ljava/lang/Object;
.source "IUpdateProtocol.java"


# instance fields
.field protected mCallback:Lcom/mega/update/manager/ITriggerNotifier;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mega/update/protocol/IUpdateProtocol;->mCallback:Lcom/mega/update/manager/ITriggerNotifier;

    return-void
.end method


# virtual methods
.method public abstract active(Lcom/mega/update/info/ManifestInfo$DeviceInfo;Lcom/mega/update/manager/ITriggerNotifier;)Lcom/mega/update/manager/Result;
.end method

.method public abstract reboot(Lcom/mega/update/info/ManifestInfo$DeviceInfo;)Lcom/mega/update/manager/Result;
.end method

.method public abstract reset(Lcom/mega/update/info/ManifestInfo$DeviceInfo;)Lcom/mega/update/manager/Result;
.end method

.method public abstract rollback(Lcom/mega/update/info/ManifestInfo$DeviceInfo;Lcom/mega/update/manager/ITriggerNotifier;)Lcom/mega/update/manager/Result;
.end method

.method public abstract start(Lcom/mega/update/info/ManifestInfo$DeviceInfo;Lcom/mega/update/manager/ITriggerNotifier;)Lcom/mega/update/manager/Result;
.end method

.method public abstract version(Lcom/mega/update/info/ManifestInfo$DeviceInfo;)Lcom/mega/update/manager/Result;
.end method
