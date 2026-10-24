.class public Lcom/mega/nexus/app/IFlyingScreenStateListener$Default;
.super Ljava/lang/Object;
.source "IFlyingScreenStateListener.java"

# interfaces
.implements Lcom/mega/nexus/app/IFlyingScreenStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mega/nexus/app/IFlyingScreenStateListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 30
    const/4 v0, 0x0

    return-object v0
.end method

.method public onEndFlyingScreen(IILjava/lang/String;I)V
    .locals 0
    .param p1, "fromDisplayId"    # I
    .param p2, "toDisplayId"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15
    return-void
.end method

.method public onFlyingAppNotAllow(IILjava/lang/String;)V
    .locals 0
    .param p1, "fromDisplayId"    # I
    .param p2, "toDisplayId"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 27
    return-void
.end method

.method public onFlyingFromExternalScreenForbidden(II)V
    .locals 0
    .param p1, "fromDisplayId"    # I
    .param p2, "toDisplayId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 21
    return-void
.end method

.method public onFlyingFromPrimaryScreenForbidden(II)V
    .locals 0
    .param p1, "fromDisplayId"    # I
    .param p2, "toDisplayId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 18
    return-void
.end method

.method public onFlyingFunctionForbidden(II)V
    .locals 0
    .param p1, "fromDisplayId"    # I
    .param p2, "toDisplayId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 24
    return-void
.end method

.method public onStartFlyingScreen(IILjava/lang/String;I)V
    .locals 0
    .param p1, "fromDisplayId"    # I
    .param p2, "toDisplayId"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12
    return-void
.end method
