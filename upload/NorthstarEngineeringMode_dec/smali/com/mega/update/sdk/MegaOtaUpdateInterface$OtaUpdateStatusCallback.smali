.class public interface abstract Lcom/mega/update/sdk/MegaOtaUpdateInterface$OtaUpdateStatusCallback;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mega/update/sdk/MegaOtaUpdateInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OtaUpdateStatusCallback"
.end annotation


# virtual methods
.method public abstract onConnect(Z)V
.end method

.method public abstract otaUpdateProgress(I)V
.end method

.method public abstract otaUpdateStatus(II)V
.end method
