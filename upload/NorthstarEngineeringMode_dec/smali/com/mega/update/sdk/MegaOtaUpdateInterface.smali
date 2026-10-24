.class public interface abstract Lcom/mega/update/sdk/MegaOtaUpdateInterface;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mega/update/sdk/MegaOtaUpdateInterface$OtaUpdateStatusCallback;
    }
.end annotation


# virtual methods
.method public abstract getDeviveInfo()Lcom/mega/update/sdk/utils/OtaDeviceInfo;
.end method

.method public abstract getOsVersion()Ljava/lang/String;
.end method

.method public abstract getState()Lcom/mega/update/service/UpdateState;
.end method

.method public abstract getStoragePath()Ljava/lang/String;
.end method

.method public abstract isConnect()Z
.end method

.method public abstract onFinishUpgrade(Landroid/os/Bundle;)V
.end method

.method public abstract registerCallback(Lcom/mega/update/sdk/MegaOtaUpdateInterface$OtaUpdateStatusCallback;)Z
.end method

.method public abstract setOtaMode(I)Z
.end method

.method public abstract setOtaMode(II)Z
.end method

.method public abstract triggerActivate()I
.end method

.method public abstract triggerFlash(Ljava/io/File;Landroid/os/Bundle;)I
.end method

.method public abstract triggerUpgrade(Ljava/io/File;Landroid/os/Bundle;)I
.end method

.method public abstract unregisterCallback(Lcom/mega/update/sdk/MegaOtaUpdateInterface$OtaUpdateStatusCallback;)V
.end method
