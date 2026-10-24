.class public Lcom/mega/engineeringmode/function/display/AudioFragment;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mega/engineeringmode/function/display/AudioFragment$SpacesItemDecoration;
    }
.end annotation


# static fields
.field public static final synthetic f:I


# instance fields
.field public a:Lcom/mega/engineeringmode/databinding/AudioFragmentBinding;

.field public b:Lcom/mega/engineeringmode/function/display/MediaAdapter;

.field public c:Landroid/media/MediaPlayer;

.field public final d:Lcom/mega/engineeringmode/function/display/AudioFragment$a;

.field public final e:Lcom/mega/engineeringmode/function/display/AudioFragment$b;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    new-instance v0, Lcom/mega/engineeringmode/function/display/AudioFragment$a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/mega/engineeringmode/function/display/AudioFragment;->d:Lcom/mega/engineeringmode/function/display/AudioFragment$a;

    new-instance v0, Lcom/mega/engineeringmode/function/display/AudioFragment$b;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/mega/engineeringmode/function/display/AudioFragment;->e:Lcom/mega/engineeringmode/function/display/AudioFragment$b;

    return-void
.end method


# virtual methods
.method public final o(Z)V
    .locals 3

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/mega/engineeringmode/function/display/AudioFragment;->a:Lcom/mega/engineeringmode/databinding/AudioFragmentBinding;

    iget-object p1, p1, Lcom/mega/engineeringmode/databinding/AudioFragmentBinding;->x:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/mega/engineeringmode/function/display/AudioFragment;->a:Lcom/mega/engineeringmode/databinding/AudioFragmentBinding;

    iget-object p1, p1, Lcom/mega/engineeringmode/databinding/AudioFragmentBinding;->r:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/mega/engineeringmode/function/display/AudioFragment;->a:Lcom/mega/engineeringmode/databinding/AudioFragmentBinding;

    iget-object p0, p0, Lcom/mega/engineeringmode/databinding/AudioFragmentBinding;->c:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lcom/mega/engineeringmode/function/display/AudioFragment;->a:Lcom/mega/engineeringmode/databinding/AudioFragmentBinding;

    iget-object p1, p1, Lcom/mega/engineeringmode/databinding/AudioFragmentBinding;->x:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Li2/a;->b(Landroid/content/Context;)Li2/a;

    move-result-object p1

    iget-object p1, p1, Li2/a;->b:Landroidx/lifecycle/MutableLiveData;

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

    iget-object p1, p0, Lcom/mega/engineeringmode/function/display/AudioFragment;->a:Lcom/mega/engineeringmode/databinding/AudioFragmentBinding;

    iget-object p1, p1, Lcom/mega/engineeringmode/databinding/AudioFragmentBinding;->r:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/mega/engineeringmode/function/display/AudioFragment;->a:Lcom/mega/engineeringmode/databinding/AudioFragmentBinding;

    iget-object p1, p1, Lcom/mega/engineeringmode/databinding/AudioFragmentBinding;->c:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/mega/engineeringmode/function/display/AudioFragment;->b:Lcom/mega/engineeringmode/function/display/MediaAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-static {p0}, Li2/a;->b(Landroid/content/Context;)Li2/a;

    move-result-object p0

    iget-object p0, p0, Li2/a;->b:Landroidx/lifecycle/MutableLiveData;

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
    iget-object p1, p0, Lcom/mega/engineeringmode/function/display/AudioFragment;->a:Lcom/mega/engineeringmode/databinding/AudioFragmentBinding;

    iget-object p1, p1, Lcom/mega/engineeringmode/databinding/AudioFragmentBinding;->r:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/mega/engineeringmode/function/display/AudioFragment;->a:Lcom/mega/engineeringmode/databinding/AudioFragmentBinding;

    iget-object p1, p1, Lcom/mega/engineeringmode/databinding/AudioFragmentBinding;->c:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/mega/engineeringmode/function/display/AudioFragment;->a:Lcom/mega/engineeringmode/databinding/AudioFragmentBinding;

    iget-object p0, p0, Lcom/mega/engineeringmode/databinding/AudioFragmentBinding;->y:Landroidx/constraintlayout/widget/Group;

    invoke-virtual {p0, v1}, Landroidx/constraintlayout/widget/Group;->setVisibility(I)V

    :goto_1
    return-void
