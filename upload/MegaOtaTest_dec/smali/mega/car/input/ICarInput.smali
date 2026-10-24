.class public interface abstract Lmega/car/input/ICarInput;
.super Ljava/lang/Object;
.source "ICarInput.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmega/car/input/ICarInput$Stub;,
        Lmega/car/input/ICarInput$Default;
    }
.end annotation


# virtual methods
.method public abstract customEventDownReport(IZ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract customRotaryEventInterceptReport(IZ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract forceCustomEventDownReport(IZ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract releaseInputEventCapture(Lmega/car/input/ICarInputCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract releaseInputEventCapture2(Lmega/car/input/ICarInputCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract requestInputEventCapture(Lmega/car/input/ICarInputCallback;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract requestInputEventCaptureWithLevel(Lmega/car/input/ICarInputCallback;II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
