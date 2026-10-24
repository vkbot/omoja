.class public interface abstract Landroid/bluetooth/IRoleSwitchListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/IRoleSwitchListener$Stub;,
        Landroid/bluetooth/IRoleSwitchListener$Default;
    }
.end annotation


# virtual methods
.method public abstract onRoleSwitchChanged(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
