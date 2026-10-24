.class public Lcom/mega/ota/test/IProgressUpdate$Default;
.super Ljava/lang/Object;
.source "IProgressUpdate.java"

# interfaces
.implements Lcom/mega/ota/test/IProgressUpdate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mega/ota/test/IProgressUpdate;
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

    .line 18
    const/4 v0, 0x0

    return-object v0
.end method

.method public updateProgress(I)V
    .locals 0
    .param p1, "progress"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12
    return-void
.end method

.method public updateStatus(III)V
    .locals 0
    .param p1, "progress"    # I
    .param p2, "code"    # I
    .param p3, "status"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15
    return-void
.end method
