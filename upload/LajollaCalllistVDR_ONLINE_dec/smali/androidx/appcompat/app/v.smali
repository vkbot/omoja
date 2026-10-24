.class public final Landroidx/appcompat/app/v;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Landroidx/appcompat/app/v;->a:I

    iput-object p2, p0, Landroidx/appcompat/app/v;->b:Ljava/lang/Object;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    iget p1, p0, Landroidx/appcompat/app/v;->a:I

    iget-object v0, p0, Landroidx/appcompat/app/v;->b:Ljava/lang/Object;

    packed-switch p1, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    check-cast v0, Landroidx/appcompat/app/w;

    check-cast v0, Landroidx/appcompat/app/u;

    iget p1, v0, Landroidx/appcompat/app/u;->c:I

    const/4 p2, 0x1

    iget-object v0, v0, Landroidx/appcompat/app/u;->d:Landroidx/appcompat/app/a0;

    packed-switch p1, :pswitch_data_1

    goto :goto_0

    :pswitch_1
    invoke-virtual {v0, p2}, Landroidx/appcompat/app/a0;->h(Z)Z

    goto :goto_1

    :goto_0
    invoke-virtual {v0, p2}, Landroidx/appcompat/app/a0;->h(Z)Z

    :goto_1
    return-void

    :goto_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object p2

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onReceive: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AppBehaviorMonitor"

    invoke-static {v2, v1}, Lcom/callisto/auto/gatherer/utils/HLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v3, "b010201"

    const-string v4, ";\u662f\u5426\u662f\u672a\u77e5\u5e94\u7528:"

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Ld1/a;

    iget-boolean v5, v1, Ld1/a;->j:Z

    if-eqz v5, :cond_0

    const-string p1, "\u5e94\u7528\u5df2\u5b89\u88c5\uff1a"

    invoke-static {p1, p2, v4}, Landroidx/activity/b;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {v1, p2}, Ld1/a;->a(Ld1/a;Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/callisto/auto/gatherer/utils/HLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, v1, Ld1/a;->c:Lcom/callisto/auto/gatherer/model/AppBehaviorBean;

    const-string v2, "install"

    invoke-virtual {p1, p2, v2}, Lcom/callisto/auto/gatherer/model/AppBehaviorBean;->setAppBehavior(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, v1, Ld1/a;->e:Lcom/callisto/auto/gatherer/model/BaseRequest;

    iget-object p2, v1, Ld1/a;->c:Lcom/callisto/auto/gatherer/model/AppBehaviorBean;

    invoke-virtual {p1, v3, p2}, Lcom/callisto/auto/gatherer/model/BaseRequest;->setDataInfo(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_3

    :cond_0
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Ld1/a;

    iget-boolean v5, v1, Ld1/a;->j:Z

    if-eqz v5, :cond_1

    const-string p1, "\u5e94\u7528\u5df2\u5378\u8f7d\uff1a"

    invoke-static {p1, p2, v4}, Landroidx/activity/b;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {v1, p2}, Ld1/a;->a(Ld1/a;Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/callisto/auto/gatherer/utils/HLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, v1, Ld1/a;->c:Lcom/callisto/auto/gatherer/model/AppBehaviorBean;

    const-string v2, "uninstall"

    invoke-virtual {p1, p2, v2}, Lcom/callisto/auto/gatherer/model/AppBehaviorBean;->setAppBehavior(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, v1, Ld1/a;->e:Lcom/callisto/auto/gatherer/model/BaseRequest;

    iget-object p2, v1, Ld1/a;->c:Lcom/callisto/auto/gatherer/model/AppBehaviorBean;

    invoke-virtual {p1, v3, p2}, Lcom/callisto/auto/gatherer/model/BaseRequest;->setDataInfo(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_3

    :cond_1
    const-string v1, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    move-object p1, v0

    check-cast p1, Ld1/a;

    iget-boolean v1, p1, Ld1/a;->j:Z

    if-eqz v1, :cond_2

    const-string v1, "\u5e94\u7528\u5df2\u66f4\u65b0\uff1a"

    invoke-static {v1, p2, v4}, Landroidx/activity/b;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1, p2}, Ld1/a;->a(Ld1/a;Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/callisto/auto/gatherer/utils/HLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p1, Ld1/a;->c:Lcom/callisto/auto/gatherer/model/AppBehaviorBean;

    const-string v2, "replaced"

    invoke-virtual {v1, p2, v2}, Lcom/callisto/auto/gatherer/model/AppBehaviorBean;->setAppBehavior(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p1, Ld1/a;->e:Lcom/callisto/auto/gatherer/model/BaseRequest;

    iget-object p1, p1, Ld1/a;->c:Lcom/callisto/auto/gatherer/model/AppBehaviorBean;

    invoke-virtual {p2, v3, p1}, Lcom/callisto/auto/gatherer/model/BaseRequest;->setDataInfo(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2
    :goto_3
    const-string p1, "callisto_vdr"

    const-string p2, "Get event:b010201"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    check-cast v0, Ld1/a;

    iget-object p1, v0, Ld1/a;->d:Lcom/callisto/auto/gatherer/repository/MyNetworkRequest;

    iget-object p2, v0, Ld1/a;->e:Lcom/callisto/auto/gatherer/model/BaseRequest;

    invoke-virtual {p1, p2}, Lcom/callisto/auto/gatherer/repository/MyNetworkRequest;->performPostRequest(Lcom/callisto/auto/gatherer/model/BaseRequest;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method
