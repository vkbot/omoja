.class public Lcom/mega/engineeringmode/function/location/GpsActivity;
.super Lcom/mega/engineeringmode/function/BaseFunctionActivity;
.source "SourceFile"


# instance fields
.field public i:Landroid/widget/Button;

.field public j:Landroid/widget/Button;

.field public k:Landroid/widget/TextView;

.field public l:Landroid/widget/TextView;

.field public m:Landroid/widget/TextView;

.field public n:Landroid/widget/TextView;

.field public o:Landroid/location/LocationManager;

.field public final p:Landroidx/constraintlayout/core/state/b;

.field public q:Lvendor/mega/tboxclient/V1_0/ITboxClientService;

.field public r:Z

.field public final s:Lcom/mega/engineeringmode/function/location/GpsActivity$a;

.field public final t:Lcom/mega/engineeringmode/function/location/GpsActivity$b;

.field public final u:Lcom/mega/engineeringmode/function/location/GpsActivity$c;

.field public final v:Lcom/mega/engineeringmode/function/location/GpsActivity$d;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/mega/engineeringmode/function/BaseFunctionActivity;-><init>()V

    new-instance v0, Landroidx/constraintlayout/core/state/b;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroidx/constraintlayout/core/state/b;-><init>(I)V

    iput-object v0, p0, Lcom/mega/engineeringmode/function/location/GpsActivity;->p:Landroidx/constraintlayout/core/state/b;

    new-instance v0, Lcom/mega/engineeringmode/function/location/GpsActivity$a;

    invoke-direct {v0, p0}, Lcom/mega/engineeringmode/function/location/GpsActivity$a;-><init>(Lcom/mega/engineeringmode/function/location/GpsActivity;)V

    iput-object v0, p0, Lcom/mega/engineeringmode/function/location/GpsActivity;->s:Lcom/mega/engineeringmode/function/location/GpsActivity$a;

    new-instance v0, Lcom/mega/engineeringmode/function/location/GpsActivity$b;

    invoke-direct {v0, p0}, Lcom/mega/engineeringmode/function/location/GpsActivity$b;-><init>(Lcom/mega/engineeringmode/function/location/GpsActivity;)V

    iput-object v0, p0, Lcom/mega/engineeringmode/function/location/GpsActivity;->t:Lcom/mega/engineeringmode/function/location/GpsActivity$b;

    new-instance v0, Lcom/mega/engineeringmode/function/location/GpsActivity$c;

    invoke-direct {v0, p0}, Lcom/mega/engineeringmode/function/location/GpsActivity$c;-><init>(Lcom/mega/engineeringmode/function/location/GpsActivity;)V

    iput-object v0, p0, Lcom/mega/engineeringmode/function/location/GpsActivity;->u:Lcom/mega/engineeringmode/function/location/GpsActivity$c;

    new-instance v0, Lcom/mega/engineeringmode/function/location/GpsActivity$d;

    invoke-direct {v0, p0}, Lcom/mega/engineeringmode/function/location/GpsActivity$d;-><init>(Lcom/mega/engineeringmode/function/location/GpsActivity;)V

    iput-object v0, p0, Lcom/mega/engineeringmode/function/location/GpsActivity;->v:Lcom/mega/engineeringmode/function/location/GpsActivity$d;

    return-void
.end method

