.class public final Lcom/android/settingslib/wifi/WifiTracker$c;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "HandlerLeak"
    }
.end annotation

.annotation build Landroidx/annotation/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/wifi/WifiTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field public a:I

.field public final synthetic b:Lcom/android/settingslib/wifi/WifiTracker;


# direct methods
.method public constructor <init>(Lcom/android/settingslib/wifi/WifiTracker;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settingslib/wifi/WifiTracker$c;->b:Lcom/android/settingslib/wifi/WifiTracker;

    .line 1
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/settingslib/wifi/WifiTracker$c;->a:I

    return-void
.end method

.method public constructor <init>(Lcom/android/settingslib/wifi/WifiTracker;Landroid/os/Looper;)V
    .locals 0
    .param p1    # Lcom/android/settingslib/wifi/WifiTracker;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/android/settingslib/wifi/WifiTracker$c;->b:Lcom/android/settingslib/wifi/WifiTracker;

    .line 2
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/settingslib/wifi/WifiTracker$c;->a:I

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 4

    iget p1, p1, Landroid/os/Message;->what:I

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/android/settingslib/wifi/WifiTracker$c;->b:Lcom/android/settingslib/wifi/WifiTracker;

    iget-object v0, p1, Lcom/android/settingslib/wifi/WifiTracker;->b:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->startScan()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iput v1, p0, Lcom/android/settingslib/wifi/WifiTracker$c;->a:I

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/android/settingslib/wifi/WifiTracker$c;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/settingslib/wifi/WifiTracker$c;->a:I

    const/4 v2, 0x3

    if-lt v0, v2, :cond_3

    iput v1, p0, Lcom/android/settingslib/wifi/WifiTracker$c;->a:I

    iget-object p0, p1, Lcom/android/settingslib/wifi/WifiTracker;->a:Landroid/content/Context;

    if-eqz p0, :cond_2

    iget-object p0, p1, Lcom/android/settingslib/wifi/WifiTracker;->f:Lcom/android/settingslib/wifi/WifiTracker$e;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/android/settingslib/wifi/WifiTracker$e;->m()V

    :cond_2
    return-void

    :cond_3
    :goto_0
    const-wide/16 v2, 0x2710

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method
