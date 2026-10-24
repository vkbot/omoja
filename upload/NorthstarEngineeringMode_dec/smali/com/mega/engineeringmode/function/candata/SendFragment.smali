.class public Lcom/mega/engineeringmode/function/candata/SendFragment;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"


# instance fields
.field public a:Landroid/view/View;

.field public b:Landroidx/recyclerview/widget/RecyclerView;

.field public c:Lcom/mega/engineeringmode/function/candata/CanDataAdapter;

.field public d:Lcom/mega/engineeringmode/function/candata/CanDataViewModel;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
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

    const p3, 0x7f0d0100

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/mega/engineeringmode/function/candata/SendFragment;->a:Landroid/view/View;

    const p2, 0x7f0a0350

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcom/mega/engineeringmode/function/candata/SendFragment;->b:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-direct {p1, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iget-object p2, p0, Lcom/mega/engineeringmode/function/candata/SendFragment;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object p1, p0, Lcom/mega/engineeringmode/function/candata/SendFragment;->b:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p2, Lcom/mega/engineeringmode/ui/SpacesItemDecoration;

    const/16 p3, 0xa

    invoke-direct {p2, p3}, Lcom/mega/engineeringmode/ui/SpacesItemDecoration;-><init>(I)V

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    new-instance p1, Landroidx/lifecycle/ViewModelProvider;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-direct {p1, p2}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;)V

    const-class p2, Lcom/mega/engineeringmode/function/candata/CanDataViewModel;

    invoke-virtual {p1, p2}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p1

    check-cast p1, Lcom/mega/engineeringmode/function/candata/CanDataViewModel;

    iput-object p1, p0, Lcom/mega/engineeringmode/function/candata/SendFragment;->d:Lcom/mega/engineeringmode/function/candata/CanDataViewModel;

    new-instance p1, Lcom/mega/engineeringmode/function/candata/CanDataAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    iget-object p2, p0, Lcom/mega/engineeringmode/function/candata/SendFragment;->d:Lcom/mega/engineeringmode/function/candata/CanDataViewModel;

    iget-object p2, p2, Lcom/mega/engineeringmode/function/candata/CanDataViewModel;->b:Ljava/util/ArrayList;

    invoke-direct {p1, p2}, Lcom/mega/engineeringmode/function/candata/CanDataAdapter;-><init>(Ljava/util/ArrayList;)V

    iput-object p1, p0, Lcom/mega/engineeringmode/function/candata/SendFragment;->c:Lcom/mega/engineeringmode/function/candata/CanDataAdapter;

    iget-object p2, p0, Lcom/mega/engineeringmode/function/candata/SendFragment;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object p1, p0, Lcom/mega/engineeringmode/function/candata/SendFragment;->d:Lcom/mega/engineeringmode/function/candata/CanDataViewModel;

    iget-object p1, p1, Lcom/mega/engineeringmode/function/candata/CanDataViewModel;->d:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    new-instance p3, Lg1/a;

    const/4 v0, 0x1

    invoke-direct {p3, v0, p0}, Lg1/a;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, p2, p3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    iget-object p0, p0, Lcom/mega/engineeringmode/function/candata/SendFragment;->a:Landroid/view/View;

    return-object p0
.end method

.method public final onDestroyView()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    iget-object v0, p0, Lcom/mega/engineeringmode/function/candata/SendFragment;->d:Lcom/mega/engineeringmode/function/candata/CanDataViewModel;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/mega/engineeringmode/function/candata/CanDataViewModel;->d:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/lifecycle/LiveData;->removeObservers(Landroidx/lifecycle/LifecycleOwner;)V

    :cond_0
    return-void
.end method
