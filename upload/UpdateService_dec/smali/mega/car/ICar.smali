.class public interface abstract Lmega/car/ICar;
.super Ljava/lang/Object;
.source "ICar.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmega/car/ICar$Stub;,
        Lmega/car/ICar$Default;
    }
.end annotation


# virtual methods
.method public abstract getCarService(Ljava/lang/String;)Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
