.class public interface abstract Lmega/car/input/ICarInput;
.super Ljava/lang/Object;
.source "SourceFile"

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
.end method

.method public abstract customRotaryEventInterceptReport(IZ)V
.end method

.method public abstract forceCustomEventDownReport(IZ)V
.end method

.method public abstract releaseInputEventCapture(Lmega/car/input/ICarInputCallback;)V
.end method

.method public abstract releaseInputEventCapture2(Lmega/car/input/ICarInputCallback;)V
.end method

.method public abstract requestInputEventCapture(Lmega/car/input/ICarInputCallback;I)V
.end method

.method public abstract requestInputEventCaptureWithLevel(Lmega/car/input/ICarInputCallback;II)V
.end method
