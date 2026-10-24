.class public Lcom/mega/engineeringmode/databinding/AudioFragmentBindingImpl;
.super Lcom/mega/engineeringmode/databinding/AudioFragmentBinding;
.source "SourceFile"

# interfaces
.implements Lh2/a$a;


# static fields
.field public static final j1:Landroid/util/SparseIntArray;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# instance fields
.field public final f1:Lh2/a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final g1:Lh2/a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final h1:Lh2/a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public i1:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/mega/engineeringmode/databinding/AudioFragmentBindingImpl;->j1:Landroid/util/SparseIntArray;

    const v1, 0x7f0a0170

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0a0226

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0a0068

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0a02dc

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0a02da

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Landroidx/databinding/DataBindingComponent;)V
    .locals 17
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/databinding/DataBindingComponent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    move-object/from16 v11, p0

    sget-object v0, Lcom/mega/engineeringmode/databinding/AudioFragmentBindingImpl;->j1:Landroid/util/SparseIntArray;

    const/16 v1, 0x9

    const/4 v12, 0x0

    move-object/from16 v13, p1

    move-object/from16 v2, p2

    invoke-static {v2, v13, v1, v12, v0}, Landroidx/databinding/ViewDataBinding;->mapBindings(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v14

    const/4 v0, 0x6

    aget-object v0, v14, v0

    move-object v3, v0

    check-cast v3, Landroidx/recyclerview/widget/RecyclerView;

    const/4 v0, 0x4

    aget-object v0, v14, v0

    move-object v4, v0

    check-cast v4, Landroid/widget/TextView;

    const/4 v0, 0x5

    aget-object v0, v14, v0

    move-object v5, v0

    check-cast v5, Landroid/widget/TextView;

    const/16 v0, 0x8

    aget-object v0, v14, v0

    move-object v6, v0

    check-cast v6, Landroidx/constraintlayout/widget/Group;

    const/4 v15, 0x3

    aget-object v0, v14, v15

    move-object v7, v0

    check-cast v7, Landroid/widget/Button;

    const/4 v0, 0x7

    aget-object v0, v14, v0

    move-object v8, v0

    check-cast v8, Landroid/widget/TextView;

    const/4 v10, 0x1

    aget-object v0, v14, v10

    move-object v9, v0

    check-cast v9, Landroid/widget/Button;

    const/4 v1, 0x2

    aget-object v0, v14, v1

    move-object/from16 v16, v0

    check-cast v16, Landroid/widget/Button;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    move-object/from16 v10, v16

    invoke-direct/range {v0 .. v10}, Lcom/mega/engineeringmode/databinding/AudioFragmentBinding;-><init>(Ljava/lang/Object;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroid/widget/TextView;Landroid/widget/TextView;Landroidx/constraintlayout/widget/Group;Landroid/widget/Button;Landroid/widget/TextView;Landroid/widget/Button;Landroid/widget/Button;)V

    const-wide/16 v0, -0x1

    iput-wide v0, v11, Lcom/mega/engineeringmode/databinding/AudioFragmentBindingImpl;->i1:J

    const/4 v0, 0x0

    aget-object v0, v14, v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v12}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v0, v11, Lcom/mega/engineeringmode/databinding/AudioFragmentBinding;->Z:Landroid/widget/Button;

    invoke-virtual {v0, v12}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v0, v11, Lcom/mega/engineeringmode/databinding/AudioFragmentBinding;->c1:Landroid/widget/Button;

    invoke-virtual {v0, v12}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v0, v11, Lcom/mega/engineeringmode/databinding/AudioFragmentBinding;->d1:Landroid/widget/Button;

    invoke-virtual {v0, v12}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p1}, Landroidx/databinding/ViewDataBinding;->setRootTag(Landroid/view/View;)V

    new-instance v0, Lh2/a;

    invoke-direct {v0, v11, v15}, Lh2/a;-><init>(Lh2/a$a;I)V

    iput-object v0, v11, Lcom/mega/engineeringmode/databinding/AudioFragmentBindingImpl;->f1:Lh2/a;

    new-instance v0, Lh2/a;

    const/4 v1, 0x1

    invoke-direct {v0, v11, v1}, Lh2/a;-><init>(Lh2/a$a;I)V

    iput-object v0, v11, Lcom/mega/engineeringmode/databinding/AudioFragmentBindingImpl;->g1:Lh2/a;

    new-instance v0, Lh2/a;

    const/4 v1, 0x2

    invoke-direct {v0, v11, v1}, Lh2/a;-><init>(Lh2/a$a;I)V

    iput-object v0, v11, Lcom/mega/engineeringmode/databinding/AudioFragmentBindingImpl;->h1:Lh2/a;

    invoke-virtual/range {p0 .. p0}, Lcom/mega/engineeringmode/databinding/AudioFragmentBindingImpl;->invalidateAll()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 3

    const-string v0, "AudioFragment"

    const/4 v1, 0x1

    if-eq p1, v1, :cond_3

    const/4 v2, 0x2

    if-eq p1, v2, :cond_2

    const/4 v2, 0x3

    if-eq p1, v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/mega/engineeringmode/databinding/AudioFragmentBinding;->e1:Lcom/mega/engineeringmode/function/display/AudioFragment;

    if-eqz p0, :cond_5

    iget-object p1, p0, Lcom/mega/engineeringmode/function/display/AudioFragment;->b:Lcom/mega/engineeringmode/function/display/MediaAdapter;

    iget p1, p1, Lcom/mega/engineeringmode/function/display/MediaAdapter;->c:I

    if-nez p1, :cond_1

    const-string/jumbo p0, "reach the start"

    invoke-static {v0, p0}, Lmega/log/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string/jumbo p1, "playLast"

    invoke-static {v0, p1}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/mega/engineeringmode/function/display/AudioFragment;->b:Lcom/mega/engineeringmode/function/display/MediaAdapter;

    iget v0, p1, Lcom/mega/engineeringmode/function/display/MediaAdapter;->c:I

    sub-int/2addr v0, v1

    iput v0, p1, Lcom/mega/engineeringmode/function/display/MediaAdapter;->c:I

    invoke-virtual {p0, v0}, Lcom/mega/engineeringmode/function/display/AudioFragment;->q(I)V

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/mega/engineeringmode/databinding/AudioFragmentBinding;->e1:Lcom/mega/engineeringmode/function/display/AudioFragment;

    if-eqz p0, :cond_5

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/mega/engineeringmode/function/display/AudioFragment;->p(Z)V

    goto :goto_0

    :cond_3
    iget-object p0, p0, Lcom/mega/engineeringmode/databinding/AudioFragmentBinding;->e1:Lcom/mega/engineeringmode/function/display/AudioFragment;

    if-eqz p0, :cond_5

    const-string/jumbo p1, "playNext"

    invoke-static {v0, p1}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/mega/engineeringmode/function/display/AudioFragment;->b:Lcom/mega/engineeringmode/function/display/MediaAdapter;

    iget v2, p1, Lcom/mega/engineeringmode/function/display/MediaAdapter;->c:I

    invoke-virtual {p1}, Lcom/mega/engineeringmode/function/display/MediaAdapter;->getItemCount()I

    move-result p1

    sub-int/2addr p1, v1

    if-ne v2, p1, :cond_4

    const-string/jumbo p0, "reach the end"

    invoke-static {v0, p0}, Lmega/log/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    add-int/2addr v2, v1

    iget-object p1, p0, Lcom/mega/engineeringmode/function/display/AudioFragment;->b:Lcom/mega/engineeringmode/function/display/MediaAdapter;

    iput v2, p1, Lcom/mega/engineeringmode/function/display/MediaAdapter;->c:I

    invoke-virtual {p0, v2}, Lcom/mega/engineeringmode/function/display/AudioFragment;->q(I)V

    :cond_5
    :goto_0
    return-void
