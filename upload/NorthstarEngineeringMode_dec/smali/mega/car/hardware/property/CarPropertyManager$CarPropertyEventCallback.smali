.class public interface abstract Lmega/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmega/car/hardware/property/CarPropertyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CarPropertyEventCallback"
.end annotation


# virtual methods
.method public isSticky()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public abstract onChangeEvent(Lmega/car/hardware/CarPropertyValue;)V
.end method

.method public abstract onErrorEvent(II)V
.end method