.end method

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

    const-string p3, "AudioFragment"

    const-string/jumbo v0, "onCreateView"

    invoke-static {p3, v0}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const v0, 0x7f0d0050

    const/4 v1, 0x0

    invoke-static {p1, v0, p2, v1}, Landroidx/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/mega/engineeringmode/databinding/AudioFragmentBinding;

    iput-object p1, p0, Lcom/mega/engineeringmode/function/display/AudioFragment;->a:Lcom/mega/engineeringmode/databinding/AudioFragmentBinding;

    invoke-virtual {p1, p0}, Lcom/mega/engineeringmode/databinding/AudioFragmentBinding;->b(Lcom/mega/engineeringmode/function/display/AudioFragment;)V

    new-instance p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-direct {p1, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iget-object p2, p0, Lcom/mega/engineeringmode/function/display/AudioFragment;->a:Lcom/mega/engineeringmode/databinding/AudioFragmentBinding;

    iget-object p2, p2, Lcom/mega/engineeringmode/databinding/AudioFragmentBinding;->c:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object p1, p0, Lcom/mega/engineeringmode/function/display/AudioFragment;->a:Lcom/mega/engineeringmode/databinding/AudioFragmentBinding;

    iget-object p1, p1, Lcom/mega/engineeringmode/databinding/AudioFragmentBinding;->c:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p2, Lcom/mega/engineeringmode/function/display/AudioFragment$SpacesItemDecoration;

    invoke-direct {p2}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    const/16 v0, 0x14

    iput v0, p2, Lcom/mega/engineeringmode/function/display/AudioFragment$SpacesItemDecoration;->a:I

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    new-instance p1, Lcom/mega/engineeringmode/function/display/MediaAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/mega/engineeringmode/function/display/MediaAdapter;-><init>(Landroidx/fragment/app/FragmentActivity;)V

    iput-object p1, p0, Lcom/mega/engineeringmode/function/display/AudioFragment;->b:Lcom/mega/engineeringmode/function/display/MediaAdapter;

    iget-object p2, p0, Lcom/mega/engineeringmode/function/display/AudioFragment;->a:Lcom/mega/engineeringmode/databinding/AudioFragmentBinding;

    iget-object p2, p2, Lcom/mega/engineeringmode/databinding/AudioFragmentBinding;->c:Landroidx/recyclerview/widget/RecyclerView;

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

    if-eq p1, p2, :cond_1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Li2/a;->b(Landroid/content/Context;)Li2/a;

    move-result-object p1

    iget-object p1, p1, Li2/a;->d:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "loading  "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/mega/engineeringmode/function/display/AudioFragment;->o(Z)V

    :cond_3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Li2/a;->b(Landroid/content/Context;)Li2/a;

    move-result-object p1

    iget-object p1, p1, Li2/a;->d:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object p3

    new-instance v0, Lg1/m;

    invoke-direct {v0, p2, p0}, Lg1/m;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, p3, v0}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    iget-object p0, p0, Lcom/mega/engineeringmode/function/display/AudioFragment;->a:Lcom/mega/engineeringmode/databinding/AudioFragmentBinding;

    invoke-virtual {p0}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public final onDestroyView()V
    .locals 2

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    const-string v0, "AudioFragment"

    const-string/jumbo v1, "onDestroyView"

    invoke-static {v0, v1}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Li2/a;->b(Landroid/content/Context;)Li2/a;

    move-result-object v0

    iget-object v0, v0, Li2/a;->d:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/lifecycle/LiveData;->removeObservers(Landroidx/lifecycle/LifecycleOwner;)V

    return-void
.end method

.method public final onHiddenChanged(Z)V
    .locals 2

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onHiddenChanged(Z)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "onHiddenChanged "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AudioFragment"

    invoke-static {v0, p1}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/mega/engineeringmode/function/display/AudioFragment;->p(Z)V

    return-void
.end method

.method public final onStop()V
    .locals 2

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStop()V

    const-string v0, "AudioFragment"

    const-string/jumbo v1, "onStop"

    invoke-static {v0, v1}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/mega/engineeringmode/function/display/AudioFragment;->r()V

    return-void
.end method

.method public final p(Z)V
    .locals 2

    const-string v0, "AudioFragment"

    const-string/jumbo v1, "palyOrPause"

    invoke-static {v0, v1}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mega/engineeringmode/function/display/AudioFragment;->c:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/mega/engineeringmode/function/display/AudioFragment;->c:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Landroid/media/MediaPlayer;->pause()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/mega/engineeringmode/function/display/AudioFragment;->c:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Landroid/media/MediaPlayer;->pause()V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/mega/engineeringmode/function/display/AudioFragment;->c:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Landroid/media/MediaPlayer;->start()V

    :cond_2
    :goto_0
    return-void
