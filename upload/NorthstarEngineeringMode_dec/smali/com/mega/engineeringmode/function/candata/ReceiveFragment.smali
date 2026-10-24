.class public Lcom/mega/engineeringmode/function/candata/ReceiveFragment;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"


# instance fields
.field public a:Lcom/mega/engineeringmode/function/candata/CanDataAdapter;

.field public b:Lcom/mega/engineeringmode/function/candata/CanDataViewModel;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1    # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const p3, 0x7f0d00f6

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0a0350

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    new-instance p3, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p3, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    new-instance p3, Lcom/mega/engineeringmode/ui/SpacesItemDecoration;

    const/16 v0, 0xa

    invoke-direct {p3, v0}, Lcom/mega/engineeringmode/ui/SpacesItemDecoration;-><init>(I)V

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    new-instance p3, Landroidx/lifecycle/ViewModelProvider;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p3, v0}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;)V

    const-class v0, Lcom/mega/engineeringmode/function/candata/CanDataViewModel;

    invoke-virtual {p3, v0}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p3

    check-cast p3, Lcom/mega/engineeringmode/function/candata/CanDataViewModel;

    iput-object p3, p0, Lcom/mega/engineeringmode/function/candata/ReceiveFragment;->b:Lcom/mega/engineeringmode/function/candata/CanDataViewModel;

    new-instance p3, Lcom/mega/engineeringmode/function/candata/CanDataAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    iget-object v0, p0, Lcom/mega/engineeringmode/function/candata/ReceiveFragment;->b:Lcom/mega/engineeringmode/function/candata/CanDataViewModel;

    iget-object v0, v0, Lcom/mega/engineeringmode/function/candata/CanDataViewModel;->a:Ljava/util/ArrayList;

    invoke-direct {p3, v0}, Lcom/mega/engineeringmode/function/candata/CanDataAdapter;-><init>(Ljava/util/ArrayList;)V

    iput-object p3, p0, Lcom/mega/engineeringmode/function/candata/ReceiveFragment;->a:Lcom/mega/engineeringmode/function/candata/CanDataAdapter;

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object p2, p0, Lcom/mega/engineeringmode/function/candata/ReceiveFragment;->b:Lcom/mega/engineeringmode/function/candata/CanDataViewModel;

    iget-object p2, p2, Lcom/mega/engineeringmode/function/candata/CanDataViewModel;->c:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    new-instance v0, Lg1/m;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Lg1/m;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p2, p3, v0}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-object p1
.end method

.method public final onDestroyView()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    iget-object v0, p0, Lcom/mega/engineeringmode/function/candata/ReceiveFragment;->b:Lcom/mega/engineeringmode/function/candata/CanDataViewModel;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/mega/engineeringmode/function/candata/CanDataViewModel;->c:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/lifecycle/LiveData;->removeObservers(Landroidx/lifecycle/LifecycleOwner;)V

    :cond_0
    return-void
.end method
