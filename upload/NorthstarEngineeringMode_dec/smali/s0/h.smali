.class public final synthetic Ls0/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:I

.field public final synthetic r:Ljava/lang/Object;

.field public final synthetic x:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Ls0/h;->c:I

    iput-object p2, p0, Ls0/h;->r:Ljava/lang/Object;

    iput-object p3, p0, Ls0/h;->x:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    iget v0, p0, Ls0/h;->c:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    iget-object v4, p0, Ls0/h;->x:Ljava/lang/Object;

    iget-object p0, p0, Ls0/h;->r:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lm5/y;

    check-cast v4, Ljavax/xml/namespace/QName;

    invoke-virtual {p0, v4}, Lm5/y;->S0(Ljavax/xml/namespace/QName;)V

    return-void

    :pswitch_0
    check-cast p0, Lm5/y;

    check-cast v4, Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {p0, v4, v0}, Lm5/y;->Q1(Ljava/lang/String;Li5/z1;)V

    return-void

    :pswitch_1
    check-cast p0, Ld2/b;

    check-cast v4, Ljava/lang/String;

    iget-object p0, p0, Ld2/b;->a:Lcom/mega/engineeringmode/function/upgrade/a;

    invoke-virtual {p0, v4}, Lcom/mega/engineeringmode/function/upgrade/a;->b(Ljava/lang/String;)V

    return-void

    :pswitch_2
    check-cast p0, Lcom/mega/engineeringmode/function/upgrade/a;

    check-cast v4, Ljava/lang/String;

    sget v0, Lcom/mega/engineeringmode/function/upgrade/a;->i:I

    invoke-virtual {p0, v4}, Lcom/mega/engineeringmode/function/upgrade/a;->b(Ljava/lang/String;)V

    return-void

    :pswitch_3
    check-cast p0, Lcom/mega/engineeringmode/function/tbox/b$h;

    check-cast v4, Ljava/lang/String;

    iget-object v0, p0, Lcom/mega/engineeringmode/function/tbox/b$h;->b:Landroid/os/Handler;

    :try_start_0
    iget-object v1, p0, Lcom/mega/engineeringmode/function/tbox/b$h;->d:Ln0/a;

    invoke-interface {v1, v3, v3, v4}, Ln0/a;->d(IILjava/lang/String;)I

    new-instance v1, Lq0/b;

    invoke-direct {v1, v2, p0, v4}, Lq0/b;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "TBoxManager"

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lmega/log/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ls0/b;

    const/4 v2, 0x7

    invoke-direct {v1, v2, p0}, Ls0/b;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void

    :pswitch_4
    check-cast p0, Lcom/mega/engineeringmode/function/tbox/b$c;

    check-cast v4, Landroid/util/Pair;

    iget-object p0, p0, Lcom/mega/engineeringmode/function/tbox/b$c;->a:Lcom/mega/engineeringmode/function/tbox/b;

    iget-object p0, p0, Lcom/mega/engineeringmode/function/tbox/b;->h:Ljava/util/LinkedList;

    new-instance v0, Lx1/d;

    invoke-direct {v0, v3, v4}, Lx1/d;-><init>(ILjava/lang/Object;)V

    invoke-interface {p0, v0}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-void

    :pswitch_5
    check-cast p0, Lcom/mega/engineeringmode/function/tbox/b;

    check-cast v4, Lcom/mega/engineeringmode/function/tbox/b$b;

    iget-object p0, p0, Lcom/mega/engineeringmode/function/tbox/b;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v4, v1, p0}, Lcom/mega/engineeringmode/function/tbox/b$b;->g(ILjava/lang/String;)V

    return-void

    :pswitch_6
    check-cast p0, Lcom/mega/engineeringmode/function/speaker/SpeakerActivity;

    check-cast v4, Ljava/lang/String;

    iget-object v0, p0, Lcom/mega/engineeringmode/function/speaker/SpeakerActivity;->j:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->reverse()Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "length "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "SpeakerActivity"

    invoke-static {v5, v4}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f1202d5

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {p0, v1}, Lcom/mega/engineeringmode/function/speaker/SpeakerActivity;->n(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "   "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f1202d6

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v7, 0x30

    if-le v6, v3, :cond_0

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    goto :goto_1

    :cond_0
    move v3, v7

    :goto_1
    invoke-virtual {p0, v3}, Lcom/mega/engineeringmode/function/speaker/SpeakerActivity;->n(C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "\n   "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f1202d9

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v2, :cond_1

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    goto :goto_2

    :cond_1
    move v2, v7

    :goto_2
    invoke-virtual {p0, v2}, Lcom/mega/engineeringmode/function/speaker/SpeakerActivity;->n(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1202da

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x3

    if-le v1, v2, :cond_2

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    goto :goto_3

    :cond_2
    move v1, v7

    :goto_3
    invoke-virtual {p0, v1}, Lcom/mega/engineeringmode/function/speaker/SpeakerActivity;->n(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\n  "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1202d2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x4

    if-le v1, v2, :cond_3

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v7

    :cond_3
    invoke-virtual {p0, v7}, Lcom/mega/engineeringmode/function/speaker/SpeakerActivity;->n(C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p0, p0, Lcom/mega/engineeringmode/function/speaker/SpeakerActivity;->j:Landroid/widget/TextView;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    return-void

    :pswitch_7
    check-cast p0, Lcom/mega/engineeringmode/function/offlineconfiguration/OfflineConfigurationActivity;

    check-cast v4, Ljava/lang/String;

    iget-object v0, p0, Lcom/mega/engineeringmode/function/offlineconfiguration/OfflineConfigurationActivity;->k:Landroid/widget/Button;

    const-string v1, "7010"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    iget-object v0, p0, Lcom/mega/engineeringmode/function/offlineconfiguration/OfflineConfigurationActivity;->l:Landroid/widget/Button;

    const-string v1, "7019"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    iget-object v0, p0, Lcom/mega/engineeringmode/function/offlineconfiguration/OfflineConfigurationActivity;->m:Landroid/widget/Button;

    const-string v1, "701a"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    iget-object v0, p0, Lcom/mega/engineeringmode/function/offlineconfiguration/OfflineConfigurationActivity;->n:Landroid/widget/Button;

    const-string v1, "701b"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    iget-object v0, p0, Lcom/mega/engineeringmode/function/offlineconfiguration/OfflineConfigurationActivity;->r:Landroid/widget/Button;

    const-string v1, "6202"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    iget-object v0, p0, Lcom/mega/engineeringmode/function/offlineconfiguration/OfflineConfigurationActivity;->s:Landroid/widget/Button;

    const-string v1, "6215"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    iget-object v0, p0, Lcom/mega/engineeringmode/function/offlineconfiguration/OfflineConfigurationActivity;->o:Landroid/widget/Button;

    const-string v1, "7038"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    iget-object v0, p0, Lcom/mega/engineeringmode/function/offlineconfiguration/OfflineConfigurationActivity;->p:Landroid/widget/Button;

    const-string v1, "7041"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    iget-object v0, p0, Lcom/mega/engineeringmode/function/offlineconfiguration/OfflineConfigurationActivity;->q:Landroid/widget/Button;

    const-string v1, "704a"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    iget-object p0, p0, Lcom/mega/engineeringmode/function/offlineconfiguration/OfflineConfigurationActivity;->t:Landroid/view/View;

    const-string v0, "621c"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setSelected(Z)V

    return-void

    :pswitch_8
    check-cast p0, Lcom/mega/engineeringmode/function/location/GpsActivity;

    check-cast v4, Ljava/lang/String;

    iget-object p0, p0, Lcom/mega/engineeringmode/function/location/GpsActivity;->m:Landroid/widget/TextView;

    invoke-virtual {p0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :pswitch_9
    check-cast p0, Lcom/mega/engineeringmode/function/candata/CanDataViewModel$b;

    check-cast v4, Lj1/a;

    iget-object p0, p0, Lcom/mega/engineeringmode/function/candata/CanDataViewModel$b;->a:Lcom/mega/engineeringmode/function/candata/CanDataViewModel;

    iget-object p0, p0, Lcom/mega/engineeringmode/function/candata/CanDataViewModel;->d:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0, v4}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void

    :pswitch_a
    check-cast p0, Lcom/mega/carsettings/bluetooth/DeviceListPreferenceFragment;

    check-cast v4, Ld/g;

    sget v0, Lcom/mega/carsettings/bluetooth/DeviceListPreferenceFragment;->l:I

    invoke-virtual {p0, v4}, Lcom/mega/carsettings/bluetooth/DeviceListPreferenceFragment;->y(Ld/g;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
