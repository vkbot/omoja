.class public final Lcom/android/settingslib/wifi/WifiTracker$f;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/wifi/WifiTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "f"
.end annotation


# instance fields
.field public final synthetic a:Lcom/android/settingslib/wifi/WifiTracker;


# direct methods
.method public constructor <init>(Lcom/android/settingslib/wifi/WifiTracker;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settingslib/wifi/WifiTracker$f;->a:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .locals 0

    iget-object p0, p0, Lcom/android/settingslib/wifi/WifiTracker$f;->a:Lcom/android/settingslib/wifi/WifiTracker;

    iget-object p2, p0, Lcom/android/settingslib/wifi/WifiTracker;->b:Landroid/net/wifi/WifiManager;

    invoke-static {p2}, Lr2/c;->e(Landroid/net/wifi/WifiManager;)Landroid/net/Network;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/net/Network;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/settingslib/wifi/WifiTracker;->j(Landroid/net/NetworkInfo;)V

    :cond_0
    return-void
.end method
