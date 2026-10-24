.class public Lcom/mega/engineeringmode/function/candata/CanDataActivity;
.super Lcom/mega/engineeringmode/function/BaseFunctionActivity;
.source "SourceFile"


# instance fields
.field public i:Lcom/mega/engineeringmode/function/candata/CanDataViewModel;

.field public j:Lmega/car/MegaCarProperty;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/mega/engineeringmode/function/BaseFunctionActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/mega/engineeringmode/function/BaseFunctionActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d0021

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/mega/engineeringmode/function/BaseFunctionActivity;->h()V

    iget-object p1, p0, Lcom/mega/engineeringmode/function/BaseFunctionActivity;->a:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    const v0, 0x7f1201bd

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    new-instance p1, Landroidx/lifecycle/ViewModelProvider;

    invoke-direct {p1, p0}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;)V

    const-class v0, Lcom/mega/engineeringmode/function/candata/CanDataViewModel;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p1

    check-cast p1, Lcom/mega/engineeringmode/function/candata/CanDataViewModel;

    iput-object p1, p0, Lcom/mega/engineeringmode/function/candata/CanDataActivity;->i:Lcom/mega/engineeringmode/function/candata/CanDataViewModel;

    invoke-static {}, Lmega/car/MegaCarProperty;->getInstance()Lmega/car/MegaCarProperty;

    move-result-object p1

    iput-object p1, p0, Lcom/mega/engineeringmode/function/candata/CanDataActivity;->j:Lmega/car/MegaCarProperty;

    const v0, 0x50000045    # 8.5900052E9f

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lmega/car/MegaCarProperty;->setIntProp(II)V

    new-instance p1, Lcom/mega/engineeringmode/function/candata/ReceiveFragment;

    invoke-direct {p1}, Lcom/mega/engineeringmode/function/candata/ReceiveFragment;-><init>()V

    new-instance v0, Lcom/mega/engineeringmode/function/candata/SendFragment;

    invoke-direct {v0}, Lcom/mega/engineeringmode/function/candata/SendFragment;-><init>()V

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p0

    const v1, 0x7f0a010c

    invoke-virtual {p0, v1, p1}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p0

    const v1, 0x7f0a010d

    invoke-virtual {p0, v1, v0}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/fragment/app/FragmentTransaction;->show(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentTransaction;->show(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    return-void
.end method

.method public final onDestroy()V
    .locals 3

    invoke-super {p0}, Lcom/mega/engineeringmode/function/BaseFunctionActivity;->onDestroy()V

    iget-object v0, p0, Lcom/mega/engineeringmode/function/candata/CanDataActivity;->j:Lmega/car/MegaCarProperty;

    const v1, 0x50000045    # 8.5900052E9f

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lmega/car/MegaCarProperty;->setIntProp(II)V

    iget-object p0, p0, Lcom/mega/engineeringmode/function/candata/CanDataActivity;->i:Lcom/mega/engineeringmode/function/candata/CanDataViewModel;

    invoke-virtual {p0}, Lcom/mega/engineeringmode/function/candata/CanDataViewModel;->onCleared()V

    return-void
.end method
