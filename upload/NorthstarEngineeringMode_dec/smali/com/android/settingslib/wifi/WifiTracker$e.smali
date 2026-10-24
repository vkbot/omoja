.class public final Lcom/android/settingslib/wifi/WifiTracker$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/settingslib/wifi/WifiTracker$d;


# annotations
.annotation build Landroidx/annotation/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/wifi/WifiTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "e"
.end annotation


# instance fields
.field public final a:Ljava/util/ArrayList;

.field public final synthetic b:Lcom/android/settingslib/wifi/WifiTracker;


# direct methods
.method public constructor <init>(Lcom/android/settingslib/wifi/WifiTracker;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/wifi/WifiTracker$e;->b:Lcom/android/settingslib/wifi/WifiTracker;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/wifi/WifiTracker$e;->a:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final e()V
    .locals 4

    new-instance v0, Lf/j;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lf/j;-><init>(Lcom/android/settingslib/wifi/WifiTracker$e;I)V

    new-instance v1, Lf/l;

    const/4 v2, 0x0

    const-string v3, "Invoking onAccessPointsChanged callback"

    invoke-direct {v1, v2, v3, p0, v0}, Lf/l;-><init>(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v1}, Le/a;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final j()V
    .locals 4

    new-instance v0, Landroidx/constraintlayout/helper/widget/a;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0}, Landroidx/constraintlayout/helper/widget/a;-><init>(ILjava/lang/Object;)V

    new-instance v1, Lf/l;

    const/4 v2, 0x0

    const-string v3, "Invoking onConnectedChanged callback"

    invoke-direct {v1, v2, v3, p0, v0}, Lf/l;-><init>(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v1}, Le/a;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final k(I)V
    .locals 3

    new-instance v0, Lf/k;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, p0}, Lf/k;-><init>(IILjava/lang/Object;)V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v2, "Invoking onWifiStateChanged callback with state %d"

    invoke-static {v2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance v2, Lf/l;

    invoke-direct {v2, v1, p1, p0, v0}, Lf/l;-><init>(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v2}, Le/a;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final m()V
    .locals 4

    new-instance v0, Lf/j;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lf/j;-><init>(Lcom/android/settingslib/wifi/WifiTracker$e;I)V

    new-instance v2, Lf/l;

    const-string v3, "Invoking onScanError callback"

    invoke-direct {v2, v1, v3, p0, v0}, Lf/l;-><init>(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v2}, Le/a;->b(Ljava/lang/Runnable;)V

    return-void
.end method
