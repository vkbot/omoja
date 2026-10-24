.class public interface abstract Lmega/car/hardware/property/ICarProperty;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmega/car/hardware/property/ICarProperty$Stub;,
        Lmega/car/hardware/property/ICarProperty$Default;
    }
.end annotation


# virtual methods
.method public abstract addBlacklist(Ljava/lang/String;[I)V
.end method

.method public abstract getProperty(II)Lmega/car/hardware/CarPropertyValue;
.end method

.method public abstract getPropertyConfigs([I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List<",
            "Lmega/car/hardware/CarPropertyConfig;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPropertyList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lmega/car/hardware/CarPropertyConfig;",
            ">;"
        }
    .end annotation
.end method

.method public abstract injectEvent(Ljava/lang/String;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lmega/car/hardware/property/CarPropertyEvent;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract injectPropertyChange(Lmega/car/hardware/property/CarPropertyEvent;)V
.end method

.method public abstract injectPropertySetError(II)V
.end method

.method public abstract registerListener(Lmega/car/hardware/property/ICarPropertyEventListener;[I[F)V
.end method

.method public abstract removeBlacklist(Ljava/lang/String;[I)V
.end method

.method public abstract setDebug(Z)V
.end method

.method public abstract setProperty(Lmega/car/hardware/CarPropertyValue;)V
.end method

.method public abstract unregisterCallback(ILmega/car/hardware/property/ICarPropertyEventListener;)V
.end method

.method public abstract unregisterListener(Lmega/car/hardware/property/ICarPropertyEventListener;)V
.end method
