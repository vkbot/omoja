.class public final Landroidx/fragment/app/u0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final c:Ljava/lang/Object;

.field public final d:Ljava/lang/Object;

.field public final e:Ljava/lang/Object;

.field public final f:Ljava/lang/Object;

.field public final g:Ljava/lang/Object;

.field public final h:Ljava/lang/Object;

.field public i:Ljava/lang/Object;

.field public final j:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Landroidx/fragment/app/u0;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/fragment/app/u0;->e:Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/u0;->c:Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/u0;->d:Ljava/lang/Object;

    new-instance v0, Lcom/callisto/auto/gatherer/model/DataListBean;

    invoke-direct {v0}, Lcom/callisto/auto/gatherer/model/DataListBean;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/u0;->j:Ljava/lang/Object;

    new-instance v0, Lcom/callisto/auto/gatherer/model/BaseRequest;

    invoke-direct {v0, p1}, Lcom/callisto/auto/gatherer/model/BaseRequest;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroidx/fragment/app/u0;->g:Ljava/lang/Object;

    invoke-static {}, Lcom/callisto/auto/gatherer/repository/MyNetworkRequest;->getInstance()Lcom/callisto/auto/gatherer/repository/MyNetworkRequest;

    move-result-object p1

    iput-object p1, p0, Landroidx/fragment/app/u0;->h:Ljava/lang/Object;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "android.permission.READ_CONTACTS"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "android.permission.WRITE_CONTACTS"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "android.permission.CAMERA"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "android.permission.RECORD_AUDIO"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "android.permission.READ_CALL_LOG"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "android.permission.WRITE_CALL_LOG"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-object p1, p0, Landroidx/fragment/app/u0;->f:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 10

    iget-object v0, p0, Landroidx/fragment/app/u0;->d:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    iget-object v2, p0, Landroidx/fragment/app/u0;->c:Ljava/lang/Object;

    if-nez v1, :cond_0

    check-cast v2, Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v2}, Ljava/util/List;->clear()V

    return-void

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/callisto/auto/gatherer/model/PermissionInfo;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/callisto/auto/gatherer/model/PermissionInfo;

    invoke-virtual {v9, v5, v9}, Lcom/callisto/auto/gatherer/model/PermissionInfo;->isPermissionInfoEqual(Lcom/callisto/auto/gatherer/model/PermissionInfo;Lcom/callisto/auto/gatherer/model/PermissionInfo;)Z

    move-result v9

    if-eqz v9, :cond_2

    move v6, v7

    :cond_3
    if-nez v6, :cond_1

    invoke-virtual {v5, v7}, Lcom/callisto/auto/gatherer/model/PermissionInfo;->setPermissionStat(I)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_5
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/callisto/auto/gatherer/model/PermissionInfo;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_6
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/callisto/auto/gatherer/model/PermissionInfo;

    invoke-virtual {v5, v9, v5}, Lcom/callisto/auto/gatherer/model/PermissionInfo;->isPermissionInfoEqual(Lcom/callisto/auto/gatherer/model/PermissionInfo;Lcom/callisto/auto/gatherer/model/PermissionInfo;)Z

    move-result v9

    if-eqz v9, :cond_6

    move v8, v7

    goto :goto_2

    :cond_7
    move v8, v6

    :goto_2
    if-nez v8, :cond_5

    const/4 v8, 0x2

    invoke-virtual {v5, v8}, Lcom/callisto/auto/gatherer/model/PermissionInfo;->setPermissionStat(I)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_8
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_9

    invoke-virtual {p0, v1}, Landroidx/fragment/app/u0;->b(Ljava/util/ArrayList;)V

    :cond_9
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_a

    invoke-virtual {p0, v3}, Landroidx/fragment/app/u0;->b(Ljava/util/ArrayList;)V

    :cond_a
    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v2}, Ljava/util/List;->clear()V

    return-void
.end method

