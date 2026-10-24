.class public Lcom/mega/engineeringmode/function/versioninfo/DmcSoftwareActivity;
.super Lcom/mega/engineeringmode/function/BaseFunctionActivity;
.source "SourceFile"


# static fields
.field public static final synthetic p:I


# instance fields
.field public i:Landroid/widget/TextView;

.field public j:Landroid/widget/TextView;

.field public k:Landroid/widget/TextView;

.field public l:Landroid/widget/TextView;

.field public m:Landroid/widget/TextView;

.field public n:Landroid/widget/TextView;

.field public o:Lcom/mega/engineeringmode/model/VersionViewModel;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/mega/engineeringmode/function/BaseFunctionActivity;-><init>()V

    return-void
.end method

.method public static n(Lmega/car/hardware/CarPropertyValue;)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lmega/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lmega/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0
.end method


# virtual methods
.method public final o()V
    .locals 8

    iget-object v0, p0, Lcom/mega/engineeringmode/function/versioninfo/DmcSoftwareActivity;->o:Lcom/mega/engineeringmode/model/VersionViewModel;

    const v1, 0x33000009

    invoke-virtual {v0, v1}, Lcom/mega/engineeringmode/model/VersionViewModel;->a(I)Lmega/car/hardware/CarPropertyValue;

    move-result-object v0

    invoke-static {v0}, Lcom/mega/engineeringmode/function/versioninfo/DmcSoftwareActivity;->n(Lmega/car/hardware/CarPropertyValue;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "ro.build.type"

    const-string v2, ""

    invoke-static {v1, v2}, Ld/f;->u(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x3

    if-eqz v2, :cond_0

    new-instance v0, Lf2/c;

    invoke-direct {v0, p0, v1}, Lf2/c;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v1, Lcom/mega/engineeringmode/utils/RetryUtils;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput v3, v1, Lcom/mega/engineeringmode/utils/RetryUtils;->a:I

    new-instance v2, Lcom/mega/engineeringmode/utils/RetryUtils$a;

    invoke-direct {v2, v1}, Lcom/mega/engineeringmode/utils/RetryUtils$a;-><init>(Lcom/mega/engineeringmode/utils/RetryUtils;)V

    iput-object v2, v1, Lcom/mega/engineeringmode/utils/RetryUtils;->f:Lcom/mega/engineeringmode/utils/RetryUtils$a;

    iput-object v0, v1, Lcom/mega/engineeringmode/utils/RetryUtils;->b:Lcom/mega/engineeringmode/utils/RetryUtils$b;

    const-wide/16 v5, 0x1f4

    iput-wide v5, v1, Lcom/mega/engineeringmode/utils/RetryUtils;->c:J

    iput v4, v1, Lcom/mega/engineeringmode/utils/RetryUtils;->d:I

    invoke-static {}, Ld/f;->B()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, v1, Lcom/mega/engineeringmode/utils/RetryUtils;->e:Landroid/os/Handler;

    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v7

    invoke-virtual {v7, v1}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    invoke-virtual {v0, v2, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_0
    const v2, 0x7f12016a

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/mega/engineeringmode/function/versioninfo/DmcSoftwareActivity;->i:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/mega/engineeringmode/function/versioninfo/DmcSoftwareActivity;->k:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/mega/engineeringmode/function/versioninfo/DmcSoftwareActivity;->j:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object v0, p0, Lcom/mega/engineeringmode/function/versioninfo/DmcSoftwareActivity;->o:Lcom/mega/engineeringmode/model/VersionViewModel;

    const v1, 0x3300000b

    invoke-virtual {v0, v1}, Lcom/mega/engineeringmode/model/VersionViewModel;->a(I)Lmega/car/hardware/CarPropertyValue;

    move-result-object v0

    invoke-static {v0}, Lcom/mega/engineeringmode/function/versioninfo/DmcSoftwareActivity;->n(Lmega/car/hardware/CarPropertyValue;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\."

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "mcuVersion data "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v5, "DmcSoftwareActivity"

    invoke-static {v5, v2}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_1

    array-length v2, v1

    const/4 v6, 0x4

    if-ne v2, v6, :cond_1

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    aget-object v2, v1, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aget-object v3, v1, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    const/4 v6, 0x2

    aget-object v6, v1, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    aget-object v1, v1, v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v2, v3, v6, v1}, [Ljava/lang/Object;

    move-result-object v1

    const v2, 0x7f12020c

    invoke-virtual {v0, v2, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mcuVersion after "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v1, p0, Lcom/mega/engineeringmode/function/versioninfo/DmcSoftwareActivity;->l:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/mega/engineeringmode/function/versioninfo/DmcSoftwareActivity;->n:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/mega/engineeringmode/function/versioninfo/DmcSoftwareActivity;->o:Lcom/mega/engineeringmode/model/VersionViewModel;

    const v1, 0x3300000f

    invoke-virtual {p0, v1}, Lcom/mega/engineeringmode/model/VersionViewModel;->a(I)Lmega/car/hardware/CarPropertyValue;

    move-result-object p0

    invoke-static {p0}, Lcom/mega/engineeringmode/function/versioninfo/DmcSoftwareActivity;->n(Lmega/car/hardware/CarPropertyValue;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/mega/engineeringmode/function/BaseFunctionActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d007f

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    const p1, 0x7f0a02ea

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/mega/engineeringmode/function/versioninfo/DmcSoftwareActivity;->i:Landroid/widget/TextView;

    const p1, 0x7f0a01c2

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/mega/engineeringmode/function/versioninfo/DmcSoftwareActivity;->j:Landroid/widget/TextView;

    const p1, 0x7f0a0056

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/mega/engineeringmode/function/versioninfo/DmcSoftwareActivity;->k:Landroid/widget/TextView;

    const p1, 0x7f0a0271

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/mega/engineeringmode/function/versioninfo/DmcSoftwareActivity;->l:Landroid/widget/TextView;

    const p1, 0x7f0a0096

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/mega/engineeringmode/function/versioninfo/DmcSoftwareActivity;->m:Landroid/widget/TextView;

    const p1, 0x7f0a02bf

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/mega/engineeringmode/function/versioninfo/DmcSoftwareActivity;->n:Landroid/widget/TextView;

    new-instance p1, Landroidx/lifecycle/ViewModelProvider;

    new-instance v0, Lcom/mega/engineeringmode/model/ViewModelFactory;

    invoke-direct {v0, p0}, Lcom/mega/engineeringmode/model/ViewModelFactory;-><init>(Landroid/content/Context;)V

    invoke-direct {p1, p0, v0}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;Landroidx/lifecycle/ViewModelProvider$Factory;)V

    const-class v0, Lcom/mega/engineeringmode/model/VersionViewModel;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p1

    check-cast p1, Lcom/mega/engineeringmode/model/VersionViewModel;

    iput-object p1, p0, Lcom/mega/engineeringmode/function/versioninfo/DmcSoftwareActivity;->o:Lcom/mega/engineeringmode/model/VersionViewModel;

    iget-object p1, p1, Lcom/mega/engineeringmode/model/VersionViewModel;->e:Landroidx/lifecycle/MutableLiveData;

    new-instance v0, Lg1/m;

    const/4 v1, 0x5

    invoke-direct {v0, v1, p0}, Lg1/m;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, p0, v0}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    iget-object p1, p0, Lcom/mega/engineeringmode/function/versioninfo/DmcSoftwareActivity;->o:Lcom/mega/engineeringmode/model/VersionViewModel;

    iget-object p1, p1, Lcom/mega/engineeringmode/model/VersionViewModel;->d:Landroidx/lifecycle/MutableLiveData;

    new-instance v0, Lg1/a;

    invoke-direct {v0, v1, p0}, Lg1/a;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, p0, v0}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    invoke-virtual {p0}, Lcom/mega/engineeringmode/function/BaseFunctionActivity;->h()V

    iget-object p0, p0, Lcom/mega/engineeringmode/function/BaseFunctionActivity;->a:Landroid/widget/TextView;

    if-eqz p0, :cond_0

    const p1, 0x7f120392

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    return-void
.end method

.method public final onDestroy()V
    .locals 0

    invoke-super {p0}, Lcom/mega/engineeringmode/function/BaseFunctionActivity;->onDestroy()V

    return-void
.end method

.method public final onResume()V
    .locals 4

    invoke-super {p0}, Lcom/mega/engineeringmode/function/BaseFunctionActivity;->onResume()V

    iget-object v0, p0, Lcom/mega/engineeringmode/function/versioninfo/DmcSoftwareActivity;->o:Lcom/mega/engineeringmode/model/VersionViewModel;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, v0, Lcom/mega/engineeringmode/model/VersionViewModel;->b:Ln2/i;

    const-string/jumbo v2, "uartrpc_svc/upgrade/req"

    invoke-virtual {v0, v2, v1}, Ln2/i;->d(Ljava/lang/String;Ljava/util/ArrayList;)Z

    invoke-virtual {p0}, Lcom/mega/engineeringmode/function/versioninfo/DmcSoftwareActivity;->o()V

    return-void
.end method
