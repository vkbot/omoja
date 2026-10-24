.class public Lcom/mega/engineeringmode/function/display/VideoFragment;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"


# static fields
.field public static final synthetic d:I


# instance fields
.field public a:Lcom/mega/engineeringmode/databinding/VedioFragmentBinding;

.field public b:Lcom/mega/engineeringmode/function/display/MediaAdapter;

.field public c:Ln1/l;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public final o(Z)V
    .locals 3

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/mega/engineeringmode/function/display/VideoFragment;->a:Lcom/mega/engineeringmode/databinding/VedioFragmentBinding;

    iget-object p1, p1, Lcom/mega/engineeringmode/databinding/VedioFragmentBinding;->r:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/mega/engineeringmode/function/display/VideoFragment;->a:Lcom/mega/engineeringmode/databinding/VedioFragmentBinding;

    iget-object p1, p1, Lcom/mega/engineeringmode/databinding/VedioFragmentBinding;->c:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/mega/engineeringmode/function/display/VideoFragment;->a:Lcom/mega/engineeringmode/databinding/VedioFragmentBinding;

    iget-object p0, p0, Lcom/mega/engineeringmode/databinding/VedioFragmentBinding;->x:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lcom/mega/engineeringmode/function/display/VideoFragment;->a:Lcom/mega/engineeringmode/databinding/VedioFragmentBinding;

    iget-object p1, p1, Lcom/mega/engineeringmode/databinding/VedioFragmentBinding;->r:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Li2/a;->b(Landroid/content/Context;)Li2/a;

    move-result-object p1

    iget-object p1, p1, Li2/a;->c:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Ljava/util/List;

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_2

    iget-object p1, p0, Lcom/mega/engineeringmode/function/display/VideoFragment;->a:Lcom/mega/engineeringmode/databinding/VedioFragmentBinding;

    iget-object p1, p1, Lcom/mega/engineeringmode/databinding/VedioFragmentBinding;->c:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/mega/engineeringmode/function/display/VideoFragment;->a:Lcom/mega/engineeringmode/databinding/VedioFragmentBinding;

    iget-object p1, p1, Lcom/mega/engineeringmode/databinding/VedioFragmentBinding;->x:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/mega/engineeringmode/function/display/VideoFragment;->b:Lcom/mega/engineeringmode/function/display/MediaAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-static {p0}, Li2/a;->b(Landroid/content/Context;)Li2/a;

    move-result-object p0

    iget-object p0, p0, Li2/a;->c:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    iput-object p0, p1, Lcom/mega/engineeringmode/function/display/MediaAdapter;->a:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/mega/engineeringmode/function/display/VideoFragment;->a:Lcom/mega/engineeringmode/databinding/VedioFragmentBinding;

    iget-object p1, p1, Lcom/mega/engineeringmode/databinding/VedioFragmentBinding;->c:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/mega/engineeringmode/function/display/VideoFragment;->a:Lcom/mega/engineeringmode/databinding/VedioFragmentBinding;

    iget-object p0, p0, Lcom/mega/engineeringmode/databinding/VedioFragmentBinding;->x:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    return-void
.end method

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

    const p3, 0x7f0d011a

    const/4 v0, 0x0

    invoke-static {p1, p3, p2, v0}, Landroidx/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/mega/engineeringmode/databinding/VedioFragmentBinding;

    iput-object p1, p0, Lcom/mega/engineeringmode/function/display/VideoFragment;->a:Lcom/mega/engineeringmode/databinding/VedioFragmentBinding;

    new-instance p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-direct {p1, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iget-object p2, p0, Lcom/mega/engineeringmode/function/display/VideoFragment;->a:Lcom/mega/engineeringmode/databinding/VedioFragmentBinding;

    iget-object p2, p2, Lcom/mega/engineeringmode/databinding/VedioFragmentBinding;->x:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object p1, p0, Lcom/mega/engineeringmode/function/display/VideoFragment;->a:Lcom/mega/engineeringmode/databinding/VedioFragmentBinding;

    iget-object p1, p1, Lcom/mega/engineeringmode/databinding/VedioFragmentBinding;->x:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p2, Lcom/mega/engineeringmode/ui/SpacesItemDecoration;

    const/16 p3, 0x14

    invoke-direct {p2, p3}, Lcom/mega/engineeringmode/ui/SpacesItemDecoration;-><init>(I)V

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    new-instance p1, Lcom/mega/engineeringmode/function/display/MediaAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/mega/engineeringmode/function/display/MediaAdapter;-><init>(Landroidx/fragment/app/FragmentActivity;)V

    iput-object p1, p0, Lcom/mega/engineeringmode/function/display/VideoFragment;->b:Lcom/mega/engineeringmode/function/display/MediaAdapter;

    iget-object p2, p0, Lcom/mega/engineeringmode/function/display/VideoFragment;->a:Lcom/mega/engineeringmode/databinding/VedioFragmentBinding;

    iget-object p2, p2, Lcom/mega/engineeringmode/databinding/VedioFragmentBinding;->x:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Li2/a;->b(Landroid/content/Context;)Li2/a;

    move-result-object p1

    iget-object p1, p1, Li2/a;->a:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p2

    instance-of p2, p2, Ljava/lang/Integer;

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    const/4 p2, 0x2

    const/4 p3, 0x3

    if-eq p1, p2, :cond_1

    if-ne p1, p3, :cond_3

    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Li2/a;->b(Landroid/content/Context;)Li2/a;

    move-result-object p1

    iget-object p1, p1, Li2/a;->e:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p2

    instance-of p2, p2, Ljava/lang/Boolean;

    if-eqz p2, :cond_2

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "loading "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "VideoFragment"

    invoke-static {p2, p1}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/mega/engineeringmode/function/display/VideoFragment;->o(Z)V

    :cond_3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Li2/a;->b(Landroid/content/Context;)Li2/a;

    move-result-object p1

    iget-object p1, p1, Li2/a;->e:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object p2

    new-instance v0, Lg1/m;

    invoke-direct {v0, p3, p0}, Lg1/m;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, p2, v0}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    iget-object p0, p0, Lcom/mega/engineeringmode/function/display/VideoFragment;->a:Lcom/mega/engineeringmode/databinding/VedioFragmentBinding;

    invoke-virtual {p0}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public final onDestroyView()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Li2/a;->b(Landroid/content/Context;)Li2/a;

    move-result-object v0

    iget-object v0, v0, Li2/a;->e:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/lifecycle/LiveData;->removeObservers(Landroidx/lifecycle/LifecycleOwner;)V

    return-void
.end method
