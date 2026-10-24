.class public interface abstract Lcom/mega/update/sdk/MegaOtaAssistInterface$OtaAssistEventCallback;
.super Ljava/lang/Object;
.source "MegaOtaAssistInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mega/update/sdk/MegaOtaAssistInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OtaAssistEventCallback"
.end annotation


# virtual methods
.method public abstract otaAssistCanTp([BZ)V
.end method

.method public abstract otaAssistECallStatus(IJ)V
.end method

.method public abstract otaAssistRunning2HalfHour()V
.end method

.method public abstract otaAssistSC([BZ)V
.end method

.method public abstract otaAssistSK([BZ)V
.end method

.method public abstract otaAssistVehicleInfo(Lcom/mega/update/sdk/utils/OtaVehicleInfo;)V
.end method

.method public abstract otaPowerStatusChange(I)V
.end method
