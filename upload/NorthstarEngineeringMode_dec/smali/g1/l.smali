.class public final synthetic Lg1/l;
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

    iput p1, p0, Lg1/l;->a:I

    iput-object p2, p0, Lg1/l;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 6

    iget v0, p0, Lg1/l;->a:I

    const/4 v1, 0x7

    const/4 v2, 0x6

    const/16 v3, 0x8

    const/4 v4, 0x0

    iget-object p0, p0, Lg1/l;->b:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/mega/engineeringmode/ui/a;

    check-cast p1, Ljava/lang/Boolean;

    sget v0, Lcom/mega/engineeringmode/ui/a;->p:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ecu ready = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DynamicPasswordDialog"

    invoke-static {v1, v0}, Lmega/log/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/mega/engineeringmode/ui/a;->c()V

    :cond_0
    return-void

    :pswitch_0
    check-cast p0, Lcom/mega/engineeringmode/function/versioninfo/DmcProductionActivity;

    check-cast p1, Lmega/car/hardware/CarPropertyValue;

    sget v0, Lcom/mega/engineeringmode/function/versioninfo/DmcProductionActivity;->v:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lmega/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/mega/engineeringmode/function/versioninfo/DmcProductionActivity;->i:Landroid/os/Handler;

    new-instance v1, Lf2/a;

    invoke-direct {v1, p0, p1}, Lf2/a;-><init>(Lcom/mega/engineeringmode/function/versioninfo/DmcProductionActivity;Lmega/car/hardware/CarPropertyValue;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    :cond_2
    :goto_0
    const-string p0, "DmcProductionActivity"

    const-string p1, "handleSignalValueChange err "

    invoke-static {p0, p1}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void

    :pswitch_1
    check-cast p0, Ln3/l;

    sget v0, Lcom/mega/engineeringmode/function/icm/IcmSettingActivity;->j:I

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lo3/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Ln3/l;->d(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :pswitch_2
    check-cast p0, Lcom/mega/engineeringmode/ui/MegaSwitch;

    check-cast p1, Lmega/car/hardware/CarPropertyValue;

    sget v0, Lcom/mega/engineeringmode/function/exhibition/ExhibitionModeActivity;->k:I

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lmega/car/hardware/CarPropertyValue;->getStatus()I

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Lmega/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_4

    move v4, v0

    :cond_4
    invoke-virtual {p0, v4}, Lcom/mega/engineeringmode/ui/MegaSwitch;->setEnabled(Z)V

    :cond_5
    :goto_2
    return-void

    :pswitch_3
    check-cast p0, Lcom/mega/engineeringmode/function/display/DisplayActivity;

    check-cast p1, Ljava/lang/Integer;

    sget v0, Lcom/mega/engineeringmode/function/display/DisplayActivity;->v:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "stateChange "

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v5, "DisplayActivity"

    invoke-static {v5, v0}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_7

    const/4 v0, 0x3

    if-eq p1, v0, :cond_7

    if-eq p1, v2, :cond_6

    if-eq p1, v1, :cond_6

    if-eq p1, v3, :cond_6

    goto :goto_3

    :cond_6
    iget-object p1, p0, Lcom/mega/engineeringmode/function/display/DisplayActivity;->k:Lcom/mega/engineeringmode/databinding/ActivityDisplayBinding;

    iget-object p1, p1, Lcom/mega/engineeringmode/databinding/ActivityDisplayBinding;->x:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/mega/engineeringmode/function/display/DisplayActivity;->k:Lcom/mega/engineeringmode/databinding/ActivityDisplayBinding;

    iget-object p1, p1, Lcom/mega/engineeringmode/databinding/ActivityDisplayBinding;->Z:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0, v4}, Lcom/mega/engineeringmode/function/display/DisplayActivity;->p(Z)V

    goto :goto_3

    :cond_7
    iget-object p1, p0, Lcom/mega/engineeringmode/function/display/DisplayActivity;->k:Lcom/mega/engineeringmode/databinding/ActivityDisplayBinding;

    iget-object p1, p1, Lcom/mega/engineeringmode/databinding/ActivityDisplayBinding;->x:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/mega/engineeringmode/function/display/DisplayActivity;->k:Lcom/mega/engineeringmode/databinding/ActivityDisplayBinding;

    iget-object p0, p0, Lcom/mega/engineeringmode/databinding/ActivityDisplayBinding;->Z:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v4}, Landroid/view/View;->setVisibility(I)V

    :goto_3
    return-void

    :pswitch_4
    check-cast p0, Lcom/mega/engineeringmode/function/ScreenCaptureActivity;

    check-cast p1, Ljava/lang/Integer;

    sget v0, Lcom/mega/engineeringmode/function/ScreenCaptureActivity;->p:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "newState = "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "ScreenCaptureActivity"

    invoke-static {v4, v0}, Lmega/log/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v2, :cond_8

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v1, :cond_8

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v3, :cond_9

    :cond_8
    invoke-virtual {p0}, Lcom/mega/engineeringmode/function/ScreenCaptureActivity;->o()V

    :cond_9
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
