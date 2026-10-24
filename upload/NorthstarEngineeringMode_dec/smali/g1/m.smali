.class public final synthetic Lg1/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lg1/m;->a:I

    iput-object p2, p0, Lg1/m;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 2

    iget v0, p0, Lg1/m;->a:I

    const-string v1, "loadState "

    iget-object p0, p0, Lg1/m;->b:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/mega/engineeringmode/function/versioninfo/PeripheralSoftwareActivity;

    check-cast p1, Ljava/lang/String;

    sget v0, Lcom/mega/engineeringmode/function/versioninfo/PeripheralSoftwareActivity;->w:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " initDatas tboxVersion "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PeripheralSoftwareActivity"

    invoke-static {v1, v0}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/mega/engineeringmode/function/versioninfo/PeripheralSoftwareActivity;->k:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void

    :pswitch_0
    check-cast p0, Lcom/mega/engineeringmode/function/versioninfo/DmcSoftwareActivity;

    check-cast p1, Ljava/lang/String;

    iget-object p0, p0, Lcom/mega/engineeringmode/function/versioninfo/DmcSoftwareActivity;->m:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :pswitch_1
    check-cast p0, Lcom/mega/engineeringmode/function/radio/RadioWireActivity;

    check-cast p1, Ljava/lang/Boolean;

    sget v0, Lcom/mega/engineeringmode/function/radio/RadioWireActivity;->k:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iget-object v0, p0, Lcom/mega/engineeringmode/function/radio/RadioWireActivity;->i:Landroid/os/Handler;

    new-instance v1, Lx1/f;

    invoke-direct {v1, p0, p1}, Lx1/f;-><init>(Lcom/mega/engineeringmode/function/radio/RadioWireActivity;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :pswitch_2
    check-cast p0, Lcom/mega/engineeringmode/function/display/VideoFragment;

    check-cast p1, Ljava/lang/Boolean;

    sget v0, Lcom/mega/engineeringmode/function/display/VideoFragment;->d:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoFragment"

    invoke-static {v1, v0}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/mega/engineeringmode/function/display/VideoFragment;->o(Z)V

    return-void

    :pswitch_3
    check-cast p0, Lcom/mega/engineeringmode/function/display/AudioFragment;

    check-cast p1, Ljava/lang/Boolean;

    sget v0, Lcom/mega/engineeringmode/function/display/AudioFragment;->f:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AudioFragment"

    invoke-static {v1, v0}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/mega/engineeringmode/function/display/AudioFragment;->o(Z)V

    return-void

    :pswitch_4
    check-cast p0, Lcom/mega/engineeringmode/function/candata/ReceiveFragment;

    check-cast p1, Lj1/a;

    iget-object p0, p0, Lcom/mega/engineeringmode/function/candata/ReceiveFragment;->a:Lcom/mega/engineeringmode/function/candata/CanDataAdapter;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Lcom/mega/engineeringmode/function/candata/CanDataAdapter;->a(Lj1/a;)V

    :cond_1
    return-void

    :pswitch_5
    check-cast p0, Lcom/mega/engineeringmode/function/ScreenCaptureActivity;

    check-cast p1, Ljava/lang/Boolean;

    sget v0, Lcom/mega/engineeringmode/function/ScreenCaptureActivity;->p:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "capvis  "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ScreenCaptureActivity"

    invoke-static {v1, v0}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/mega/engineeringmode/function/ScreenCaptureActivity;->k:Lcom/mega/engineeringmode/ui/MegaSwitch;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/mega/engineeringmode/ui/MegaSwitch;->setChecked(Z)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
