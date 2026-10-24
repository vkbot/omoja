.class public Lmega/car/hardware/property/ICarProperty$Default;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmega/car/hardware/property/ICarProperty;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmega/car/hardware/property/ICarProperty;
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
.method public addBlacklist(Ljava/lang/String;[I)V
    .locals 0

    return-void
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getProperty(II)Lmega/car/hardware/CarPropertyValue;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getPropertyConfigs([I)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List<",
            "Lmega/car/hardware/CarPropertyConfig;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public getPropertyList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lmega/car/hardware/CarPropertyConfig;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public injectEvent(Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lmega/car/hardware/property/CarPropertyEvent;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public injectPropertyChange(Lmega/car/hardware/property/CarPropertyEvent;)V
    .locals 0

    return-void
.end method

.method public injectPropertySetError(II)V
    .locals 0

    return-void
.end method

.method public registerListener(Lmega/car/hardware/property/ICarPropertyEventListener;[I[F)V
    .locals 0

    return-void
.end method

.method public removeBlacklist(Ljava/lang/String;[I)V
    .locals 0

    return-void
.end method

.method public setDebug(Z)V
    .locals 0

    return-void
.end method

.method public setProperty(Lmega/car/hardware/CarPropertyValue;)V
    .locals 0

    return-void
.end method

.method public unregisterCallback(ILmega/car/hardware/property/ICarPropertyEventListener;)V
    .locals 0

    return-void
.end method

.method public unregisterListener(Lmega/car/hardware/property/ICarPropertyEventListener;)V
    .locals 0

    return-void
.end method
