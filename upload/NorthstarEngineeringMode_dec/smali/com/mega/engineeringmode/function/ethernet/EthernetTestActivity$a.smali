.class public final Lcom/mega/engineeringmode/function/ethernet/EthernetTestActivity$a;
.super Lj3/g;
.source "SourceFile"

# interfaces
.implements Ln3/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mega/engineeringmode/function/ethernet/EthernetTestActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lj3/g;",
        "Ln3/p<",
        "Lv3/z;",
        "Lh3/d<",
        "-",
        "Lf3/g;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lj3/e;
    c = "com.mega.engineeringmode.function.ethernet.EthernetTestActivity$onCreate$1$1"
    f = "EthernetTestActivity.kt"
    l = {
        0x32,
        0x35
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic Z:Landroid/widget/TextView;

.field public final synthetic b1:Landroid/widget/TextView;

.field public c:Z

.field public final synthetic c1:Ljava/lang/String;

.field public final synthetic d1:Ljava/lang/String;

.field public r:I

.field public synthetic x:Ljava/lang/Object;

.field public final synthetic y:Lcom/mega/engineeringmode/function/ethernet/EthernetTestActivity;


# direct methods
.method public constructor <init>(Lcom/mega/engineeringmode/function/ethernet/EthernetTestActivity;Landroid/widget/TextView;Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;Lh3/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mega/engineeringmode/function/ethernet/EthernetTestActivity;",
            "Landroid/widget/TextView;",
            "Landroid/widget/TextView;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lh3/d<",
            "-",
            "Lcom/mega/engineeringmode/function/ethernet/EthernetTestActivity$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/mega/engineeringmode/function/ethernet/EthernetTestActivity$a;->y:Lcom/mega/engineeringmode/function/ethernet/EthernetTestActivity;

    iput-object p2, p0, Lcom/mega/engineeringmode/function/ethernet/EthernetTestActivity$a;->Z:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/mega/engineeringmode/function/ethernet/EthernetTestActivity$a;->b1:Landroid/widget/TextView;

    iput-object p4, p0, Lcom/mega/engineeringmode/function/ethernet/EthernetTestActivity$a;->c1:Ljava/lang/String;

    iput-object p5, p0, Lcom/mega/engineeringmode/function/ethernet/EthernetTestActivity$a;->d1:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p6}, Lj3/g;-><init>(ILh3/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lh3/d;)Lh3/d;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lh3/d<",
            "*>;)",
            "Lh3/d<",
            "Lf3/g;",
            ">;"
        }
    .end annotation

    new-instance v7, Lcom/mega/engineeringmode/function/ethernet/EthernetTestActivity$a;

    iget-object v1, p0, Lcom/mega/engineeringmode/function/ethernet/EthernetTestActivity$a;->y:Lcom/mega/engineeringmode/function/ethernet/EthernetTestActivity;

    iget-object v2, p0, Lcom/mega/engineeringmode/function/ethernet/EthernetTestActivity$a;->Z:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/mega/engineeringmode/function/ethernet/EthernetTestActivity$a;->b1:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/mega/engineeringmode/function/ethernet/EthernetTestActivity$a;->c1:Ljava/lang/String;

    iget-object v5, p0, Lcom/mega/engineeringmode/function/ethernet/EthernetTestActivity$a;->d1:Ljava/lang/String;

    move-object v0, v7

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/mega/engineeringmode/function/ethernet/EthernetTestActivity$a;-><init>(Lcom/mega/engineeringmode/function/ethernet/EthernetTestActivity;Landroid/widget/TextView;Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;Lh3/d;)V

    iput-object p1, v7, Lcom/mega/engineeringmode/function/ethernet/EthernetTestActivity$a;->x:Ljava/lang/Object;

    return-object v7
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lv3/z;

    check-cast p2, Lh3/d;

    invoke-virtual {p0, p1, p2}, Lcom/mega/engineeringmode/function/ethernet/EthernetTestActivity$a;->create(Ljava/lang/Object;Lh3/d;)Lh3/d;

    move-result-object p0

    check-cast p0, Lcom/mega/engineeringmode/function/ethernet/EthernetTestActivity$a;

    sget-object p1, Lf3/g;->a:Lf3/g;

    invoke-virtual {p0, p1}, Lcom/mega/engineeringmode/function/ethernet/EthernetTestActivity$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    sget-object v0, Li3/a;->c:Li3/a;

    iget v1, p0, Lcom/mega/engineeringmode/function/ethernet/EthernetTestActivity$a;->r:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/mega/engineeringmode/function/ethernet/EthernetTestActivity$a;->y:Lcom/mega/engineeringmode/function/ethernet/EthernetTestActivity;

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    iget-boolean v0, p0, Lcom/mega/engineeringmode/function/ethernet/EthernetTestActivity$a;->c:Z

    iget-object v1, p0, Lcom/mega/engineeringmode/function/ethernet/EthernetTestActivity$a;->x:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-static {p1}, Lb1/a;->z(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    iget-object v1, p0, Lcom/mega/engineeringmode/function/ethernet/EthernetTestActivity$a;->x:Ljava/lang/Object;

    check-cast v1, Lv3/f0;

    invoke-static {p1}, Lb1/a;->z(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lb1/a;->z(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/mega/engineeringmode/function/ethernet/EthernetTestActivity$a;->x:Ljava/lang/Object;

    check-cast p1, Lv3/z;

    sget-object v1, Lv3/k0;->b:Ly3/b;

    new-instance v5, Lcom/mega/engineeringmode/function/ethernet/EthernetTestActivity$a$a;

    iget-object v6, p0, Lcom/mega/engineeringmode/function/ethernet/EthernetTestActivity$a;->c1:Ljava/lang/String;

    iget-object v7, p0, Lcom/mega/engineeringmode/function/ethernet/EthernetTestActivity$a;->d1:Ljava/lang/String;

    const/4 v8, 0x0

    invoke-direct {v5, v4, v6, v7, v8}, Lcom/mega/engineeringmode/function/ethernet/EthernetTestActivity$a$a;-><init>(Lcom/mega/engineeringmode/function/ethernet/EthernetTestActivity;Ljava/lang/String;Ljava/lang/String;Lh3/d;)V

    invoke-static {p1, v1, v5}, Ld/f;->e(Lv3/z;Ly3/b;Ln3/p;)Lv3/g0;

    move-result-object v5

    new-instance v7, Lcom/mega/engineeringmode/function/ethernet/EthernetTestActivity$a$b;

    invoke-direct {v7, v4, v6, v8}, Lcom/mega/engineeringmode/function/ethernet/EthernetTestActivity$a$b;-><init>(Lcom/mega/engineeringmode/function/ethernet/EthernetTestActivity;Ljava/lang/String;Lh3/d;)V

    invoke-static {p1, v1, v7}, Ld/f;->e(Lv3/z;Ly3/b;Ln3/p;)Lv3/g0;

    move-result-object p1

    iget-object v1, v4, Lcom/mega/engineeringmode/function/ethernet/EthernetTestActivity;->i:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "main thread is "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lmega/log/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v5, p0, Lcom/mega/engineeringmode/function/ethernet/EthernetTestActivity$a;->x:Ljava/lang/Object;

    iput v3, p0, Lcom/mega/engineeringmode/function/ethernet/EthernetTestActivity$a;->r:I

    invoke-virtual {p1, p0}, Lv3/g0;->c(Lh3/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    :cond_3
    move-object v1, v5

    :goto_0
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_4

    const v3, 0x7f1202fc

    :goto_1
    invoke-virtual {v4, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_4
    const v3, 0x7f120165

    goto :goto_1

    :goto_2
    const-string v4, "if (ifSuccess) getString\u2026tString(R.string.failure)"

    invoke-static {v3, v4}, Lo3/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/mega/engineeringmode/function/ethernet/EthernetTestActivity$a;->x:Ljava/lang/Object;

    iput-boolean p1, p0, Lcom/mega/engineeringmode/function/ethernet/EthernetTestActivity$a;->c:Z

    iput v2, p0, Lcom/mega/engineeringmode/function/ethernet/EthernetTestActivity$a;->r:I

    invoke-interface {v1, p0}, Lv3/f0;->c(Lh3/d;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_5

    return-object v0

    :cond_5
    move v0, p1

    move-object p1, v1

    move-object v1, v3

    :goto_3
    check-cast p1, Ljava/lang/String;

    iget-object v2, p0, Lcom/mega/engineeringmode/function/ethernet/EthernetTestActivity$a;->Z:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz v0, :cond_6

    const v0, -0xff0100

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_4

    :cond_6
    const/4 v0, -0x1

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_4
    iget-object p0, p0, Lcom/mega/engineeringmode/function/ethernet/EthernetTestActivity$a;->b1:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object p0, Lf3/g;->a:Lf3/g;

    return-object p0
.end method
