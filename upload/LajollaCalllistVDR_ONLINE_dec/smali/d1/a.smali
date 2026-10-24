.class public final Ld1/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Landroidx/appcompat/app/v;

.field public c:Lcom/callisto/auto/gatherer/model/AppBehaviorBean;

.field public d:Lcom/callisto/auto/gatherer/repository/MyNetworkRequest;

.field public e:Lcom/callisto/auto/gatherer/model/BaseRequest;

.field public f:Lcom/callisto/auto/gatherer/model/ConfigAppBean;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public final i:Landroid/os/Handler;

.field public j:Z

.field public final k:Landroidx/activity/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Ld1/a;->g:Ljava/lang/String;

    iput-object v0, p0, Ld1/a;->h:Ljava/lang/String;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Ld1/a;->i:Landroid/os/Handler;

    const/4 v0, 0x1

    iput-boolean v0, p0, Ld1/a;->j:Z

    new-instance v1, Landroidx/activity/c;

    const/16 v2, 0xe

    invoke-direct {v1, v2, p0}, Landroidx/activity/c;-><init>(ILjava/lang/Object;)V

    iput-object v1, p0, Ld1/a;->k:Landroidx/activity/c;

    iput-object p1, p0, Ld1/a;->a:Landroid/content/Context;

    new-instance p1, Landroidx/appcompat/app/v;

    invoke-direct {p1, v0, p0}, Landroidx/appcompat/app/v;-><init>(ILjava/lang/Object;)V

    iput-object p1, p0, Ld1/a;->b:Landroidx/appcompat/app/v;

    return-void
.end method

.method public static a(Ld1/a;Ljava/lang/String;)Z
    .locals 4

    const-string v0, "AppBehaviorMonitor"

    const-string v1, "Unknown app launched: "

    iget-object p0, p0, Ld1/a;->a:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v2, 0x0

    const/4 v3, 0x1

    :try_start_0
    invoke-virtual {p0, p1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr p0, v3

    if-nez p0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/callisto/auto/gatherer/utils/HLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/callisto/auto/gatherer/utils/HLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    move v2, v3

    :cond_0
    return v2
.end method


# virtual methods
.method public final b()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Ld1/a;->j:Z

    return-void
.end method

.method public final c()V
    .locals 3

    new-instance v0, Lcom/callisto/auto/gatherer/model/ConfigAppBean;

    invoke-direct {v0}, Lcom/callisto/auto/gatherer/model/ConfigAppBean;-><init>()V

    iput-object v0, p0, Ld1/a;->f:Lcom/callisto/auto/gatherer/model/ConfigAppBean;

    new-instance v0, Lcom/callisto/auto/gatherer/model/AppBehaviorBean;

    invoke-direct {v0}, Lcom/callisto/auto/gatherer/model/AppBehaviorBean;-><init>()V

    iput-object v0, p0, Ld1/a;->c:Lcom/callisto/auto/gatherer/model/AppBehaviorBean;

    new-instance v0, Lcom/callisto/auto/gatherer/model/BaseRequest;

    iget-object v1, p0, Ld1/a;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/callisto/auto/gatherer/model/BaseRequest;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Ld1/a;->e:Lcom/callisto/auto/gatherer/model/BaseRequest;

    invoke-static {}, Lcom/callisto/auto/gatherer/repository/MyNetworkRequest;->getInstance()Lcom/callisto/auto/gatherer/repository/MyNetworkRequest;

    move-result-object v0

    iput-object v0, p0, Ld1/a;->d:Lcom/callisto/auto/gatherer/repository/MyNetworkRequest;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v2, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "package"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v2, p0, Ld1/a;->b:Landroidx/appcompat/app/v;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public final d()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Ld1/a;->j:Z

    return-void
.end method

.method public final e()V
    .locals 2

    iget-object v0, p0, Ld1/a;->i:Landroid/os/Handler;

    iget-object v1, p0, Ld1/a;->k:Landroidx/activity/c;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method
