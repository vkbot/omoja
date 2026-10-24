.class public Lcom/mega/engineeringmode/function/versioninfo/DmcProductionActivity;
.super Lcom/mega/engineeringmode/function/BaseFunctionActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mega/engineeringmode/function/versioninfo/DmcProductionActivity$a;,
        Lcom/mega/engineeringmode/function/versioninfo/DmcProductionActivity$b;
    }
.end annotation


# static fields
.field public static final synthetic v:I


# instance fields
.field public final i:Landroid/os/Handler;

.field public j:Landroidx/recyclerview/widget/RecyclerView;

.field public final k:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lf2/b;",
            ">;"
        }
    .end annotation
.end field

.field public l:Lcom/mega/engineeringmode/function/versioninfo/DmcProductionActivity$a;

.field public m:Lf2/b;

.field public n:Lf2/b;

.field public o:Lf2/b;

.field public p:Lf2/b;

.field public q:Lf2/b;

.field public r:Lf2/b;

.field public s:Lf2/b;

.field public t:Lf2/b;

.field public u:Lf2/g;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/mega/engineeringmode/function/BaseFunctionActivity;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/mega/engineeringmode/function/versioninfo/DmcProductionActivity;->i:Landroid/os/Handler;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mega/engineeringmode/function/versioninfo/DmcProductionActivity;->k:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final n(I)V
    .locals 0

    iget-object p0, p0, Lcom/mega/engineeringmode/function/versioninfo/DmcProductionActivity;->l:Lcom/mega/engineeringmode/function/versioninfo/DmcProductionActivity$a;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :cond_0
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lcom/mega/engineeringmode/function/BaseFunctionActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d0077

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/mega/engineeringmode/function/BaseFunctionActivity;->h()V

    iget-object p1, p0, Lcom/mega/engineeringmode/function/BaseFunctionActivity;->a:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    const v0, 0x7f120393

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    invoke-static {}, Lf2/g;->a()Lf2/g;

    move-result-object p1

    iput-object p1, p0, Lcom/mega/engineeringmode/function/versioninfo/DmcProductionActivity;->u:Lf2/g;

    new-instance v0, Lf2/b;

    const-string v1, "f18b"

    const v2, 0x33000012

    invoke-virtual {p1, v2, v1}, Lf2/g;->c(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "ECU manufacturing date"

    const/4 v2, 0x0

    const-string v3, "F18B"

    invoke-direct {v0, v2, v3, v1, p1}, Lf2/b;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mega/engineeringmode/function/versioninfo/DmcProductionActivity;->m:Lf2/b;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "f18B "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mega/engineeringmode/function/versioninfo/DmcProductionActivity;->m:Lf2/b;

    invoke-virtual {v0}, Lf2/b;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DmcProductionActivity"

    invoke-static {v0, p1}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lf2/b;

    iget-object v1, p0, Lcom/mega/engineeringmode/function/versioninfo/DmcProductionActivity;->u:Lf2/g;

    const-string v2, "f18c"

    const v3, 0x33000013

    invoke-virtual {v1, v3, v2}, Lf2/g;->c(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ECU Serial Number"

    const/4 v3, 0x1

    const-string v4, "F18C"

    invoke-direct {p1, v3, v4, v2, v1}, Lf2/b;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/mega/engineeringmode/function/versioninfo/DmcProductionActivity;->n:Lf2/b;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "f18C "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/mega/engineeringmode/function/versioninfo/DmcProductionActivity;->n:Lf2/b;

    invoke-virtual {v1}, Lf2/b;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lf2/b;

    iget-object v1, p0, Lcom/mega/engineeringmode/function/versioninfo/DmcProductionActivity;->u:Lf2/g;

    const-string v2, "f190"

    const v3, 0x33000002

    invoke-virtual {v1, v3, v2}, Lf2/g;->c(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "VIN Data Identifier"

    const/4 v3, 0x2

    const-string v4, "F190"

    invoke-direct {p1, v3, v4, v2, v1}, Lf2/b;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/mega/engineeringmode/function/versioninfo/DmcProductionActivity;->o:Lf2/b;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "f190 "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/mega/engineeringmode/function/versioninfo/DmcProductionActivity;->o:Lf2/b;

    invoke-virtual {v1}, Lf2/b;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lf2/b;

    iget-object v1, p0, Lcom/mega/engineeringmode/function/versioninfo/DmcProductionActivity;->u:Lf2/g;

    const-string v2, "f187"

    const v3, 0x33000010

    invoke-virtual {v1, v3, v2}, Lf2/g;->c(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Vehicle manufacture spare NO."

    const/4 v3, 0x3

    const-string v4, "F187"

    invoke-direct {p1, v3, v4, v2, v1}, Lf2/b;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/mega/engineeringmode/function/versioninfo/DmcProductionActivity;->p:Lf2/b;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "f187 "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/mega/engineeringmode/function/versioninfo/DmcProductionActivity;->p:Lf2/b;

    invoke-virtual {v1}, Lf2/b;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lf2/b;

    iget-object v1, p0, Lcom/mega/engineeringmode/function/versioninfo/DmcProductionActivity;->u:Lf2/g;

    const-string v2, "f188"

    const v3, 0x3300000f

    invoke-virtual {v1, v3, v2}, Lf2/g;->c(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    const-string v3, "F188"

    const-string v4, "Vehicle manufacturer ECU SW Version No."

    invoke-direct {p1, v2, v3, v4, v1}, Lf2/b;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/mega/engineeringmode/function/versioninfo/DmcProductionActivity;->q:Lf2/b;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "f188 "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/mega/engineeringmode/function/versioninfo/DmcProductionActivity;->q:Lf2/b;

    invoke-virtual {v1}, Lf2/b;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lf2/b;

    iget-object v1, p0, Lcom/mega/engineeringmode/function/versioninfo/DmcProductionActivity;->u:Lf2/g;

    const-string v3, "f191"

    const v4, 0x33000015

    invoke-virtual {v1, v4, v3}, Lf2/g;->c(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "Vehicle manufacturer ECU HW No."

    const/4 v4, 0x5

    const-string v5, "F191"

    invoke-direct {p1, v4, v5, v3, v1}, Lf2/b;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/mega/engineeringmode/function/versioninfo/DmcProductionActivity;->r:Lf2/b;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "f191 "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/mega/engineeringmode/function/versioninfo/DmcProductionActivity;->r:Lf2/b;

    invoke-virtual {v1}, Lf2/b;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lf2/b;

    iget-object v1, p0, Lcom/mega/engineeringmode/function/versioninfo/DmcProductionActivity;->u:Lf2/g;

    const-string v3, "f193"

    const v4, 0x3300000c

    invoke-virtual {v1, v4, v3}, Lf2/g;->c(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "System Supplier ECU HW Version No."

    const/4 v4, 0x6

    const-string v5, "F193"

    invoke-direct {p1, v4, v5, v3, v1}, Lf2/b;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/mega/engineeringmode/function/versioninfo/DmcProductionActivity;->s:Lf2/b;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "f193 "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/mega/engineeringmode/function/versioninfo/DmcProductionActivity;->s:Lf2/b;

    invoke-virtual {v1}, Lf2/b;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lf2/b;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f12024e

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "System Supplier ECU SW Version No."

    const/4 v4, 0x7

    const-string v5, "F195"

    invoke-direct {p1, v4, v5, v3, v1}, Lf2/b;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/mega/engineeringmode/function/versioninfo/DmcProductionActivity;->t:Lf2/b;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "f195 "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/mega/engineeringmode/function/versioninfo/DmcProductionActivity;->t:Lf2/b;

    invoke-virtual {v1}, Lf2/b;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/mega/engineeringmode/function/versioninfo/DmcProductionActivity;->k:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Lcom/mega/engineeringmode/function/versioninfo/DmcProductionActivity;->m:Lf2/b;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/mega/engineeringmode/function/versioninfo/DmcProductionActivity;->n:Lf2/b;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/mega/engineeringmode/function/versioninfo/DmcProductionActivity;->o:Lf2/b;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/mega/engineeringmode/function/versioninfo/DmcProductionActivity;->p:Lf2/b;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/mega/engineeringmode/function/versioninfo/DmcProductionActivity;->q:Lf2/b;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/mega/engineeringmode/function/versioninfo/DmcProductionActivity;->r:Lf2/b;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/mega/engineeringmode/function/versioninfo/DmcProductionActivity;->s:Lf2/b;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/mega/engineeringmode/function/versioninfo/DmcProductionActivity;->t:Lf2/b;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/mega/engineeringmode/function/versioninfo/DmcProductionActivity;->u:Lf2/g;

    iget-object p1, p1, Lf2/g;->d:Landroidx/lifecycle/MutableLiveData;

    new-instance v1, Lg1/l;

    invoke-direct {v1, v2, p0}, Lg1/l;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    const-string p1, "initView"

    invoke-static {v0, p1}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const p1, 0x7f0a01d9

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcom/mega/engineeringmode/function/versioninfo/DmcProductionActivity;->j:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p1, Lcom/mega/engineeringmode/function/versioninfo/DmcProductionActivity$a;

    invoke-direct {p1, p0}, Lcom/mega/engineeringmode/function/versioninfo/DmcProductionActivity$a;-><init>(Lcom/mega/engineeringmode/function/versioninfo/DmcProductionActivity;)V

    iput-object p1, p0, Lcom/mega/engineeringmode/function/versioninfo/DmcProductionActivity;->l:Lcom/mega/engineeringmode/function/versioninfo/DmcProductionActivity$a;

    new-instance p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {p1, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/mega/engineeringmode/function/versioninfo/DmcProductionActivity;->j:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object p1, p0, Lcom/mega/engineeringmode/function/versioninfo/DmcProductionActivity;->j:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p0, p0, Lcom/mega/engineeringmode/function/versioninfo/DmcProductionActivity;->l:Lcom/mega/engineeringmode/function/versioninfo/DmcProductionActivity$a;

    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method public final onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/mega/engineeringmode/function/BaseFunctionActivity;->onDestroy()V

    iget-object v0, p0, Lcom/mega/engineeringmode/function/versioninfo/DmcProductionActivity;->u:Lf2/g;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lf2/g;->d:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0, p0}, Landroidx/lifecycle/LiveData;->removeObservers(Landroidx/lifecycle/LifecycleOwner;)V

    :cond_0
    return-void
.end method

.method public final onResume()V
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NotifyDataSetChanged"
        }
    .end annotation

    invoke-super {p0}, Lcom/mega/engineeringmode/function/BaseFunctionActivity;->onResume()V

    return-void
.end method
