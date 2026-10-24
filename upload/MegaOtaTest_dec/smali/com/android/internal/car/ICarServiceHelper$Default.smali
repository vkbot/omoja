.class public Lcom/android/internal/car/ICarServiceHelper$Default;
.super Ljava/lang/Object;
.source "ICarServiceHelper.java"

# interfaces
.implements Lcom/android/internal/car/ICarServiceHelper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/car/ICarServiceHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 42
    const/4 v0, 0x0

    return-object v0
.end method

.method public forceSuspend(I)I
    .locals 1
    .param p1, "timeoutMs"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16
    const/4 v0, 0x0

    return v0
.end method

.method public setDisplayWhitelistForUser(I[I)V
    .locals 0
    .param p1, "userId"    # I
    .param p2, "displayIds"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 24
    return-void
.end method

.method public setPassengerDisplays([I)V
    .locals 0
    .param p1, "displayIds"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 31
    return-void
.end method

.method public setSourcePreferredComponents(ZLjava/util/List;)V
    .locals 0
    .param p1, "enableSourcePreferred"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List<",
            "Landroid/content/ComponentName;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 39
    .local p2, "sourcePreferredComponents":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    return-void
.end method
