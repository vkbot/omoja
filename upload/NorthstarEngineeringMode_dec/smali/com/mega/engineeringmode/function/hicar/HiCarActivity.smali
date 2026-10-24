.class public Lcom/mega/engineeringmode/function/hicar/HiCarActivity;
.super Lcom/mega/engineeringmode/function/BaseFunctionActivity;
.source "SourceFile"


# static fields
.field public static final synthetic p:I


# instance fields
.field public i:Lv2/l;

.field public j:Landroid/widget/TextView;

.field public k:Landroid/widget/TextView;

.field public l:Z

.field public final m:Landroid/os/Handler;

.field public final n:Lcom/mega/engineeringmode/function/hicar/HiCarActivity$a;

.field public final o:Lr1/a;


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Lcom/mega/engineeringmode/function/BaseFunctionActivity;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lo0/b;

    const/4 v3, 0x2

    invoke-direct {v2, v3, p0}, Lo0/b;-><init>(ILjava/lang/Object;)V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/mega/engineeringmode/function/hicar/HiCarActivity;->m:Landroid/os/Handler;

    new-instance v0, Lcom/mega/engineeringmode/function/hicar/HiCarActivity$a;

    invoke-direct {v0, p0}, Lcom/mega/engineeringmode/function/hicar/HiCarActivity$a;-><init>(Lcom/mega/engineeringmode/function/hicar/HiCarActivity;)V

    iput-object v0, p0, Lcom/mega/engineeringmode/function/hicar/HiCarActivity;->n:Lcom/mega/engineeringmode/function/hicar/HiCarActivity$a;

    new-instance v0, Lr1/a;

    invoke-direct {v0, p0}, Lr1/a;-><init>(Lcom/mega/engineeringmode/function/hicar/HiCarActivity;)V

    iput-object v0, p0, Lcom/mega/engineeringmode/function/hicar/HiCarActivity;->o:Lr1/a;

    return-void
.end method


# virtual methods
.method public final n(I)V
    .locals 2

    const-string/jumbo v0, "updateView  "

    const-string v1, "HiCarActivity"

    invoke-static {v0, p1, v1}, La4/a;->m(Ljava/lang/String;ILjava/lang/String;)V

    iget-object v0, p0, Lcom/mega/engineeringmode/function/hicar/HiCarActivity;->j:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/mega/engineeringmode/function/hicar/HiCarActivity;->k:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/mega/engineeringmode/function/hicar/HiCarActivity;->k:Landroid/widget/TextView;

    const p1, 0x7f12017c

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object p0, p0, Lcom/mega/engineeringmode/function/hicar/HiCarActivity;->k:Landroid/widget/TextView;

    const p1, 0x7f120179

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    iget-object p0, p0, Lcom/mega/engineeringmode/function/hicar/HiCarActivity;->k:Landroid/widget/TextView;

    const p1, 0x7f120177

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    iget-object p0, p0, Lcom/mega/engineeringmode/function/hicar/HiCarActivity;->k:Landroid/widget/TextView;

    const p1, 0x7f12017b

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x4

    if-ne p1, v0, :cond_4

    iget-object p0, p0, Lcom/mega/engineeringmode/function/hicar/HiCarActivity;->k:Landroid/widget/TextView;

    const p1, 0x7f12017a

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_4
    const/4 v0, 0x5

    if-ne p1, v0, :cond_5

    iget-object p0, p0, Lcom/mega/engineeringmode/function/hicar/HiCarActivity;->k:Landroid/widget/TextView;

    const p1, 0x7f120178

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    :cond_5
    :goto_0
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/mega/engineeringmode/function/BaseFunctionActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d0033

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/mega/engineeringmode/function/BaseFunctionActivity;->h()V

    iget-object p1, p0, Lcom/mega/engineeringmode/function/BaseFunctionActivity;->a:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    const v0, 0x7f120215

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    iget-object p1, p0, Lcom/mega/engineeringmode/function/hicar/HiCarActivity;->i:Lv2/l;

    if-nez p1, :cond_1

    invoke-static {}, Lv2/l;->d()Lv2/l;

    move-result-object p1

    iput-object p1, p0, Lcom/mega/engineeringmode/function/hicar/HiCarActivity;->i:Lv2/l;

    :cond_1
    iget-object p1, p0, Lcom/mega/engineeringmode/function/hicar/HiCarActivity;->i:Lv2/l;

    iget-object v0, p0, Lcom/mega/engineeringmode/function/hicar/HiCarActivity;->n:Lcom/mega/engineeringmode/function/hicar/HiCarActivity$a;

    invoke-virtual {p1, v0}, Lv2/l;->h(Lv2/i;)V

    iget-object p1, p0, Lcom/mega/engineeringmode/function/hicar/HiCarActivity;->i:Lv2/l;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lv2/l;->e(Landroid/content/Context;)V

    const p1, 0x7f0a00f6

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lq0/a;

    const/16 v1, 0xc

    invoke-direct {v0, v1, p0}, Lq0/a;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0a00f3

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/mega/engineeringmode/function/hicar/HiCarActivity;->j:Landroid/widget/TextView;

    const p1, 0x7f0a00f2

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/mega/engineeringmode/function/hicar/HiCarActivity;->k:Landroid/widget/TextView;

    return-void
.end method

.method public final onDestroy()V
    .locals 6

    invoke-super {p0}, Lcom/mega/engineeringmode/function/BaseFunctionActivity;->onDestroy()V

    iget-object v0, p0, Lcom/mega/engineeringmode/function/hicar/HiCarActivity;->i:Lv2/l;

    if-eqz v0, :cond_2

    iget-boolean v1, p0, Lcom/mega/engineeringmode/function/hicar/HiCarActivity;->l:Z

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "unregisterHiCarLinkListener --- callback: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mega/engineeringmode/function/hicar/HiCarActivity;->o:Lr1/a;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "l"

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v0, Lv2/l;->c:Lv2/h;

    const/4 v4, 0x0

    if-eqz v1, :cond_0

    if-eqz v2, :cond_1

    iget-object v1, v0, Lv2/l;->j:Ljava/util/concurrent/CopyOnWriteArrayList;

    :try_start_0
    invoke-virtual {v1, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, v0, Lv2/l;->e:Lv2/n;

    if-eqz v1, :cond_1

    iget-object v2, v0, Lv2/l;->c:Lv2/h;

    invoke-interface {v2, v1}, Lv2/h;->x(Lv2/e;)V

    iput-object v4, v0, Lv2/l;->e:Lv2/n;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const-string/jumbo v0, "unregisterHiCarLinkListener --- RemoteException"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "unregisterHiCarLinkListener --- mInterface == null"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/mega/engineeringmode/function/hicar/HiCarActivity;->i:Lv2/l;

    iget-object v1, p0, Lcom/mega/engineeringmode/function/hicar/HiCarActivity;->n:Lcom/mega/engineeringmode/function/hicar/HiCarActivity$a;

    invoke-virtual {v0, v1}, Lv2/l;->j(Lv2/i;)V

    :try_start_1
    iget-object v0, p0, Lcom/mega/engineeringmode/function/hicar/HiCarActivity;->i:Lv2/l;

    invoke-virtual {v0}, Lv2/l;->i()V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    const-string v1, "HiCarActivity"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lmega/log/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    iput-object v4, p0, Lcom/mega/engineeringmode/function/hicar/HiCarActivity;->i:Lv2/l;

    :cond_2
    return-void
.end method
