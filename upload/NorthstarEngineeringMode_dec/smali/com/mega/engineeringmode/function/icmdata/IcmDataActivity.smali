.class public Lcom/mega/engineeringmode/function/icmdata/IcmDataActivity;
.super Lcom/mega/engineeringmode/function/BaseFunctionActivity;
.source "SourceFile"


# static fields
.field public static final synthetic l:I


# instance fields
.field public i:Lcom/mega/engineeringmode/databinding/ActivityIcmDataBinding;

.field public j:Lcom/mega/engineeringmode/function/icmdata/IcmDataAdapter;

.field public k:Lcom/mega/engineeringmode/function/icmdata/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/mega/engineeringmode/function/BaseFunctionActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 5

    invoke-super {p0, p1}, Lcom/mega/engineeringmode/function/BaseFunctionActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d0034

    invoke-static {p0, p1}, Landroidx/databinding/DataBindingUtil;->setContentView(Landroid/app/Activity;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/mega/engineeringmode/databinding/ActivityIcmDataBinding;

    iput-object p1, p0, Lcom/mega/engineeringmode/function/icmdata/IcmDataActivity;->i:Lcom/mega/engineeringmode/databinding/ActivityIcmDataBinding;

    invoke-virtual {p0}, Lcom/mega/engineeringmode/function/BaseFunctionActivity;->h()V

    iget-object p1, p0, Lcom/mega/engineeringmode/function/BaseFunctionActivity;->a:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    const v0, 0x7f1201bf

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    new-instance p1, Lcom/mega/engineeringmode/function/icmdata/IcmDataAdapter;

    invoke-direct {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p1, Lcom/mega/engineeringmode/function/icmdata/IcmDataAdapter;->b:Ljava/util/ArrayList;

    iput-object p0, p1, Lcom/mega/engineeringmode/function/icmdata/IcmDataAdapter;->a:Landroid/content/Context;

    iput-object p1, p0, Lcom/mega/engineeringmode/function/icmdata/IcmDataActivity;->j:Lcom/mega/engineeringmode/function/icmdata/IcmDataAdapter;

    new-instance p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {p1, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/mega/engineeringmode/function/icmdata/IcmDataActivity;->i:Lcom/mega/engineeringmode/databinding/ActivityIcmDataBinding;

    iget-object v0, v0, Lcom/mega/engineeringmode/databinding/ActivityIcmDataBinding;->c:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object p1, p0, Lcom/mega/engineeringmode/function/icmdata/IcmDataActivity;->i:Lcom/mega/engineeringmode/databinding/ActivityIcmDataBinding;

    iget-object p1, p1, Lcom/mega/engineeringmode/databinding/ActivityIcmDataBinding;->c:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Lcom/mega/engineeringmode/ui/SpacesItemDecoration;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Lcom/mega/engineeringmode/ui/SpacesItemDecoration;-><init>(I)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    iget-object p1, p0, Lcom/mega/engineeringmode/function/icmdata/IcmDataActivity;->i:Lcom/mega/engineeringmode/databinding/ActivityIcmDataBinding;

    iget-object p1, p1, Lcom/mega/engineeringmode/databinding/ActivityIcmDataBinding;->c:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcom/mega/engineeringmode/function/icmdata/IcmDataActivity;->j:Lcom/mega/engineeringmode/function/icmdata/IcmDataAdapter;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object p1, p0, Lcom/mega/engineeringmode/function/icmdata/IcmDataActivity;->i:Lcom/mega/engineeringmode/databinding/ActivityIcmDataBinding;

    iget-object p1, p1, Lcom/mega/engineeringmode/databinding/ActivityIcmDataBinding;->c:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    new-instance p1, Lcom/mega/engineeringmode/function/icmdata/a;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p1, Lcom/mega/engineeringmode/function/icmdata/a;->d:Landroid/os/Handler;

    new-instance v0, Lcom/mega/engineeringmode/function/icmdata/a$a;

    invoke-direct {v0, p1}, Lcom/mega/engineeringmode/function/icmdata/a$a;-><init>(Lcom/mega/engineeringmode/function/icmdata/a;)V

    iput-object v0, p1, Lcom/mega/engineeringmode/function/icmdata/a;->e:Lcom/mega/engineeringmode/function/icmdata/a$a;

    const/16 v0, 0x27

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    iput-object v1, p1, Lcom/mega/engineeringmode/function/icmdata/a;->f:[I

    iput-object p0, p1, Lcom/mega/engineeringmode/function/icmdata/a;->c:Landroid/content/Context;

    invoke-static {}, Lmega/car/MegaCarProperty;->getInstance()Lmega/car/MegaCarProperty;

    move-result-object v2

    iput-object v2, p1, Lcom/mega/engineeringmode/function/icmdata/a;->a:Lmega/car/MegaCarProperty;

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p1, Lcom/mega/engineeringmode/function/icmdata/a;->b:Ljava/util/HashSet;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget v3, v1, v2

    iget-object v4, p1, Lcom/mega/engineeringmode/function/icmdata/a;->b:Ljava/util/HashSet;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iput-object p1, p0, Lcom/mega/engineeringmode/function/icmdata/IcmDataActivity;->k:Lcom/mega/engineeringmode/function/icmdata/a;

    iget-object v0, p1, Lcom/mega/engineeringmode/function/icmdata/a;->a:Lmega/car/MegaCarProperty;

    if-eqz v0, :cond_2

    iget-object v1, p1, Lcom/mega/engineeringmode/function/icmdata/a;->e:Lcom/mega/engineeringmode/function/icmdata/a$a;

    iget-object p1, p1, Lcom/mega/engineeringmode/function/icmdata/a;->b:Ljava/util/HashSet;

    invoke-virtual {v0, v1, p1}, Lmega/car/MegaCarProperty;->registerCallback(Lmega/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;Ljava/util/Set;)V

    :cond_2
    iget-object p1, p0, Lcom/mega/engineeringmode/function/icmdata/IcmDataActivity;->k:Lcom/mega/engineeringmode/function/icmdata/a;

    const v0, 0x50000045    # 8.5900052E9f

    iget-object p1, p1, Lcom/mega/engineeringmode/function/icmdata/a;->a:Lmega/car/MegaCarProperty;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lmega/car/MegaCarProperty;->setIntProp(II)V

    invoke-static {}, Ld/f;->x()Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Landroidx/constraintlayout/helper/widget/a;

    const/16 v1, 0x8

    invoke-direct {v0, v1, p0}, Landroidx/constraintlayout/helper/widget/a;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    nop

    :array_0
    .array-data 4
        0x400000b
        0x50000003
        0x50000004
        0x4000013
        0x4000074
        0x4000046
        0x400003c
        0x4000042
        0x4000075
        0x4000047
        0x400003d
        0x50000005
        0x5000033
        0x50000007    # 8.5899418E9f
        0x5000006e
        0x50000009
        0x5000000a
        0x5000000b
        0x5000006d
        0x5000000d
        0x5000000e
        0x5000000f
        0x50000010
        0x50000011    # 8.589952E9f
        0x50000012
        0x50000013
        0x50000014
        0x5000003
        0x50000016    # 8.5899571E9f
        0x33000009
        0x3300000b
        0x5000003b    # 8.589995E9f
        0x50000017
        0x50000018
        0x50000019
        0x5000001a
        0x5000003c    # 8.589996E9f
        0x5000001b    # 8.5899622E9f
        0x5000001c
    .end array-data
.end method

.method public final onDestroy()V
    .locals 3

    invoke-super {p0}, Lcom/mega/engineeringmode/function/BaseFunctionActivity;->onDestroy()V

    iget-object v0, p0, Lcom/mega/engineeringmode/function/icmdata/IcmDataActivity;->k:Lcom/mega/engineeringmode/function/icmdata/a;

    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/mega/engineeringmode/function/icmdata/a;->a:Lmega/car/MegaCarProperty;

    if-eqz v1, :cond_0

    iget-object v2, v0, Lcom/mega/engineeringmode/function/icmdata/a;->e:Lcom/mega/engineeringmode/function/icmdata/a$a;

    iget-object v0, v0, Lcom/mega/engineeringmode/function/icmdata/a;->b:Ljava/util/HashSet;

    invoke-virtual {v1, v2, v0}, Lmega/car/MegaCarProperty;->unregisterCallback(Lmega/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;Ljava/util/Set;)V

    :cond_0
    iget-object p0, p0, Lcom/mega/engineeringmode/function/icmdata/IcmDataActivity;->k:Lcom/mega/engineeringmode/function/icmdata/a;

    iget-object p0, p0, Lcom/mega/engineeringmode/function/icmdata/a;->a:Lmega/car/MegaCarProperty;

    const v0, 0x50000045    # 8.5900052E9f

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lmega/car/MegaCarProperty;->setIntProp(II)V

    :cond_1
    return-void
.end method
