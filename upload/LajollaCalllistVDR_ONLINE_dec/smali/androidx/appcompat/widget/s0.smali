.class public final Landroidx/appcompat/widget/s0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public c:I

.field public final d:Ljava/lang/Object;

.field public final e:Ljava/lang/Object;

.field public final f:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Landroidx/appcompat/widget/s0;->b:I

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Landroidx/appcompat/widget/s0;->c:I

    .line 3
    new-instance v0, Lcom/callisto/auto/gatherer/model/SELinuxStateBean;

    invoke-direct {v0}, Lcom/callisto/auto/gatherer/model/SELinuxStateBean;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/widget/s0;->d:Ljava/lang/Object;

    .line 4
    new-instance v0, Lcom/callisto/auto/gatherer/model/BaseRequest;

    invoke-direct {v0, p1}, Lcom/callisto/auto/gatherer/model/BaseRequest;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroidx/appcompat/widget/s0;->e:Ljava/lang/Object;

    .line 5
    invoke-static {}, Lcom/callisto/auto/gatherer/repository/MyNetworkRequest;->getInstance()Lcom/callisto/auto/gatherer/repository/MyNetworkRequest;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/widget/s0;->f:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroidx/appcompat/widget/t0;Landroid/widget/TextView;Landroid/graphics/Typeface;I)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Landroidx/appcompat/widget/s0;->b:I

    .line 6
    iput-object p1, p0, Landroidx/appcompat/widget/s0;->f:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/appcompat/widget/s0;->d:Ljava/lang/Object;

    iput-object p3, p0, Landroidx/appcompat/widget/s0;->e:Ljava/lang/Object;

    iput p4, p0, Landroidx/appcompat/widget/s0;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget v0, p0, Landroidx/appcompat/widget/s0;->b:I

    iget-object v1, p0, Landroidx/appcompat/widget/s0;->e:Ljava/lang/Object;

    iget-object v2, p0, Landroidx/appcompat/widget/s0;->d:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast v2, Landroid/widget/TextView;

    check-cast v1, Landroid/graphics/Typeface;

    iget v0, p0, Landroidx/appcompat/widget/s0;->c:I

    invoke-virtual {v2, v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    return-void

    :goto_0
    const-string v0, "selinuxSensor :"

    :try_start_0
    new-instance v3, Lcom/callisto/ncvdr/VdrSensor;

    invoke-direct {v3}, Lcom/callisto/ncvdr/VdrSensor;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Lcom/callisto/ncvdr/VdrSensor;->selinuxSensor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const-string v4, "SELinuxStateMonitor"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/callisto/auto/gatherer/utils/HLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Landroidx/appcompat/widget/s0;->c:I

    if-eq v0, v3, :cond_0

    move-object v0, v2

    check-cast v0, Lcom/callisto/auto/gatherer/model/SELinuxStateBean;

    invoke-virtual {v0, v3}, Lcom/callisto/auto/gatherer/model/SELinuxStateBean;->setSelinuxStat(I)V

    move-object v0, v1

    check-cast v0, Lcom/callisto/auto/gatherer/model/BaseRequest;

    const-string v4, "b010402"

    check-cast v2, Lcom/callisto/auto/gatherer/model/SELinuxStateBean;

    invoke-virtual {v0, v4, v2}, Lcom/callisto/auto/gatherer/model/BaseRequest;->setDataInfo(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Landroidx/appcompat/widget/s0;->f:Ljava/lang/Object;

    check-cast v0, Lcom/callisto/auto/gatherer/repository/MyNetworkRequest;

    check-cast v1, Lcom/callisto/auto/gatherer/model/BaseRequest;

    invoke-virtual {v0, v1}, Lcom/callisto/auto/gatherer/repository/MyNetworkRequest;->performPostRequest(Lcom/callisto/auto/gatherer/model/BaseRequest;)V

    iput v3, p0, Landroidx/appcompat/widget/s0;->c:I

    const-string v0, "callisto_vdr"

    const-string v1, "Get event:b010402"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
