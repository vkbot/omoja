.class public final Lcom/mega/engineeringmode/function/ethernet/EthernetTestActivity;
.super Lcom/mega/engineeringmode/function/BaseFunctionActivity;
.source "SourceFile"


# static fields
.field public static final synthetic k:I


# instance fields
.field public final i:Ljava/lang/String;

.field public final j:Lx3/d;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/mega/engineeringmode/function/BaseFunctionActivity;-><init>()V

    const-string v0, "EthernetTestActivity"

    iput-object v0, p0, Lcom/mega/engineeringmode/function/ethernet/EthernetTestActivity;->i:Ljava/lang/String;

    new-instance v0, Lx3/d;

    new-instance v1, Lv3/l1;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lv3/a1;-><init>(Lv3/x0;)V

    sget-object v2, Lv3/k0;->a:Ly3/c;

    sget-object v2, Lx3/o;->a:Lv3/e1;

    invoke-static {v1, v2}, Lh3/f$b$a;->c(Lh3/f$b;Lh3/f;)Lh3/f;

    move-result-object v1

    invoke-direct {v0, v1}, Lx3/d;-><init>(Lh3/f;)V

    iput-object v0, p0, Lcom/mega/engineeringmode/function/ethernet/EthernetTestActivity;->j:Lx3/d;

    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 7

    invoke-super {p0, p1}, Lcom/mega/engineeringmode/function/BaseFunctionActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d0030

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    const p1, 0x7f1201cf

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mega/engineeringmode/function/BaseFunctionActivity;->i(Ljava/lang/String;)V

    const p1, 0x7f0a017e

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Landroid/widget/EditText;

    const p1, 0x7f0a0412

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Landroid/widget/TextView;

    const p1, 0x7f0a0413

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Landroid/widget/TextView;

    const p1, 0x7f0a0180

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Landroid/widget/EditText;

    const p1, 0x7f0a00a1

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    new-instance v6, Lp1/a;

    move-object v0, v6

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lp1/a;-><init>(Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/EditText;Landroid/widget/EditText;Lcom/mega/engineeringmode/function/ethernet/EthernetTestActivity;)V

    invoke-virtual {p1, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final onDestroy()V
    .locals 3

    invoke-super {p0}, Lcom/mega/engineeringmode/function/BaseFunctionActivity;->onDestroy()V

    iget-object p0, p0, Lcom/mega/engineeringmode/function/ethernet/EthernetTestActivity;->j:Lx3/d;

    iget-object v0, p0, Lx3/d;->c:Lh3/f;

    sget-object v1, Lv3/x0$b;->c:Lv3/x0$b;

    invoke-interface {v0, v1}, Lh3/f;->s(Lh3/f$c;)Lh3/f$b;

    move-result-object v0

    check-cast v0, Lv3/x0;

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    invoke-interface {v0, p0}, Lv3/x0;->y(Ljava/util/concurrent/CancellationException;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Scope cannot be cancelled because it does not have a job: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
