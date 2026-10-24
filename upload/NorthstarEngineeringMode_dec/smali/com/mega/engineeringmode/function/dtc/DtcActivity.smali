.class public Lcom/mega/engineeringmode/function/dtc/DtcActivity;
.super Lcom/mega/engineeringmode/function/BaseFunctionActivity;
.source "SourceFile"


# instance fields
.field public final i:I

.field public final j:I

.field public k:Lcom/mega/engineeringmode/function/dtc/DtcCurrentFragment;

.field public l:Lcom/mega/engineeringmode/function/dtc/DtcHistoryFragment;

.field public m:Lo1/a;

.field public final n:Lcom/mega/engineeringmode/function/dtc/DtcActivity$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/mega/engineeringmode/function/BaseFunctionActivity;-><init>()V

    const/4 v0, 0x5

    iput v0, p0, Lcom/mega/engineeringmode/function/dtc/DtcActivity;->i:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/mega/engineeringmode/function/dtc/DtcActivity;->j:I

    new-instance v0, Lcom/mega/engineeringmode/function/dtc/DtcActivity$a;

    invoke-direct {v0, p0}, Lcom/mega/engineeringmode/function/dtc/DtcActivity$a;-><init>(Lcom/mega/engineeringmode/function/dtc/DtcActivity;)V

    iput-object v0, p0, Lcom/mega/engineeringmode/function/dtc/DtcActivity;->n:Lcom/mega/engineeringmode/function/dtc/DtcActivity$a;

    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/mega/engineeringmode/function/BaseFunctionActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d002e

    invoke-static {p0, p1}, Landroidx/databinding/DataBindingUtil;->setContentView(Landroid/app/Activity;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/mega/engineeringmode/databinding/ActivityDtcBinding;

    invoke-virtual {p1}, Lcom/mega/engineeringmode/databinding/ActivityDtcBinding;->b()V

    invoke-virtual {p0}, Lcom/mega/engineeringmode/function/BaseFunctionActivity;->h()V

    iget-object p1, p0, Lcom/mega/engineeringmode/function/BaseFunctionActivity;->a:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    const v0, 0x7f1201be

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    invoke-static {}, Ln2/d;->c()Ln2/d;

    move-result-object p1

    iget-object v0, p0, Lcom/mega/engineeringmode/function/dtc/DtcActivity;->n:Lcom/mega/engineeringmode/function/dtc/DtcActivity$a;

    iget v1, p0, Lcom/mega/engineeringmode/function/dtc/DtcActivity;->i:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, v0}, Ln2/d;->d(ILn0/b$a;)V

    new-instance p1, Lcom/mega/engineeringmode/function/dtc/DtcCurrentFragment;

    invoke-direct {p1}, Lcom/mega/engineeringmode/function/dtc/DtcCurrentFragment;-><init>()V

    iput-object p1, p0, Lcom/mega/engineeringmode/function/dtc/DtcActivity;->k:Lcom/mega/engineeringmode/function/dtc/DtcCurrentFragment;

    new-instance p1, Lcom/mega/engineeringmode/function/dtc/DtcHistoryFragment;

    invoke-direct {p1}, Lcom/mega/engineeringmode/function/dtc/DtcHistoryFragment;-><init>()V

    iput-object p1, p0, Lcom/mega/engineeringmode/function/dtc/DtcActivity;->l:Lcom/mega/engineeringmode/function/dtc/DtcHistoryFragment;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    const v0, 0x7f0a0160

    iget-object v1, p0, Lcom/mega/engineeringmode/function/dtc/DtcActivity;->k:Lcom/mega/engineeringmode/function/dtc/DtcCurrentFragment;

    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    const v0, 0x7f0a0161

    iget-object v1, p0, Lcom/mega/engineeringmode/function/dtc/DtcActivity;->l:Lcom/mega/engineeringmode/function/dtc/DtcHistoryFragment;

    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    new-instance p1, Lo1/a;

    const/4 v0, 0x0

    invoke-direct {p1, v0, p0}, Lo1/a;-><init>(ILjava/lang/Object;)V

    iput-object p1, p0, Lcom/mega/engineeringmode/function/dtc/DtcActivity;->m:Lo1/a;

    invoke-static {}, Lo1/d;->b()Lo1/d;

    move-result-object p1

    iget-object p0, p0, Lcom/mega/engineeringmode/function/dtc/DtcActivity;->m:Lo1/a;

    if-eqz p0, :cond_1

    iget-object v1, p1, Lo1/d;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-virtual {p1}, Lo1/d;->c()Z

    move-result v1

    const-string v2, "ExcelReader"

    if-eqz v1, :cond_2

    const-string p0, "has scanned before, notifyResult"

    invoke-static {v2, p0}, Lmega/log/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lo1/d;->d()V

    goto :goto_1

    :cond_2
    iget-object v1, p1, Lo1/d;->c:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v3, :cond_3

    goto :goto_0

    :cond_3
    invoke-static {}, Ld/f;->x()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p1, Lo1/d;->d:Ls0/b;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-static {}, Ld/f;->x()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-static {}, Ld/f;->y()Landroid/os/Handler;

    move-result-object v0

    iget-object p1, p1, Lo1/d;->e:Lf/c;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-static {}, Ld/f;->y()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "readDtcExcelFile:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lmega/log/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    :goto_0
    const-string p0, "isScanning, just to wait the end"

    invoke-static {v2, p0}, Lmega/log/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public final onDestroy()V
    .locals 3

    invoke-super {p0}, Lcom/mega/engineeringmode/function/BaseFunctionActivity;->onDestroy()V

    invoke-static {}, Ln2/d;->c()Ln2/d;

    move-result-object v0

    iget-object v1, p0, Lcom/mega/engineeringmode/function/dtc/DtcActivity;->n:Lcom/mega/engineeringmode/function/dtc/DtcActivity$a;

    iget v2, p0, Lcom/mega/engineeringmode/function/dtc/DtcActivity;->i:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, v1}, Ln2/d;->e(ILn0/b$a;)V

    invoke-static {}, Lo1/d;->b()Lo1/d;

    move-result-object v0

    iget-object p0, p0, Lcom/mega/engineeringmode/function/dtc/DtcActivity;->m:Lo1/a;

    iget-object v0, v0, Lo1/d;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "remove = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ExcelReader"

    invoke-static {v0, p0}, Lmega/log/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
