.class public interface abstract Lmega/car/input/ICarInputCallback;
.super Ljava/lang/Object;
.source "ICarInputCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmega/car/input/ICarInputCallback$Stub;,
        Lmega/car/input/ICarInputCallback$Default;
    }
.end annotation


# virtual methods
.method public abstract onCustomInputEvent(Lmega/car/input/CustomInputEvent;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onCustomRotaryEvent(Lmega/car/input/CustomRotaryEvent;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onKeyEvent(Landroid/view/KeyEvent;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
