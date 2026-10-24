.class public Lcom/mega/engineeringmode/function/exhibition/ExhibitionModeActivity;
.super Lcom/mega/engineeringmode/function/BaseFunctionActivity;
.source "SourceFile"


# static fields
.field public static final synthetic k:I


# instance fields
.field public final i:Lcom/mega/engineeringmode/function/exhibition/ExhibitionModeActivity$a;

.field public j:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/mega/engineeringmode/function/BaseFunctionActivity;-><init>()V

    new-instance v0, Lcom/mega/engineeringmode/function/exhibition/ExhibitionModeActivity$a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/mega/engineeringmode/function/exhibition/ExhibitionModeActivity;->i:Lcom/mega/engineeringmode/function/exhibition/ExhibitionModeActivity$a;

    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lcom/mega/engineeringmode/function/BaseFunctionActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d0031

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    const p1, 0x7f12015f

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mega/engineeringmode/function/BaseFunctionActivity;->i(Ljava/lang/String;)V

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p1, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v1, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const v1, 0x67000082

    invoke-static {v1}, Lmega/car/livedata/CarPropertyLiveData;->obtain(I)Lmega/car/livedata/CarPropertyLiveData;

    move-result-object v2

    invoke-virtual {v2, p1}, Lmega/car/livedata/CarPropertyLiveData;->setValueMap(Landroid/util/SparseArray;)V

    const p1, 0x7f0a0390

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/mega/engineeringmode/ui/MegaSwitch;

    const v2, 0x7f0a0410

    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/mega/engineeringmode/function/exhibition/ExhibitionModeActivity;->j:Landroid/widget/TextView;

    new-instance v2, Lcom/mega/engineeringmode/function/exhibition/ExhibitionModeActivity$b;

    invoke-direct {v2, p0, p1}, Lcom/mega/engineeringmode/function/exhibition/ExhibitionModeActivity$b;-><init>(Lcom/mega/engineeringmode/function/exhibition/ExhibitionModeActivity;Lcom/mega/engineeringmode/ui/MegaSwitch;)V

    invoke-virtual {p1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {v1}, Lmega/car/livedata/CarPropertyLiveData;->obtain(I)Lmega/car/livedata/CarPropertyLiveData;

    move-result-object v1

    new-instance v2, Lq1/a;

    invoke-direct {v2, p0, p1}, Lq1/a;-><init>(Lcom/mega/engineeringmode/function/exhibition/ExhibitionModeActivity;Lcom/mega/engineeringmode/ui/MegaSwitch;)V

    invoke-virtual {v1, p0, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    const v1, 0x67000137

    invoke-static {v1}, Lmega/car/livedata/CarPropertyLiveData;->obtain(I)Lmega/car/livedata/CarPropertyLiveData;

    move-result-object v1

    new-instance v2, Lq1/b;

    invoke-direct {v2, p0, p1}, Lq1/b;-><init>(Lcom/mega/engineeringmode/function/exhibition/ExhibitionModeActivity;Lcom/mega/engineeringmode/ui/MegaSwitch;)V

    invoke-virtual {v1, p0, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    const v1, 0x50000016    # 8.5899571E9f

    invoke-static {v1}, Lmega/car/livedata/CarPropertyLiveData;->obtain(I)Lmega/car/livedata/CarPropertyLiveData;

    move-result-object v1

    new-instance v2, Lg1/l;

    invoke-direct {v2, v0, p1}, Lg1/l;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v1, p0, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method public final onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/mega/engineeringmode/function/BaseFunctionActivity;->onDestroy()V

    invoke-static {}, Ld/f;->B()Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/mega/engineeringmode/function/exhibition/ExhibitionModeActivity;->i:Lcom/mega/engineeringmode/function/exhibition/ExhibitionModeActivity$a;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method
