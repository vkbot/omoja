.class public final synthetic Landroidx/constraintlayout/motion/widget/a;
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

    iput p1, p0, Landroidx/constraintlayout/motion/widget/a;->c:I

    iput-object p2, p0, Landroidx/constraintlayout/motion/widget/a;->r:Ljava/lang/Object;

    iput-object p3, p0, Landroidx/constraintlayout/motion/widget/a;->x:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget v0, p0, Landroidx/constraintlayout/motion/widget/a;->c:I

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/a;->x:Ljava/lang/Object;

    iget-object p0, p0, Landroidx/constraintlayout/motion/widget/a;->r:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lm5/y;

    check-cast v1, Ljavax/xml/namespace/QName;

    if-eqz v1, :cond_8

    iget-object v0, p0, Lm5/y;->c:Lm5/h;

    invoke-virtual {v0}, Lm5/h;->M()I

    move-result v0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_7

    const/4 v2, 0x3

    if-eq v0, v2, :cond_7

    const/4 v2, 0x5

    if-ne v0, v2, :cond_6

    invoke-virtual {v1}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {v0}, Lm5/z0;->e(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {v0}, Lj5/p;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v1}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    invoke-virtual {v1}, Ljavax/xml/namespace/QName;->getPrefix()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Procinst name must have no prefix"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Procinst name must have no URI"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Prefix is not valid"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Prefix begins with \'xml\'"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Prefix is empty"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Prefix is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Can set name on element, atrtribute and procinst only"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    invoke-virtual {v1}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lm5/y;->i2(Ljava/lang/String;)V

    :goto_0
    iget-object p0, p0, Lm5/y;->c:Lm5/h;

    invoke-virtual {p0, v1}, Lm5/h;->m0(Ljavax/xml/namespace/QName;)V

    return-void

    :cond_8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Name is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    check-cast p0, Landroid/content/Context;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f1201ca

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {p0, v0, v2}, Lk2/d;->b(Landroid/content/Context;Ljava/lang/String;I)V

    sget-object p0, Lcom/mega/engineeringmode/EngineeringModeApplication;->b:Lcom/mega/engineeringmode/EngineeringModeApplication;

    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    sput-boolean v2, Ln2/l;->h:Z

    const-string p0, "ScreenCaptureUtil"

    const-string v0, "captureScreen finish"

    invoke-static {p0, v0}, Lmega/log/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :pswitch_1
    check-cast p0, Lcom/mega/engineeringmode/function/tbox/b$h;

    check-cast v1, Ljava/lang/String;

    iget-object v0, p0, Lcom/mega/engineeringmode/function/tbox/b$h;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object p0, p0, Lcom/mega/engineeringmode/function/tbox/b$h;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/mega/engineeringmode/function/tbox/b$e;

    invoke-interface {p0, v1}, Lcom/mega/engineeringmode/function/tbox/b$e;->d(Ljava/lang/String;)V

    :cond_9
    return-void

    :pswitch_2
    check-cast p0, Lcom/mega/engineeringmode/function/icmdata/IcmDataActivity;

    check-cast v1, Ljava/util/List;

    iget-object p0, p0, Lcom/mega/engineeringmode/function/icmdata/IcmDataActivity;->j:Lcom/mega/engineeringmode/function/icmdata/IcmDataAdapter;

    if-eqz p0, :cond_a

    iget-object v0, p0, Lcom/mega/engineeringmode/function/icmdata/IcmDataAdapter;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_a
    return-void

    :pswitch_3
    check-cast p0, Lcom/mega/engineeringmode/function/candata/CanDataViewModel$a;

    check-cast v1, Lj1/a;

    sget v0, Lcom/mega/engineeringmode/function/candata/CanDataViewModel$a;->b:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "receiveBean.setValue(bean)"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "CanDataViewModel"

    invoke-static {v2, v0}, Lmega/log/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/mega/engineeringmode/function/candata/CanDataViewModel$a;->a:Lcom/mega/engineeringmode/function/candata/CanDataViewModel;

    iget-object p0, p0, Lcom/mega/engineeringmode/function/candata/CanDataViewModel;->c:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void

    :pswitch_4
    check-cast p0, Lcom/mega/carsettings/preference/MegaSwitchPreference;

    invoke-virtual {p0, v1}, Lcom/mega/carsettings/preference/MegaSwitchPreference;->b(Ljava/lang/Object;)V

    return-void

    :pswitch_5
    check-cast p0, Lcom/mega/carsettings/preference/MegaSeekBarPreference;

    if-nez v1, :cond_b

    iget v0, p0, Lcom/mega/carsettings/preference/MegaSeekBarPreference;->e1:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_1

    :cond_b
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_1
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->getPersistedInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mega/carsettings/preference/MegaSeekBarPreference;->a(Ljava/lang/Object;)V

    return-void

    :pswitch_6
    check-cast p0, Landroidx/constraintlayout/motion/widget/ViewTransition;

    check-cast v1, [Landroid/view/View;

    invoke-static {p0, v1}, Landroidx/constraintlayout/motion/widget/ViewTransition;->a(Landroidx/constraintlayout/motion/widget/ViewTransition;[Landroid/view/View;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
