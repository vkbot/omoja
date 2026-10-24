.class public Lcom/mega/engineeringmode/function/screen/MasterScreenActivity;
.super Lcom/mega/engineeringmode/function/BaseFunctionActivity;
.source "SourceFile"


# static fields
.field public static final synthetic q:I


# instance fields
.field public i:Landroid/view/View;

.field public j:I

.field public final k:[I

.field public l:Landroid/view/View;

.field public m:Landroid/view/View;

.field public n:Landroid/os/Handler;

.field public o:Landroid/view/View;

.field public final p:Lcom/mega/engineeringmode/function/screen/MasterScreenActivity$a;


# direct methods
.method public constructor <init>()V
    .locals 5

    invoke-direct {p0}, Lcom/mega/engineeringmode/function/BaseFunctionActivity;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/mega/engineeringmode/function/screen/MasterScreenActivity;->j:I

    const v0, 0x7f08009f

    const v1, 0x7f080066

    const v2, 0x7f080131

    const v3, 0x7f08015b

    const v4, 0x7f080092

    filled-new-array {v2, v0, v1, v3, v4}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/mega/engineeringmode/function/screen/MasterScreenActivity;->k:[I

    new-instance v0, Lcom/mega/engineeringmode/function/screen/MasterScreenActivity$a;

    invoke-direct {v0, p0}, Lcom/mega/engineeringmode/function/screen/MasterScreenActivity$a;-><init>(Lcom/mega/engineeringmode/function/screen/MasterScreenActivity;)V

    iput-object v0, p0, Lcom/mega/engineeringmode/function/screen/MasterScreenActivity;->p:Lcom/mega/engineeringmode/function/screen/MasterScreenActivity$a;

    return-void
.end method


# virtual methods
.method public final n()V
    .locals 5

    iget v0, p0, Lcom/mega/engineeringmode/function/screen/MasterScreenActivity;->j:I

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mega/engineeringmode/function/screen/MasterScreenActivity;->l:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/mega/engineeringmode/function/screen/MasterScreenActivity;->l:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    iget v0, p0, Lcom/mega/engineeringmode/function/screen/MasterScreenActivity;->j:I

    iget-object v3, p0, Lcom/mega/engineeringmode/function/screen/MasterScreenActivity;->k:[I

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lcom/mega/engineeringmode/function/screen/MasterScreenActivity;->m:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/mega/engineeringmode/function/screen/MasterScreenActivity;->m:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    iget-object v0, p0, Lcom/mega/engineeringmode/function/screen/MasterScreenActivity;->n:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mega/engineeringmode/function/screen/MasterScreenActivity;->p:Lcom/mega/engineeringmode/function/screen/MasterScreenActivity$a;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/mega/engineeringmode/function/screen/MasterScreenActivity;->n:Landroid/os/Handler;

    const-wide/16 v3, 0xbb8

    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object p0, p0, Lcom/mega/engineeringmode/function/screen/MasterScreenActivity;->o:Landroid/view/View;

    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/mega/engineeringmode/function/BaseFunctionActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->requestWindowFeature(I)Z

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    const v0, 0x7f0d003c

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0xf06

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    const v0, 0x7f0a0186

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/mega/engineeringmode/function/screen/MasterScreenActivity;->o:Landroid/view/View;

    new-instance v1, Lz1/b;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lz1/b;-><init>(Lcom/mega/engineeringmode/function/screen/MasterScreenActivity;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a031f

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/mega/engineeringmode/function/screen/MasterScreenActivity;->i:Landroid/view/View;

    iget-object v1, p0, Lcom/mega/engineeringmode/function/screen/MasterScreenActivity;->k:[I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    iput v2, p0, Lcom/mega/engineeringmode/function/screen/MasterScreenActivity;->j:I

    const v0, 0x7f0a01ff

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/mega/engineeringmode/function/screen/MasterScreenActivity;->l:Landroid/view/View;

    const v0, 0x7f0a02ab

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/mega/engineeringmode/function/screen/MasterScreenActivity;->m:Landroid/view/View;

    iget-object v0, p0, Lcom/mega/engineeringmode/function/screen/MasterScreenActivity;->l:Landroid/view/View;

    new-instance v1, Lx0/b;

    const/16 v2, 0x11

    invoke-direct {v1, v2, p0}, Lx0/b;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/mega/engineeringmode/function/screen/MasterScreenActivity;->l:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/mega/engineeringmode/function/screen/MasterScreenActivity;->m:Landroid/view/View;

    new-instance v1, Lq0/a;

    const/16 v2, 0x10

    invoke-direct {v1, v2, p0}, Lq0/a;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/mega/engineeringmode/function/screen/MasterScreenActivity;->i:Landroid/view/View;

    new-instance v1, Lz1/b;

    invoke-direct {v1, p0, p1}, Lz1/b;-><init>(Lcom/mega/engineeringmode/function/screen/MasterScreenActivity;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {}, Ld/f;->B()Landroid/os/Handler;

    move-result-object p1

    iput-object p1, p0, Lcom/mega/engineeringmode/function/screen/MasterScreenActivity;->n:Landroid/os/Handler;

    iget-object v0, p0, Lcom/mega/engineeringmode/function/screen/MasterScreenActivity;->p:Lcom/mega/engineeringmode/function/screen/MasterScreenActivity$a;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p0, p0, Lcom/mega/engineeringmode/function/screen/MasterScreenActivity;->n:Landroid/os/Handler;

    const-wide/16 v1, 0xbb8

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final onDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/mega/engineeringmode/function/screen/MasterScreenActivity;->n:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mega/engineeringmode/function/screen/MasterScreenActivity;->p:Lcom/mega/engineeringmode/function/screen/MasterScreenActivity$a;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-super {p0}, Lcom/mega/engineeringmode/function/BaseFunctionActivity;->onDestroy()V

    return-void
.end method
