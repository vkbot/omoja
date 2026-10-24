.class public final synthetic Lv1/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/mega/engineeringmode/function/offlineconfiguration/TspTestActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/mega/engineeringmode/function/offlineconfiguration/TspTestActivity;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lv1/k;->a:I

    iput-object p1, p0, Lv1/k;->b:Lcom/mega/engineeringmode/function/offlineconfiguration/TspTestActivity;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 7

    iget p1, p0, Lv1/k;->a:I

    const v0, 0x7f08008a

    const v1, 0x7f08008b

    const-string v2, "0"

    const-string v3, "1"

    iget-object p0, p0, Lv1/k;->b:Lcom/mega/engineeringmode/function/offlineconfiguration/TspTestActivity;

    packed-switch p1, :pswitch_data_0

    sget p1, Lcom/mega/engineeringmode/function/offlineconfiguration/TspTestActivity;->v:I

    invoke-virtual {p0}, Lcom/mega/engineeringmode/function/offlineconfiguration/TspTestActivity;->n()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-static {}, Ln2/c;->a()Z

    move-result v4

    if-eqz v4, :cond_1

    if-eqz p1, :cond_0

    move-object v2, v3

    :cond_0
    const-string/jumbo v3, "persist.sys.chery.sim.active"

    invoke-static {v3, v2}, Ld/f;->X(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "sys.tsp.sim.activation"

    invoke-static {v2, v3, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, v3, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "set sys.tsp.sim.activation = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TspTestActivity"

    invoke-static {v3, v2}, Lmega/log/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/mega/engineeringmode/function/offlineconfiguration/TspTestActivity;->p:Landroid/widget/Button;

    if-eqz p1, :cond_2

    move v0, v1

    :cond_2
    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundResource(I)V

    return-void

    :pswitch_0
    sget p1, Lcom/mega/engineeringmode/function/offlineconfiguration/TspTestActivity;->v:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Ln2/b;->b:Ln2/b;

    const-string v4, "isTestMode"

    invoke-virtual {p1, v4}, Ln2/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    xor-int/lit8 v6, v5, 0x1

    if-eqz v6, :cond_3

    move-object v2, v3

    :cond_3
    invoke-virtual {p1, v4, v2}, Ln2/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/mega/engineeringmode/function/offlineconfiguration/TspTestActivity;->i:Landroid/widget/Button;

    if-nez v5, :cond_4

    move v0, v1

    :cond_4
    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundResource(I)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
