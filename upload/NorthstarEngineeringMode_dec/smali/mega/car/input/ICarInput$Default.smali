.class public Lmega/car/input/ICarInput$Default;
.super Ljava/lang/Object;
.source "SourceFile"

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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public customEventDownReport(IZ)V
    .locals 0

    return-void
.end method

.method public customRotaryEventInterceptReport(IZ)V
    .locals 0

    return-void
.end method

.method public forceCustomEventDownReport(IZ)V
    .locals 0

    return-void
.end method

.method public releaseInputEventCapture(Lmega/car/input/ICarInputCallback;)V
    .locals 0

    return-void
.end method

.method public releaseInputEventCapture2(Lmega/car/input/ICarInputCallback;)V
    .locals 0

    return-void
.end method

.method public requestInputEventCapture(Lmega/car/input/ICarInputCallback;I)V
    .locals 0

    return-void
.end method

.method public requestInputEventCaptureWithLevel(Lmega/car/input/ICarInputCallback;II)V
    .locals 0

    return-void
.end method
