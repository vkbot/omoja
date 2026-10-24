.class public interface abstract Lmega/car/CarPropertyManager$CarPropertyEventCallback;
.super Ljava/lang/Object;
.source "CarPropertyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmega/car/CarPropertyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CarPropertyEventCallback"
.end annotation


# virtual methods
.method public isSticky()Z
    .locals 1

    .line 69
    const/4 v0, 0x1

    return v0
.end method

.method public abstract onChangeEvent(Lmega/car/hardware/CarPropertyValue;)V
.end method

.method public abstract onErrorEvent(II)V
.end method
