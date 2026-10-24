.class public Lcom/mega/engineeringmode/function/SystemRebootActivity;
.super Lcom/mega/engineeringmode/function/BaseFunctionActivity;
.source "SourceFile"


# static fields
.field public static final synthetic l:I


# instance fields
.field public i:Lk2/b;

.field public j:Landroid/os/Handler;

.field public k:Ln2/i;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/mega/engineeringmode/function/BaseFunctionActivity;-><init>()V

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-void
.end method


# virtual methods
.method public final n()V
    .locals 4

    new-instance v0, Lk2/b;

    invoke-direct {v0, p0}, Lk2/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mega/engineeringmode/function/SystemRebootActivity;->i:Lk2/b;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    iget-object v0, p0, Lcom/mega/engineeringmode/function/SystemRebootActivity;->i:Lk2/b;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f120311

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v0, v0, Lk2/b;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/mega/engineeringmode/function/SystemRebootActivity;->j:Landroid/os/Handler;

    new-instance v1, Lcom/mega/engineeringmode/function/SystemRebootActivity$a;

    invoke-direct {v1, p0}, Lcom/mega/engineeringmode/function/SystemRebootActivity$a;-><init>(Lcom/mega/engineeringmode/function/SystemRebootActivity;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lcom/mega/engineeringmode/function/BaseFunctionActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d00f5

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    invoke-super {p0}, Lcom/mega/engineeringmode/function/BaseFunctionActivity;->j()V

    const p1, 0x7f0a0309

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lg1/w;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lg1/w;-><init>(Lcom/mega/engineeringmode/function/SystemRebootActivity;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0a030d

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lg1/x;

    invoke-direct {v0, p0, v1}, Lg1/x;-><init>(Lcom/mega/engineeringmode/function/SystemRebootActivity;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0a030e

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lx0/b;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p0}, Lx0/b;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0a030b

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lg1/w;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lg1/w;-><init>(Lcom/mega/engineeringmode/function/SystemRebootActivity;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0a0307

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lg1/x;

    invoke-direct {v0, p0, v1}, Lg1/x;-><init>(Lcom/mega/engineeringmode/function/SystemRebootActivity;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/mega/engineeringmode/function/BaseFunctionActivity;->h()V

    iget-object p1, p0, Lcom/mega/engineeringmode/function/BaseFunctionActivity;->a:Landroid/widget/TextView;

    const v0, 0x7f1201d7

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance p1, Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/mega/engineeringmode/function/SystemRebootActivity;->j:Landroid/os/Handler;

    new-instance p1, Ln2/i;

    invoke-direct {p1}, Ln2/i;-><init>()V

    iput-object p1, p0, Lcom/mega/engineeringmode/function/SystemRebootActivity;->k:Ln2/i;

    return-void
.end method
