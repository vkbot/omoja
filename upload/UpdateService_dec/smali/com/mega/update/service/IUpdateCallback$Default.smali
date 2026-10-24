.class public Lcom/mega/update/service/IUpdateCallback$Default;
.super Ljava/lang/Object;
.source "IUpdateCallback.java"

# interfaces
.implements Lcom/mega/update/service/IUpdateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mega/update/service/IUpdateCallback;
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

    .line 15
    const/4 v0, 0x0

    return-object v0
.end method

.method public onStatusUpdate(Lcom/mega/update/service/UpdateState;)V
    .locals 0
    .param p1, "state"    # Lcom/mega/update/service/UpdateState;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12
    return-void
.end method
