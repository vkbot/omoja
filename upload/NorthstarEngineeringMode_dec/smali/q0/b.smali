.class public final synthetic Lq0/b;
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

    iput p1, p0, Lq0/b;->c:I

    iput-object p2, p0, Lq0/b;->r:Ljava/lang/Object;

    iput-object p3, p0, Lq0/b;->x:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget v0, p0, Lq0/b;->c:I

    const/4 v1, 0x0

    iget-object v2, p0, Lq0/b;->x:Ljava/lang/Object;

    iget-object p0, p0, Lq0/b;->r:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lm5/y;

    check-cast v2, Ljavax/xml/namespace/QName;

    invoke-virtual {p0, v2}, Lm5/y;->S0(Ljavax/xml/namespace/QName;)V

    invoke-virtual {p0}, Lm5/y;->S1()Li5/p0$a;

    return-void

    :pswitch_0
    check-cast p0, Lm5/y;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    :goto_0
    if-lez v0, :cond_2

    iget-object v3, p0, Lm5/y;->c:Lm5/h;

    invoke-virtual {v3}, Lm5/h;->H()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lm5/y;->c:Lm5/h;

    invoke-virtual {v3}, Lm5/h;->D()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lm5/y;->c:Lm5/h;

    invoke-virtual {v3, v1, v0, v2}, Lm5/h;->z(IILjava/lang/Object;)V

    iget-object p0, p0, Lm5/y;->c:Lm5/h;

    invoke-virtual {p0, v0}, Lm5/h;->a0(I)V

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Can\'t insert before the document or an attribute."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_1
    return-void

    :pswitch_1
    check-cast p0, Landroid/content/Context;

    check-cast v2, Ljava/lang/String;

    invoke-static {p0, v2}, Lmega/widget/ToastUtil;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    :pswitch_2
    check-cast p0, Lcom/mega/engineeringmode/function/versioninfo/AppVersionActivity;

    check-cast v2, Ljava/util/List;

    iget-object p0, p0, Lcom/mega/engineeringmode/function/versioninfo/AppVersionActivity;->j:Lcom/mega/engineeringmode/function/versioninfo/AppVersionAdapter;

    iget-object v0, p0, Lcom/mega/engineeringmode/function/versioninfo/AppVersionAdapter;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void

    :pswitch_3
    check-cast p0, Lcom/mega/engineeringmode/function/upgrade/a;

    check-cast v2, Ljava/lang/String;

    sget v0, Lcom/mega/engineeringmode/function/upgrade/a;->i:I

    invoke-virtual {p0, v2}, Lcom/mega/engineeringmode/function/upgrade/a;->a(Ljava/lang/String;)V

    return-void

    :pswitch_4
    check-cast p0, Lcom/mega/engineeringmode/function/tbox/b$h;

    check-cast v2, Ljava/lang/String;

    iget-object v0, p0, Lcom/mega/engineeringmode/function/tbox/b$h;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object p0, p0, Lcom/mega/engineeringmode/function/tbox/b$h;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/mega/engineeringmode/function/tbox/b$e;

    invoke-interface {p0, v2}, Lcom/mega/engineeringmode/function/tbox/b$e;->n(Ljava/lang/String;)V

    :cond_3
    return-void

    :pswitch_5
    check-cast p0, Lcom/mega/carsettings/preference/MegaSegmentPreference;

    invoke-virtual {p0, v2}, Lcom/mega/carsettings/preference/MegaSegmentPreference;->c(Ljava/lang/Object;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
