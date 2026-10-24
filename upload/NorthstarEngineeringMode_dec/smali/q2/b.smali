.class public final Lq2/b;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/mega/nexus/net/MegaConnectivityManagerAdapter;->INTERNET_STATUS_CHANGE_ACTION:Ljava/lang/String;

    return-void
.end method

.method public static a(Landroid/net/ConnectivityManager;Landroid/os/Handler;)V
    .locals 3

    new-instance v0, Lq2/a;

    invoke-direct {v0}, Lq2/a;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2, v0, p1}, Landroid/net/ConnectivityManager;->startTethering(IZLandroid/net/ConnectivityManager$OnStartTetheringCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public static b(Landroid/net/ConnectivityManager;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/net/ConnectivityManager;->stopTethering(I)V

    return-void
.end method
