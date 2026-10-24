.class public final synthetic Ls1/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:I

.field public final synthetic r:Lcom/mega/engineeringmode/function/location/GpsActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/mega/engineeringmode/function/location/GpsActivity;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Ls1/b;->c:I

    iput-object p1, p0, Ls1/b;->r:Lcom/mega/engineeringmode/function/location/GpsActivity;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget v0, p0, Ls1/b;->c:I

    iget-object p0, p0, Ls1/b;->r:Lcom/mega/engineeringmode/function/location/GpsActivity;

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lcom/mega/engineeringmode/function/location/GpsActivity;->l:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    :pswitch_0
    const-string/jumbo v0, "register  result = "

    iget-object v1, p0, Lcom/mega/engineeringmode/function/location/GpsActivity;->p:Landroidx/constraintlayout/core/state/b;

    const-wide/16 v2, 0x2710

    invoke-static {v2, v3, v1}, Ln2/g;->a(JLn2/g;)Lb/b;

    move-result-object v1

    check-cast v1, Lvendor/mega/tboxclient/V1_0/ITboxClientService;

    iput-object v1, p0, Lcom/mega/engineeringmode/function/location/GpsActivity;->q:Lvendor/mega/tboxclient/V1_0/ITboxClientService;

    if-eqz v1, :cond_0

    :try_start_0
    const-string v2, "TBOX_GNSS"

    iget-object p0, p0, Lcom/mega/engineeringmode/function/location/GpsActivity;->s:Lcom/mega/engineeringmode/function/location/GpsActivity$a;

    invoke-interface {v1, v2, p0}, Lvendor/mega/tboxclient/V1_0/ITboxClientService;->registerRxCallback(Ljava/lang/String;Lvendor/mega/tboxclient/V1_0/ITboxClientServiceCallback;)Z

    move-result p0

    const-string v1, "GpsActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
