.class public Lcom/android/managedprovisioning/preprovisioning/WebActivity;
.super Lcom/android/managedprovisioning/common/SetupLayoutActivity;
.source "WebActivity.java"


# instance fields
.field private mSettingsFacade:Lcom/android/managedprovisioning/common/SettingsFacade;

.field private mWebView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 50
    invoke-direct {p0}, Lcom/android/managedprovisioning/common/SetupLayoutActivity;-><init>()V

    .line 55
    new-instance v0, Lcom/android/managedprovisioning/common/SettingsFacade;

    invoke-direct {v0}, Lcom/android/managedprovisioning/common/SettingsFacade;-><init>()V

    iput-object v0, p0, Lcom/android/managedprovisioning/preprovisioning/WebActivity;->mSettingsFacade:Lcom/android/managedprovisioning/common/SettingsFacade;

    return-void
.end method

.method static synthetic access$000(Lcom/android/managedprovisioning/preprovisioning/WebActivity;)Landroid/webkit/WebResourceResponse;
    .locals 0

    .line 50
    invoke-direct {p0}, Lcom/android/managedprovisioning/preprovisioning/WebActivity;->createNewSecurityErrorResponse()Landroid/webkit/WebResourceResponse;

    move-result-object p0

    return-object p0
.end method

.method public static createIntent(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/Intent;
    .locals 2

    .line 126
    invoke-static {p1}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/managedprovisioning/preprovisioning/WebActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p0, "extra_url"

    .line 128
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    const-string p1, "extra_status_bar_color"

    .line 129
    invoke-virtual {p0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private createNewSecurityErrorResponse()Landroid/webkit/WebResourceResponse;
    .locals 3

    .line 102
    new-instance p0, Landroid/webkit/WebResourceResponse;

    const-string v0, "text/plain"

    const-string v1, "UTF-8"

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    const/16 v0, 0x193

    const-string v1, "Secure connection required"

    .line 103
    invoke-virtual {p0, v0, v1}, Landroid/webkit/WebResourceResponse;->setStatusCodeAndReasonPhrase(ILjava/lang/String;)V

    return-object p0
.end method

.method static synthetic lambda$onCreate$0(Landroid/view/View;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 0

    const/16 p0, 0x20a

    return p0
.end method

.method public onBackPressed()V
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/android/managedprovisioning/preprovisioning/WebActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    iget-object p0, p0, Lcom/android/managedprovisioning/preprovisioning/WebActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {p0}, Landroid/webkit/WebView;->goBack()V

    goto :goto_0

    .line 116
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 59
    invoke-super {p0, p1}, Lcom/android/managedprovisioning/common/SetupLayoutActivity;->onCreate(Landroid/os/Bundle;)V

    .line 61
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "extra_url"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const v1, 0x7f0d00d4

    .line 63
    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    const-string v1, "No url provided to WebActivity."

    .line 64
    invoke-static {v1}, Lcom/android/managedprovisioning/common/ProvisionLogger;->loge(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 68
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "extra_status_bar_color"

    .line 69
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 70
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/managedprovisioning/common/SetupLayoutActivity;->setStatusBarColor(I)V

    .line 73
    :cond_1
    new-instance v1, Landroid/webkit/WebView;

    invoke-direct {v1, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/managedprovisioning/preprovisioning/WebActivity;->mWebView:Landroid/webkit/WebView;

    .line 75
    new-instance v2, Lcom/android/managedprovisioning/preprovisioning/WebActivity$1;

    invoke-direct {v2, p0}, Lcom/android/managedprovisioning/preprovisioning/WebActivity$1;-><init>(Lcom/android/managedprovisioning/preprovisioning/WebActivity;)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 88
    iget-object v1, p0, Lcom/android/managedprovisioning/preprovisioning/WebActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 90
    iget-object p1, p0, Lcom/android/managedprovisioning/preprovisioning/WebActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    const/4 v1, 0x1

    .line 91
    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 92
    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    .line 93
    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 94
    iget-object p1, p0, Lcom/android/managedprovisioning/preprovisioning/WebActivity;->mSettingsFacade:Lcom/android/managedprovisioning/common/SettingsFacade;

    invoke-virtual {p1, p0}, Lcom/android/managedprovisioning/common/SettingsFacade;->isUserSetupCompleted(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 96
    iget-object p1, p0, Lcom/android/managedprovisioning/preprovisioning/WebActivity;->mWebView:Landroid/webkit/WebView;

    sget-object v0, Lcom/android/managedprovisioning/preprovisioning/-$$Lambda$WebActivity$3uI9oXXuHFmCtrBlxzmgRyFd7eU;->INSTANCE:Lcom/android/managedprovisioning/preprovisioning/-$$Lambda$WebActivity$3uI9oXXuHFmCtrBlxzmgRyFd7eU;

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 98
    :cond_2
    iget-object p1, p0, Lcom/android/managedprovisioning/preprovisioning/WebActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    return-void
.end method
