.class public final synthetic Li1/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:I

.field public final synthetic r:I

.field public final synthetic x:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILn0/b$a;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Li1/b;->c:I

    iput p1, p0, Li1/b;->r:I

    iput-object p2, p0, Li1/b;->x:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/mega/engineeringmode/function/BaseFunctionActivity;II)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p3, p0, Li1/b;->c:I

    iput-object p1, p0, Li1/b;->x:Ljava/lang/Object;

    iput p2, p0, Li1/b;->r:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Li1/b;->c:I

    iget-object v1, p0, Li1/b;->x:Ljava/lang/Object;

    iget p0, p0, Li1/b;->r:I

    packed-switch v0, :pswitch_data_0

    check-cast v1, Ln0/b;

    const-string v0, "EngineerModeManager"

    :try_start_0
    sget-object v2, Ln2/d;->a:Ln0/a;

    if-eqz v2, :cond_0

    const-string/jumbo v2, "registerRxCallback "

    invoke-static {v0, v2}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Ln2/d;->a:Ln0/a;

    invoke-interface {v2, p0, v1}, Ln0/a;->B(ILn0/b;)I

    sget-object v2, Ln2/d;->d:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v2, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lmega/log/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    check-cast v1, Lcom/mega/engineeringmode/function/dsp/DspActivity;

    sget v0, Lcom/mega/engineeringmode/function/dsp/DspActivity;->m:I

    invoke-virtual {v1}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f1202fd

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lvendor/mega/hardware/audiocontrol/V1_0/StatusCode;->toString(I)Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {v1, p0, v0}, Lk2/d;->b(Landroid/content/Context;Ljava/lang/String;I)V

    return-void

    :pswitch_1
    check-cast v1, Lcom/mega/engineeringmode/function/camera/CameraTestActivity;

    sget v0, Lcom/mega/engineeringmode/function/camera/CameraTestActivity;->w:I

    invoke-virtual {v1, p0}, Lcom/mega/engineeringmode/function/camera/CameraTestActivity;->o(I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
