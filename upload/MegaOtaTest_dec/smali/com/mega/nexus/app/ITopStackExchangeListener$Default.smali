.class public Lcom/mega/nexus/app/ITopStackExchangeListener$Default;
.super Ljava/lang/Object;
.source "ITopStackExchangeListener.java"

# interfaces
.implements Lcom/mega/nexus/app/ITopStackExchangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mega/nexus/app/ITopStackExchangeListener;
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

.method public onTopStackExchanged(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 0
    .param p1, "packageName1"    # Ljava/lang/String;
    .param p2, "displayId1"    # I
    .param p3, "packageName2"    # Ljava/lang/String;
    .param p4, "displayId2"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12
    return-void
.end method
