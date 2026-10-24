.class public final synthetic Lcom/android/managedprovisioning/common/-$$Lambda$Utils$hVR0rpLrD9-M8-kDnSTYj8TclNI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Landroid/net/ConnectivityManager;


# direct methods
.method public synthetic constructor <init>(Landroid/net/ConnectivityManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/managedprovisioning/common/-$$Lambda$Utils$hVR0rpLrD9-M8-kDnSTYj8TclNI;->f$0:Landroid/net/ConnectivityManager;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/managedprovisioning/common/-$$Lambda$Utils$hVR0rpLrD9-M8-kDnSTYj8TclNI;->f$0:Landroid/net/ConnectivityManager;

    check-cast p1, Landroid/net/Network;

    invoke-static {p0, p1}, Lcom/android/managedprovisioning/common/Utils;->lambda$isMobileNetworkConnectedToInternet$1(Landroid/net/ConnectivityManager;Landroid/net/Network;)Z

    move-result p0

    return p0
.end method
