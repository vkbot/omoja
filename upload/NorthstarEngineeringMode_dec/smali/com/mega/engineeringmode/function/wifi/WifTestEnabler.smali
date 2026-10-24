.class public Lcom/mega/engineeringmode/function/wifi/WifTestEnabler;
.super Lcom/mega/engineeringmode/function/wifi/AbsEnabler;
.source "SourceFile"


# instance fields
.field public final d:Landroid/net/wifi/WifiManager;

.field public final e:Landroid/content/Context;

.field public final f:Landroid/content/IntentFilter;

.field public final g:Lcom/mega/engineeringmode/function/wifi/WifTestEnabler$a;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Lcom/mega/engineeringmode/ui/MegaSwitch;Landroidx/lifecycle/Lifecycle;)V
    .locals 0
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/mega/engineeringmode/ui/MegaSwitch;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroidx/lifecycle/Lifecycle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2, p3}, Lcom/mega/engineeringmode/function/wifi/AbsEnabler;-><init>(Landroid/view/ViewGroup;Landroid/widget/CompoundButton;Landroidx/lifecycle/Lifecycle;)V

    new-instance p2, Landroid/content/IntentFilter;

    const-string p3, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-direct {p2, p3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/mega/engineeringmode/function/wifi/WifTestEnabler;->f:Landroid/content/IntentFilter;

    new-instance p2, Lcom/mega/engineeringmode/function/wifi/WifTestEnabler$a;

    invoke-direct {p2, p0}, Lcom/mega/engineeringmode/function/wifi/WifTestEnabler$a;-><init>(Lcom/mega/engineeringmode/function/wifi/WifTestEnabler;)V

    iput-object p2, p0, Lcom/mega/engineeringmode/function/wifi/WifTestEnabler;->g:Lcom/mega/engineeringmode/function/wifi/WifTestEnabler$a;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/mega/engineeringmode/function/wifi/WifTestEnabler;->e:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string/jumbo p2, "wifi"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    iput-object p1, p0, Lcom/mega/engineeringmode/function/wifi/WifTestEnabler;->d:Landroid/net/wifi/WifiManager;

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 2

    new-instance v0, Ll1/c;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0, p1}, Ll1/c;-><init>(ILjava/lang/Object;Z)V

    invoke-static {}, Le/a;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object p0

    invoke-interface {p0, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public final c()Landroid/net/wifi/WifiInfo;
    .locals 0

    iget-object p0, p0, Lcom/mega/engineeringmode/function/wifi/WifTestEnabler;->d:Landroid/net/wifi/WifiManager;

    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object p0

    return-object p0
.end method

.method public final d(I)V
    .locals 6

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    iget-object v1, p0, Lcom/mega/engineeringmode/function/wifi/AbsEnabler;->c:Lg1/g;

    iget-object v2, p0, Lcom/mega/engineeringmode/function/wifi/AbsEnabler;->b:Landroid/widget/CompoundButton;

    const/4 v3, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x1

    if-eq p1, v4, :cond_0

    invoke-virtual {v2, v3}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-virtual {v2, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    invoke-virtual {v2, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-virtual {p0, v5}, Lcom/mega/engineeringmode/function/wifi/AbsEnabler;->b(Z)V

    goto :goto_0

    :cond_0
    invoke-virtual {v2, v3}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-virtual {v2, v5}, Landroid/widget/CompoundButton;->setChecked(Z)V

    invoke-virtual {v2, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-virtual {p0, v5}, Lcom/mega/engineeringmode/function/wifi/AbsEnabler;->b(Z)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v0}, Lcom/mega/engineeringmode/function/wifi/AbsEnabler;->b(Z)V

    :goto_0
    return-void
.end method

.method public final e(Z)V
    .locals 1

    iget-object v0, p0, Lcom/mega/engineeringmode/function/wifi/WifTestEnabler;->d:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    move-result p1

    if-nez p1, :cond_0

    new-instance p1, Ls0/b;

    const/16 v0, 0x9

    invoke-direct {p1, v0, p0}, Ls0/b;-><init>(ILjava/lang/Object;)V

    invoke-static {p1}, Le/a;->b(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public final onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/mega/engineeringmode/function/wifi/WifTestEnabler;->g:Lcom/mega/engineeringmode/function/wifi/WifTestEnabler$a;

    iget-object p0, p0, Lcom/mega/engineeringmode/function/wifi/WifTestEnabler;->e:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public final onStart()V
    .locals 2

    iget-object v0, p0, Lcom/mega/engineeringmode/function/wifi/WifTestEnabler;->d:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mega/engineeringmode/function/wifi/WifTestEnabler;->d(I)V

    iget-object v0, p0, Lcom/mega/engineeringmode/function/wifi/WifTestEnabler;->f:Landroid/content/IntentFilter;

    iget-object v1, p0, Lcom/mega/engineeringmode/function/wifi/WifTestEnabler;->e:Landroid/content/Context;

    iget-object p0, p0, Lcom/mega/engineeringmode/function/wifi/WifTestEnabler;->g:Lcom/mega/engineeringmode/function/wifi/WifTestEnabler$a;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method
