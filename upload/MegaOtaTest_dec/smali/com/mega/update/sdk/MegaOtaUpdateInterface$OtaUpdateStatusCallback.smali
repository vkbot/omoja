.class public interface abstract Lcom/mega/update/sdk/MegaOtaUpdateInterface$OtaUpdateStatusCallback;
.super Ljava/lang/Object;
.source "MegaOtaUpdateInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mega/update/sdk/MegaOtaUpdateInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OtaUpdateStatusCallback"
.end annotation


# virtual methods
.method public abstract otaUpdateProgress(Ljava/lang/String;II)V
.end method

.method public abstract otaUpdateStatus(Ljava/lang/String;III)V
.end method
