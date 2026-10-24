.class public final Lcom/mega/engineeringmode/function/wifi/WifTestEnabler$a;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mega/engineeringmode/function/wifi/WifTestEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/mega/engineeringmode/function/wifi/WifTestEnabler;


# direct methods
.method public constructor <init>(Lcom/mega/engineeringmode/function/wifi/WifTestEnabler;)V
    .locals 0

    iput-object p1, p0, Lcom/mega/engineeringmode/function/wifi/WifTestEnabler$a;->a:Lcom/mega/engineeringmode/function/wifi/WifTestEnabler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/mega/engineeringmode/function/wifi/WifTestEnabler$a;->a:Lcom/mega/engineeringmode/function/wifi/WifTestEnabler;

    iget-object p1, p0, Lcom/mega/engineeringmode/function/wifi/WifTestEnabler;->d:Landroid/net/wifi/WifiManager;

    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/mega/engineeringmode/function/wifi/WifTestEnabler;->d(I)V

    :cond_0
    return-void
.end method
