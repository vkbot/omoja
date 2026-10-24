.class public interface abstract Lcom/mega/update/sdk/MegaOtaAssistInterface;
.super Ljava/lang/Object;
.source "MegaOtaAssistInterface.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mega/update/sdk/MegaOtaAssistInterface$ecuVersionCallback;,
        Lcom/mega/update/sdk/MegaOtaAssistInterface$OtaAssistEventCallback;
    }
.end annotation


# virtual methods
.method public abstract getCertPath()Ljava/lang/String;
.end method

.method public abstract onFinish(Landroid/os/Bundle;)V
.end method

.method public abstract registerCallback(Lcom/mega/update/sdk/MegaOtaAssistInterface$OtaAssistEventCallback;)Z
.end method

.method public abstract requestECall(I)Z
.end method

.method public abstract requestSCSK()Z
.end method

.method public abstract requestVehicleInfo()Z
.end method

.method public abstract sendCanTpMsg(I[B)Z
.end method

.method public abstract setScreenBacklightStatus(Z)Z
.end method

.method public abstract setVehicleImmoStatus(I)Z
.end method

.method public abstract unregisterCallback(Lcom/mega/update/sdk/MegaOtaAssistInterface$OtaAssistEventCallback;)V
.end method