.method public final b(Ljava/util/ArrayList;)V
    .locals 2

    iget-object v0, p0, Landroidx/fragment/app/u0;->j:Ljava/lang/Object;

    check-cast v0, Lcom/callisto/auto/gatherer/model/DataListBean;

    invoke-virtual {v0, p1}, Lcom/callisto/auto/gatherer/model/DataListBean;->setDataList(Ljava/util/List;)V

    iget-object p1, p0, Landroidx/fragment/app/u0;->g:Ljava/lang/Object;

    check-cast p1, Lcom/callisto/auto/gatherer/model/BaseRequest;

    const-string v1, "b010205"

    invoke-virtual {p1, v1, v0}, Lcom/callisto/auto/gatherer/model/BaseRequest;->setDataInfo(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Landroidx/fragment/app/u0;->h:Ljava/lang/Object;

    check-cast v0, Lcom/callisto/auto/gatherer/repository/MyNetworkRequest;

    invoke-virtual {v0, p1}, Lcom/callisto/auto/gatherer/repository/MyNetworkRequest;->performPostRequest(Lcom/callisto/auto/gatherer/model/BaseRequest;)V

    const-string p1, "callisto_vdr"

    const-string v0, "Get event:b010205"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final run()V
    .locals 12

    iget v0, p0, Landroidx/fragment/app/u0;->b:I

    iget-object v1, p0, Landroidx/fragment/app/u0;->c:Ljava/lang/Object;

    iget-object v2, p0, Landroidx/fragment/app/u0;->f:Ljava/lang/Object;

    iget-object v3, p0, Landroidx/fragment/app/u0;->e:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    if-eqz v1, :cond_0

    move-object v0, v3

    check-cast v0, Landroidx/fragment/app/c1;

    move-object v4, v2

    check-cast v4, Landroid/view/View;

    invoke-virtual {v0, v4, v1}, Landroidx/fragment/app/c1;->m(Landroid/view/View;Ljava/lang/Object;)V

    iget-object v5, p0, Landroidx/fragment/app/u0;->g:Ljava/lang/Object;

    check-cast v5, Landroidx/fragment/app/t;

    iget-object v6, p0, Landroidx/fragment/app/u0;->h:Ljava/lang/Object;

    check-cast v6, Ljava/util/ArrayList;

    invoke-static {v0, v1, v5, v6, v4}, Landroidx/fragment/app/v0;->b(Landroidx/fragment/app/c1;Ljava/lang/Object;Landroidx/fragment/app/t;Ljava/util/ArrayList;Landroid/view/View;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Landroidx/fragment/app/u0;->i:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/u0;->j:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    iget-object v1, p0, Landroidx/fragment/app/u0;->d:Ljava/lang/Object;

    if-eqz v1, :cond_1

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v5, v2

    check-cast v5, Landroid/view/View;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    check-cast v3, Landroidx/fragment/app/c1;

    invoke-virtual {v3, v1, v0, v4}, Landroidx/fragment/app/c1;->n(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    check-cast v2, Landroid/view/View;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void

    :goto_0
    const-string v0, "SysPermissionsMonitor getInstalledPackages \u3002\u3002\u30021"

    const-string v4, "callisto_vdr"

    invoke-static {v4, v0}, Lcom/callisto/auto/gatherer/utils/HLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    move-object v0, v1

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    move-object v0, v3

    check-cast v0, Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/16 v5, 0x1000

    invoke-virtual {v0, v5}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ApplicationInfo;

    iget-object v7, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    const/16 v8, 0x3e8

    if-ne v6, v8, :cond_4

    goto :goto_1

    :cond_4
    move-object v6, v3

    check-cast v6, Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v6, v7, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v6

    iget-object v7, v6, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-eqz v7, :cond_3

    const/4 v8, 0x0

    :goto_2
    array-length v9, v7

    if-ge v8, v9, :cond_3

    aget-object v9, v7, v8

    move-object v10, v2

    check-cast v10, Ljava/util/List;

    invoke-interface {v10, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    new-instance v10, Lcom/callisto/auto/gatherer/model/PermissionInfo;

    iget-object v11, v6, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-direct {v10, v11, v9}, Lcom/callisto/auto/gatherer/model/PermissionInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v10, p0, Landroidx/fragment/app/u0;->i:Ljava/lang/Object;

    move-object v9, v1

    check-cast v9, Ljava/util/List;

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_6
    invoke-virtual {p0}, Landroidx/fragment/app/u0;->a()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_3
    const-string v0, "SysPermissionsMonitor getInstalledPackages \u3002\u3002\u30022"

    invoke-static {v4, v0}, Lcom/callisto/auto/gatherer/utils/HLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
