.class public Landroid/bluetooth/IRoleSwitchListener$Default;
.super Ljava/lang/Object;
.source "IRoleSwitchListener.java"

# interfaces
.implements Landroid/bluetooth/IRoleSwitchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/IRoleSwitchListener;
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

    .line 20
    const/4 v0, 0x0

    return-object v0
.end method

.method public onRoleSwitchChanged(II)V
    .locals 0
    .param p1, "status"    # I
    .param p2, "role"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 17
    return-void
.end method
