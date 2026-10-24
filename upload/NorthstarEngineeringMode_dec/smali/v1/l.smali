.class public final synthetic Lv1/l;
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

    iput p2, p0, Lv1/l;->a:I

    iput-object p1, p0, Lv1/l;->b:Lcom/mega/engineeringmode/function/offlineconfiguration/TspTestActivity;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    iget p1, p0, Lv1/l;->a:I

    iget-object p0, p0, Lv1/l;->b:Lcom/mega/engineeringmode/function/offlineconfiguration/TspTestActivity;

    packed-switch p1, :pswitch_data_0

    iget-object p0, p0, Lcom/mega/engineeringmode/function/offlineconfiguration/TspTestActivity;->q:Ln2/i;

    if-nez p0, :cond_0

    const-string p0, "TspTestActivity"

    const-string p1, "message center is null"

    invoke-static {p0, p1}, Lmega/log/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ln2/i;->f()Z

    :goto_0
    return-void

    :pswitch_0
    sget p1, Lcom/mega/engineeringmode/function/offlineconfiguration/TspTestActivity;->v:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Ln2/b;->b:Ln2/b;

    const-string v0, "isTestDev"

    invoke-virtual {p1, v0}, Ln2/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v3, v1, 0x1

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    const-string v2, "0"

    :goto_1
    invoke-virtual {p1, v0, v2}, Ln2/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/mega/engineeringmode/function/offlineconfiguration/TspTestActivity;->j:Landroid/widget/Button;

    if-nez v1, :cond_2

    const p1, 0x7f08008b

    goto :goto_2

    :cond_2
    const p1, 0x7f08008a

    :goto_2
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
