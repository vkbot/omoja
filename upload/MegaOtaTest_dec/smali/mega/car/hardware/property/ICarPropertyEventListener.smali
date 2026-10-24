.class public interface abstract Lmega/car/hardware/property/ICarPropertyEventListener;
.super Ljava/lang/Object;
.source "ICarPropertyEventListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmega/car/hardware/property/ICarPropertyEventListener$Stub;,
        Lmega/car/hardware/property/ICarPropertyEventListener$Default;
    }
.end annotation


# virtual methods
.method public abstract onEvent(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lmega/car/hardware/property/CarPropertyEvent;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