.end method

.method public final q(I)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "playAudio "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AudioFragment"

    invoke-static {v1, v0}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Li2/a;->b(Landroid/content/Context;)Li2/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Li2/a;->a(I)Ln1/e;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object v0, p1, Ln1/e;->y:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_3

    :cond_0
    iget-object v0, p0, Lcom/mega/engineeringmode/function/display/AudioFragment;->a:Lcom/mega/engineeringmode/databinding/AudioFragmentBinding;

    iget-object v0, v0, Lcom/mega/engineeringmode/databinding/AudioFragmentBinding;->b1:Landroid/widget/TextView;

    iget-object v2, p1, Ln1/e;->x:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/mega/engineeringmode/function/display/DisplayActivity;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/mega/engineeringmode/function/display/DisplayActivity;

    iget-boolean v0, v0, Lcom/mega/engineeringmode/function/display/DisplayActivity;->l:Z

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    const-string/jumbo v3, "setControllerGrooup "

    invoke-static {v3, v0, v1}, La4/a;->n(Ljava/lang/String;ZLjava/lang/String;)V

    iget-object v1, p0, Lcom/mega/engineeringmode/function/display/AudioFragment;->a:Lcom/mega/engineeringmode/databinding/AudioFragmentBinding;

    iget-object v1, v1, Lcom/mega/engineeringmode/databinding/AudioFragmentBinding;->y:Landroidx/constraintlayout/widget/Group;

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    const/16 v2, 0x8

    :goto_1
    invoke-virtual {v1, v2}, Landroidx/constraintlayout/widget/Group;->setVisibility(I)V

    iget-object v0, p0, Lcom/mega/engineeringmode/function/display/AudioFragment;->c:Landroid/media/MediaPlayer;

    if-nez v0, :cond_3

    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/mega/engineeringmode/function/display/AudioFragment;->c:Landroid/media/MediaPlayer;

    :cond_3
    :try_start_0
    iget-object v0, p0, Lcom/mega/engineeringmode/function/display/AudioFragment;->c:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    iget-object v0, p0, Lcom/mega/engineeringmode/function/display/AudioFragment;->c:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/mega/engineeringmode/function/display/AudioFragment;->d:Lcom/mega/engineeringmode/function/display/AudioFragment$a;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    iget-object v0, p0, Lcom/mega/engineeringmode/function/display/AudioFragment;->c:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/mega/engineeringmode/function/display/AudioFragment;->e:Lcom/mega/engineeringmode/function/display/AudioFragment$b;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    iget-object v0, p0, Lcom/mega/engineeringmode/function/display/AudioFragment;->c:Landroid/media/MediaPlayer;

    iget-object p1, p1, Ln1/e;->y:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/mega/engineeringmode/function/display/AudioFragment;->c:Landroid/media/MediaPlayer;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setLooping(Z)V

    iget-object p1, p0, Lcom/mega/engineeringmode/function/display/AudioFragment;->c:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->prepare()V

    iget-object p0, p0, Lcom/mega/engineeringmode/function/display/AudioFragment;->c:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Landroid/media/MediaPlayer;->start()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_2
    return-void

    :cond_4
    :goto_3
    const-string/jumbo p0, "playAudio path err"

    invoke-static {v1, p0}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final r()V
    .locals 2

    const-string v0, "AudioFragment"

    const-string/jumbo v1, "stopAudio"

    invoke-static {v0, v1}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mega/engineeringmode/function/display/AudioFragment;->a:Lcom/mega/engineeringmode/databinding/AudioFragmentBinding;

    iget-object v0, v0, Lcom/mega/engineeringmode/databinding/AudioFragmentBinding;->y:Landroidx/constraintlayout/widget/Group;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/Group;->setVisibility(I)V

    iget-object v0, p0, Lcom/mega/engineeringmode/function/display/AudioFragment;->c:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mega/engineeringmode/function/display/AudioFragment;->c:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    :cond_0
    iget-object v0, p0, Lcom/mega/engineeringmode/function/display/AudioFragment;->c:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    iget-object v0, p0, Lcom/mega/engineeringmode/function/display/AudioFragment;->c:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mega/engineeringmode/function/display/AudioFragment;->c:Landroid/media/MediaPlayer;

    :cond_1
    return-void
.end method