.end method

.method public final b(Lcom/mega/engineeringmode/function/display/AudioFragment;)V
    .locals 4
    .param p1    # Lcom/mega/engineeringmode/function/display/AudioFragment;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/mega/engineeringmode/databinding/AudioFragmentBinding;->e1:Lcom/mega/engineeringmode/function/display/AudioFragment;

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/mega/engineeringmode/databinding/AudioFragmentBindingImpl;->i1:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/mega/engineeringmode/databinding/AudioFragmentBindingImpl;->i1:J

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Landroidx/databinding/BaseObservable;->notifyPropertyChanged(I)V

    invoke-super {p0}, Landroidx/databinding/ViewDataBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final executeBindings()V
    .locals 6

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/mega/engineeringmode/databinding/AudioFragmentBindingImpl;->i1:J

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/mega/engineeringmode/databinding/AudioFragmentBindingImpl;->i1:J

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v4, 0x2

    and-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mega/engineeringmode/databinding/AudioFragmentBinding;->Z:Landroid/widget/Button;

    iget-object v1, p0, Lcom/mega/engineeringmode/databinding/AudioFragmentBindingImpl;->f1:Lh2/a;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/mega/engineeringmode/databinding/AudioFragmentBinding;->c1:Landroid/widget/Button;

    iget-object v1, p0, Lcom/mega/engineeringmode/databinding/AudioFragmentBindingImpl;->g1:Lh2/a;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/mega/engineeringmode/databinding/AudioFragmentBinding;->d1:Landroid/widget/Button;

    iget-object p0, p0, Lcom/mega/engineeringmode/databinding/AudioFragmentBindingImpl;->h1:Lh2/a;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final hasPendingBindings()Z
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/mega/engineeringmode/databinding/AudioFragmentBindingImpl;->i1:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    monitor-exit p0

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    monitor-exit p0

    const/4 p0, 0x0

    return p0

    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final invalidateAll()V
    .locals 2

    monitor-enter p0

    const-wide/16 v0, 0x2

    :try_start_0
    iput-wide v0, p0, Lcom/mega/engineeringmode/databinding/AudioFragmentBindingImpl;->i1:J

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Landroidx/databinding/ViewDataBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final onFieldChange(ILjava/lang/Object;I)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final setVariable(ILjava/lang/Object;)Z
    .locals 1
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x2

    if-ne v0, p1, :cond_0

    check-cast p2, Lcom/mega/engineeringmode/function/display/AudioFragment;

    invoke-virtual {p0, p2}, Lcom/mega/engineeringmode/databinding/AudioFragmentBindingImpl;->b(Lcom/mega/engineeringmode/function/display/AudioFragment;)V

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