.method public static n(Lcom/mega/engineeringmode/function/location/GpsActivity;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/mega/engineeringmode/function/location/GpsActivity;->q:Lvendor/mega/tboxclient/V1_0/ITboxClientService;

    const-string v1, "GpsActivity"

    if-nez v0, :cond_0

    const-string p0, "mClient = null"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "eventId = "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", data =null"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    iget-object p0, p0, Lcom/mega/engineeringmode/function/location/GpsActivity;->q:Lvendor/mega/tboxclient/V1_0/ITboxClientService;

    invoke-interface {p0, p1, v0}, Lvendor/mega/tboxclient/V1_0/ITboxClientService;->sendMsg(Ljava/lang/String;Ljava/util/ArrayList;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lcom/mega/engineeringmode/function/BaseFunctionActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d0093

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    invoke-super {p0}, Lcom/mega/engineeringmode/function/BaseFunctionActivity;->j()V

    const-string p1, "location"

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/location/LocationManager;

    iput-object p1, p0, Lcom/mega/engineeringmode/function/location/GpsActivity;->o:Landroid/location/LocationManager;

    const p1, 0x7f0a00ce

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/mega/engineeringmode/function/location/GpsActivity;->i:Landroid/widget/Button;

    const p1, 0x7f0a00cf

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/mega/engineeringmode/function/location/GpsActivity;->j:Landroid/widget/Button;

    const p1, 0x7f0a0416

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/mega/engineeringmode/function/location/GpsActivity;->k:Landroid/widget/TextView;

    const p1, 0x7f0a0417

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/mega/engineeringmode/function/location/GpsActivity;->l:Landroid/widget/TextView;

    const p1, 0x7f0a0411

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/mega/engineeringmode/function/location/GpsActivity;->m:Landroid/widget/TextView;

    const p1, 0x7f0a0419

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/mega/engineeringmode/function/location/GpsActivity;->n:Landroid/widget/TextView;

    new-instance p1, Landroid/os/HandlerThread;

    const-string v0, ""

    invoke-direct {p1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance p1, Ls1/b;

    const/4 v1, 0x0

    invoke-direct {p1, p0, v1}, Ls1/b;-><init>(Lcom/mega/engineeringmode/function/location/GpsActivity;I)V

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object p1, p0, Lcom/mega/engineeringmode/function/location/GpsActivity;->i:Landroid/widget/Button;

    new-instance v0, Ls1/c;

    invoke-direct {v0, p0}, Ls1/c;-><init>(Lcom/mega/engineeringmode/function/location/GpsActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/mega/engineeringmode/function/location/GpsActivity;->j:Landroid/widget/Button;

    new-instance v0, Ls1/d;

    invoke-direct {v0, p0}, Ls1/d;-><init>(Lcom/mega/engineeringmode/function/location/GpsActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/mega/engineeringmode/function/location/GpsActivity;->o:Landroid/location/LocationManager;

    iget-object v0, p0, Lcom/mega/engineeringmode/function/location/GpsActivity;->u:Lcom/mega/engineeringmode/function/location/GpsActivity$c;

    invoke-static {}, Ld/f;->B()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/location/LocationManager;->addNmeaListener(Landroid/location/OnNmeaMessageListener;Landroid/os/Handler;)Z

    iget-object p1, p0, Lcom/mega/engineeringmode/function/location/GpsActivity;->o:Landroid/location/LocationManager;

    iget-object v0, p0, Lcom/mega/engineeringmode/function/location/GpsActivity;->v:Lcom/mega/engineeringmode/function/location/GpsActivity$d;

    invoke-virtual {p1, v0}, Landroid/location/LocationManager;->addGpsStatusListener(Landroid/location/GpsStatus$Listener;)Z

    const p1, 0x7f0a00b8

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Ls1/e;

    invoke-direct {v0, p0}, Ls1/e;-><init>(Lcom/mega/engineeringmode/function/location/GpsActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0a00b6

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Ls1/f;

    invoke-direct {v0, p0}, Ls1/f;-><init>(Lcom/mega/engineeringmode/function/location/GpsActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/mega/engineeringmode/function/BaseFunctionActivity;->h()V

    iget-object p0, p0, Lcom/mega/engineeringmode/function/BaseFunctionActivity;->a:Landroid/widget/TextView;

    const p1, 0x7f1201a5

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method public final onDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/mega/engineeringmode/function/BaseFunctionActivity;->onDestroy()V

    iget-object v0, p0, Lcom/mega/engineeringmode/function/location/GpsActivity;->o:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/mega/engineeringmode/function/location/GpsActivity;->v:Lcom/mega/engineeringmode/function/location/GpsActivity$d;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeGpsStatusListener(Landroid/location/GpsStatus$Listener;)V

    iget-object v0, p0, Lcom/mega/engineeringmode/function/location/GpsActivity;->o:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/mega/engineeringmode/function/location/GpsActivity;->u:Lcom/mega/engineeringmode/function/location/GpsActivity$c;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeNmeaListener(Landroid/location/OnNmeaMessageListener;)V

    iget-object v0, p0, Lcom/mega/engineeringmode/function/location/GpsActivity;->o:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/mega/engineeringmode/function/location/GpsActivity;->t:Lcom/mega/engineeringmode/function/location/GpsActivity$b;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->unregisterGnssMeasurementsCallback(Landroid/location/GnssMeasurementsEvent$Callback;)V

    iget-object v0, p0, Lcom/mega/engineeringmode/function/location/GpsActivity;->q:Lvendor/mega/tboxclient/V1_0/ITboxClientService;

    if-eqz v0, :cond_0

    :try_start_0
    const-string v1, "TBOX_GNSS"

    iget-object p0, p0, Lcom/mega/engineeringmode/function/location/GpsActivity;->s:Lcom/mega/engineeringmode/function/location/GpsActivity$a;

    invoke-interface {v0, v1, p0}, Lvendor/mega/tboxclient/V1_0/ITboxClientService;->unregisterRxCallback(Ljava/lang/String;Lvendor/mega/tboxclient/V1_0/ITboxClientServiceCallback;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
