.class Lcom/android/managedprovisioning/preprovisioning/WebActivity$1;
.super Landroid/webkit/WebViewClient;
.source "WebActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/managedprovisioning/preprovisioning/WebActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/managedprovisioning/preprovisioning/WebActivity;


# direct methods
.method constructor <init>(Lcom/android/managedprovisioning/preprovisioning/WebActivity;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/android/managedprovisioning/preprovisioning/WebActivity$1;->this$0:Lcom/android/managedprovisioning/preprovisioning/WebActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public shouldInterceptRequest(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;
    .locals 1

    .line 79
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 80
    invoke-static {v0}, Landroid/webkit/URLUtil;->isHttpsUrl(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "Secure connection required, but insecure URL requested explicitly, or as a part of the page."

    .line 81
    invoke-static {p1}, Lcom/android/managedprovisioning/common/ProvisionLogger;->loge(Ljava/lang/String;)V

    .line 83
    iget-object p0, p0, Lcom/android/managedprovisioning/preprovisioning/WebActivity$1;->this$0:Lcom/android/managedprovisioning/preprovisioning/WebActivity;

    invoke-static {p0}, Lcom/android/managedprovisioning/preprovisioning/WebActivity;->access$000(Lcom/android/managedprovisioning/preprovisioning/WebActivity;)Landroid/webkit/WebResourceResponse;

    move-result-object p0

    return-object p0

    .line 85
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldInterceptRequest(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;

    move-result-object p0

    return-object p0
.end method
