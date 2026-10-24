.class public Lmega/car/input/ICarInput$Default;
.super Ljava/lang/Object;
.source "ICarInput.java"

# interfaces
.implements Lmega/car/input/ICarInput;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmega/car/input/ICarInput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 40
    const/4 v0, 0x0

    return-object v0
.end method

.method public customEventDownReport(IZ)V
    .locals 0
    .param p1, "eventSeq"    # I
    .param p2, "intercept"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 25
    return-void
.end method

.method public customRotaryEventInterceptReport(IZ)V
    .locals 0
    .param p1, "eventSeq"    # I
    .param p2, "intercept"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 34
    return-void
.end method

.method public forceCustomEventDownReport(IZ)V
    .locals 0
    .param p1, "eventSeq"    # I
    .param p2, "intercept"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 31
    return-void
.end method

.method public releaseInputEventCapture(Lmega/car/input/ICarInputCallback;)V
    .locals 0
    .param p1, "callback"    # Lmega/car/input/ICarInputCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 22
    return-void
.end method

.method public releaseInputEventCapture2(Lmega/car/input/ICarInputCallback;)V
    .locals 0
    .param p1, "callback"    # Lmega/car/input/ICarInputCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 37
    return-void
.end method

.method public requestInputEventCapture(Lmega/car/input/ICarInputCallback;I)V
    .locals 0
    .param p1, "callback"    # Lmega/car/input/ICarInputCallback;
    .param p2, "inputType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 18
    return-void
.end method

.method public requestInputEventCaptureWithLevel(Lmega/car/input/ICarInputCallback;II)V
    .locals 0
    .param p1, "callback"    # Lmega/car/input/ICarInputCallback;
    .param p2, "inputType"    # I
    .param p3, "requestLevel"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 28
    return-void
.end method
