.class public final Le1/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public final b:Lcom/callisto/auto/gatherer/model/BaseRequest;

.field public final c:Lcom/callisto/auto/gatherer/repository/MyNetworkRequest;

.field public final d:Landroid/content/ContentResolver;

.field public e:Z

.field public final f:Ljava/lang/Object;

.field public g:Landroidx/emoji2/text/z;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2

    iput p2, p0, Le1/a;->a:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p2, v0, :cond_0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Le1/a;->e:Z

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    iput-object p2, p0, Le1/a;->d:Landroid/content/ContentResolver;

    new-instance p2, Lcom/callisto/auto/gatherer/model/SysDevSettingBean;

    invoke-direct {p2}, Lcom/callisto/auto/gatherer/model/SysDevSettingBean;-><init>()V

    iput-object p2, p0, Le1/a;->f:Ljava/lang/Object;

    new-instance p2, Lcom/callisto/auto/gatherer/model/BaseRequest;

    invoke-direct {p2, p1}, Lcom/callisto/auto/gatherer/model/BaseRequest;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Le1/a;->b:Lcom/callisto/auto/gatherer/model/BaseRequest;

    invoke-static {}, Lcom/callisto/auto/gatherer/repository/MyNetworkRequest;->getInstance()Lcom/callisto/auto/gatherer/repository/MyNetworkRequest;

    move-result-object p1

    iput-object p1, p0, Le1/a;->c:Lcom/callisto/auto/gatherer/repository/MyNetworkRequest;

    return-void

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Le1/a;->e:Z

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    iput-object p2, p0, Le1/a;->d:Landroid/content/ContentResolver;

    new-instance p2, Lcom/callisto/auto/gatherer/model/SysUsbBean;

    invoke-direct {p2}, Lcom/callisto/auto/gatherer/model/SysUsbBean;-><init>()V

    iput-object p2, p0, Le1/a;->f:Ljava/lang/Object;

    new-instance p2, Lcom/callisto/auto/gatherer/model/BaseRequest;

    invoke-direct {p2, p1}, Lcom/callisto/auto/gatherer/model/BaseRequest;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Le1/a;->b:Lcom/callisto/auto/gatherer/model/BaseRequest;

    invoke-static {}, Lcom/callisto/auto/gatherer/repository/MyNetworkRequest;->getInstance()Lcom/callisto/auto/gatherer/repository/MyNetworkRequest;

    move-result-object p1

    iput-object p1, p0, Le1/a;->c:Lcom/callisto/auto/gatherer/repository/MyNetworkRequest;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget v0, p0, Le1/a;->a:I

    iget-object v1, p0, Le1/a;->d:Landroid/content/ContentResolver;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0, v1}, Le1/a;->b(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "devSettingEnabled: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SysDevSettingMonitor"

    invoke-static {v1, v0}, Lcom/callisto/auto/gatherer/utils/HLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :goto_0
    invoke-virtual {p0, v1}, Le1/a;->c(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "usbEnabled: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SystemConfigMonitor"

    invoke-static {v1, v0}, Lcom/callisto/auto/gatherer/utils/HLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final b(Landroid/content/ContentResolver;)Ljava/lang/String;
    .locals 3

    const-string v0, "development_settings_enabled"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    iget-object v0, p0, Le1/a;->f:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/callisto/auto/gatherer/model/SysDevSettingBean;

    invoke-virtual {v1, p1}, Lcom/callisto/auto/gatherer/model/SysDevSettingBean;->setDevSettingStat(I)V

    const-string v1, "b010401"

    check-cast v0, Lcom/callisto/auto/gatherer/model/SysDevSettingBean;

    iget-object v2, p0, Le1/a;->b:Lcom/callisto/auto/gatherer/model/BaseRequest;

    invoke-virtual {v2, v1, v0}, Lcom/callisto/auto/gatherer/model/BaseRequest;->setDataInfo(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Le1/a;->c:Lcom/callisto/auto/gatherer/repository/MyNetworkRequest;

    invoke-virtual {v0, v2}, Lcom/callisto/auto/gatherer/repository/MyNetworkRequest;->performPostRequest(Lcom/callisto/auto/gatherer/model/BaseRequest;)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const-string p1, "ADB \u5f00\u53d1\u8005\u6a21\u5f0f\u5df2\u6253\u5f00"

    goto :goto_0

    :cond_0
    const-string p1, "ADB \u5f00\u53d1\u8005\u6a21\u5f0f\u5df2\u5173\u95ed"

    :goto_0
    const-string v0, "callisto_vdr"

    const-string v1, "Get event:b010401"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1
.end method

.method public final c(Landroid/content/ContentResolver;)Ljava/lang/String;
    .locals 3

    const-string v0, "adb_enabled"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    iget-object v0, p0, Le1/a;->f:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/callisto/auto/gatherer/model/SysUsbBean;

    invoke-virtual {v1, p1}, Lcom/callisto/auto/gatherer/model/SysUsbBean;->setUsbStat(I)V

    const-string v1, "b010403"

    check-cast v0, Lcom/callisto/auto/gatherer/model/SysUsbBean;

    iget-object v2, p0, Le1/a;->b:Lcom/callisto/auto/gatherer/model/BaseRequest;

    invoke-virtual {v2, v1, v0}, Lcom/callisto/auto/gatherer/model/BaseRequest;->setDataInfo(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Le1/a;->c:Lcom/callisto/auto/gatherer/repository/MyNetworkRequest;

    invoke-virtual {v0, v2}, Lcom/callisto/auto/gatherer/repository/MyNetworkRequest;->performPostRequest(Lcom/callisto/auto/gatherer/model/BaseRequest;)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const-string p1, "USB \u8c03\u8bd5\u6a21\u5f0f\u5df2\u6253\u5f00"

    goto :goto_0

    :cond_0
    const-string p1, "USB \u8c03\u8bd5\u6a21\u5f0f\u5df2\u5173\u95ed"

    :goto_0
    const-string v0, "callisto_vdr"

    const-string v1, "Get event:b010403"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1
.end method

.method public final d()V
    .locals 5

    iget v0, p0, Le1/a;->a:I

    iget-object v1, p0, Le1/a;->d:Landroid/content/ContentResolver;

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget-boolean v0, p0, Le1/a;->e:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iput-boolean v2, p0, Le1/a;->e:Z

    new-instance v0, Landroidx/emoji2/text/z;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v3, v2}, Landroidx/emoji2/text/z;-><init>(Ljava/lang/Object;Landroid/os/Handler;I)V

    iput-object v0, p0, Le1/a;->g:Landroidx/emoji2/text/z;

    const-string v0, "development_settings_enabled"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v3, p0, Le1/a;->g:Landroidx/emoji2/text/z;

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual {p0}, Le1/a;->a()V

    :goto_0
    return-void

    :goto_1
    iget-boolean v0, p0, Le1/a;->e:Z

    if-eqz v0, :cond_1

    goto :goto_2

    :cond_1
    iput-boolean v2, p0, Le1/a;->e:Z

    new-instance v0, Landroidx/emoji2/text/z;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    const/4 v4, 0x2

    invoke-direct {v0, p0, v3, v4}, Landroidx/emoji2/text/z;-><init>(Ljava/lang/Object;Landroid/os/Handler;I)V

    iput-object v0, p0, Le1/a;->g:Landroidx/emoji2/text/z;

    const-string v0, "adb_enabled"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v3, p0, Le1/a;->g:Landroidx/emoji2/text/z;

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual {p0}, Le1/a;->a()V

    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final e()V
    .locals 4

    iget v0, p0, Le1/a;->a:I

    const/4 v1, 0x0

    iget-object v2, p0, Le1/a;->d:Landroid/content/ContentResolver;

    const/4 v3, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iput-boolean v3, p0, Le1/a;->e:Z

    iget-object v0, p0, Le1/a;->g:Landroidx/emoji2/text/z;

    if-eqz v0, :cond_0

    invoke-virtual {v2, v0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iput-object v1, p0, Le1/a;->g:Landroidx/emoji2/text/z;

    :cond_0
    return-void

    :goto_0
    iput-boolean v3, p0, Le1/a;->e:Z

    iget-object v0, p0, Le1/a;->g:Landroidx/emoji2/text/z;

    if-eqz v0, :cond_1

    invoke-virtual {v2, v0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iput-object v1, p0, Le1/a;->g:Landroidx/emoji2/text/z;

    :cond_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
