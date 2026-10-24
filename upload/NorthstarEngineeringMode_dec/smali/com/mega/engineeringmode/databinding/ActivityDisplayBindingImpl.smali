.class public Lcom/mega/engineeringmode/databinding/ActivityDisplayBindingImpl;
.super Lcom/mega/engineeringmode/databinding/ActivityDisplayBinding;
.source "SourceFile"

# interfaces
.implements Lh2/a$a;


# static fields
.field public static final h1:Landroid/util/SparseIntArray;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# instance fields
.field public final e1:Lh2/a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final f1:Lh2/a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public g1:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/mega/engineeringmode/databinding/ActivityDisplayBindingImpl;->h1:Landroid/util/SparseIntArray;

    const v1, 0x7f0a01dc

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0a0273

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0a01e9

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0a0222

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0a0395

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0a0274

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0a01ee

    const/16 v2, 0x9

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Landroidx/databinding/DataBindingComponent;)V
    .locals 15
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/databinding/DataBindingComponent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    move-object v10, p0

    sget-object v0, Lcom/mega/engineeringmode/databinding/ActivityDisplayBindingImpl;->h1:Landroid/util/SparseIntArray;

    const/16 v1, 0xa

    const/4 v11, 0x0

    move-object/from16 v12, p1

    move-object/from16 v2, p2

    invoke-static {v2, v12, v1, v11, v0}, Landroidx/databinding/ViewDataBinding;->mapBindings(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    const/4 v13, 0x1

    aget-object v1, v0, v13

    move-object v3, v1

    check-cast v3, Landroid/widget/Button;

    const/4 v1, 0x0

    aget-object v1, v0, v1

    move-object v4, v1

    check-cast v4, Landroid/widget/FrameLayout;

    const/4 v1, 0x3

    aget-object v1, v0, v1

    move-object v5, v1

    check-cast v5, Landroid/widget/TextView;

    const/4 v1, 0x5

    aget-object v1, v0, v1

    check-cast v1, Landroid/widget/LinearLayout;

    const/16 v1, 0x9

    aget-object v1, v0, v1

    check-cast v1, Landroid/widget/ImageView;

    const/4 v1, 0x6

    aget-object v1, v0, v1

    move-object v6, v1

    check-cast v6, Landroid/widget/LinearLayout;

    const/4 v1, 0x4

    aget-object v1, v0, v1

    move-object v7, v1

    check-cast v7, Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    aget-object v1, v0, v1

    check-cast v1, Landroid/widget/FrameLayout;

    const/4 v1, 0x7

    aget-object v1, v0, v1

    move-object v8, v1

    check-cast v8, Lcom/mega/engineeringmode/ui/MegaSwitch;

    const/4 v14, 0x2

    aget-object v0, v0, v14

    move-object v9, v0

    check-cast v9, Landroid/widget/Button;

    move-object v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    invoke-direct/range {v0 .. v9}, Lcom/mega/engineeringmode/databinding/ActivityDisplayBinding;-><init>(Ljava/lang/Object;Landroid/view/View;Landroid/widget/Button;Landroid/widget/FrameLayout;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Lcom/mega/engineeringmode/ui/MegaSwitch;Landroid/widget/Button;)V

    const-wide/16 v0, -0x1

    iput-wide v0, v10, Lcom/mega/engineeringmode/databinding/ActivityDisplayBindingImpl;->g1:J

    iget-object v0, v10, Lcom/mega/engineeringmode/databinding/ActivityDisplayBinding;->c:Landroid/widget/Button;

    invoke-virtual {v0, v11}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v0, v10, Lcom/mega/engineeringmode/databinding/ActivityDisplayBinding;->r:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v11}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v0, v10, Lcom/mega/engineeringmode/databinding/ActivityDisplayBinding;->c1:Landroid/widget/Button;

    invoke-virtual {v0, v11}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p1}, Landroidx/databinding/ViewDataBinding;->setRootTag(Landroid/view/View;)V

    new-instance v0, Lh2/a;

    invoke-direct {v0, p0, v14}, Lh2/a;-><init>(Lh2/a$a;I)V

    iput-object v0, v10, Lcom/mega/engineeringmode/databinding/ActivityDisplayBindingImpl;->e1:Lh2/a;

    new-instance v0, Lh2/a;

    invoke-direct {v0, p0, v13}, Lh2/a;-><init>(Lh2/a$a;I)V

    iput-object v0, v10, Lcom/mega/engineeringmode/databinding/ActivityDisplayBindingImpl;->f1:Lh2/a;

    invoke-virtual {p0}, Lcom/mega/engineeringmode/databinding/ActivityDisplayBindingImpl;->invalidateAll()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 4

    const/4 v0, 0x0

    const-string v1, "DisplayActivity"

    const/4 v2, 0x1

    if-eq p1, v2, :cond_1

    const/4 v3, 0x2

    if-eq p1, v3, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/mega/engineeringmode/databinding/ActivityDisplayBinding;->d1:Lcom/mega/engineeringmode/function/display/DisplayActivity;

    if-eqz p0, :cond_2

    const-string p1, "clickVideo"

    invoke-static {v1, p1}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/mega/engineeringmode/function/display/DisplayActivity;->k:Lcom/mega/engineeringmode/databinding/ActivityDisplayBinding;

    iget-object p1, p1, Lcom/mega/engineeringmode/databinding/ActivityDisplayBinding;->c:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Landroid/view/View;->setSelected(Z)V

    iget-object p1, p0, Lcom/mega/engineeringmode/function/display/DisplayActivity;->k:Lcom/mega/engineeringmode/databinding/ActivityDisplayBinding;

    iget-object p1, p1, Lcom/mega/engineeringmode/databinding/ActivityDisplayBinding;->c1:Landroid/widget/Button;

    invoke-virtual {p1, v2}, Landroid/view/View;->setSelected(Z)V

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    iget-object v0, p0, Lcom/mega/engineeringmode/function/display/DisplayActivity;->i:Lcom/mega/engineeringmode/function/display/AudioFragment;

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentTransaction;->hide(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    iget-object p0, p0, Lcom/mega/engineeringmode/function/display/DisplayActivity;->j:Lcom/mega/engineeringmode/function/display/VideoFragment;

    invoke-virtual {p1, p0}, Landroidx/fragment/app/FragmentTransaction;->show(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/mega/engineeringmode/databinding/ActivityDisplayBinding;->d1:Lcom/mega/engineeringmode/function/display/DisplayActivity;

    if-eqz p0, :cond_2

    const-string p1, "clickAudio"

    invoke-static {v1, p1}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/mega/engineeringmode/function/display/DisplayActivity;->k:Lcom/mega/engineeringmode/databinding/ActivityDisplayBinding;

    iget-object p1, p1, Lcom/mega/engineeringmode/databinding/ActivityDisplayBinding;->c:Landroid/widget/Button;

    invoke-virtual {p1, v2}, Landroid/view/View;->setSelected(Z)V

    iget-object p1, p0, Lcom/mega/engineeringmode/function/display/DisplayActivity;->k:Lcom/mega/engineeringmode/databinding/ActivityDisplayBinding;

    iget-object p1, p1, Lcom/mega/engineeringmode/databinding/ActivityDisplayBinding;->c1:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Landroid/view/View;->setSelected(Z)V

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    iget-object v0, p0, Lcom/mega/engineeringmode/function/display/DisplayActivity;->j:Lcom/mega/engineeringmode/function/display/VideoFragment;

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentTransaction;->hide(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    iget-object p0, p0, Lcom/mega/engineeringmode/function/display/DisplayActivity;->i:Lcom/mega/engineeringmode/function/display/AudioFragment;

    invoke-virtual {p1, p0}, Landroidx/fragment/app/FragmentTransaction;->show(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    :cond_2
    :goto_0
    return-void
.end method

.method public final b(Lcom/mega/engineeringmode/function/display/DisplayActivity;)V
    .locals 4
    .param p1    # Lcom/mega/engineeringmode/function/display/DisplayActivity;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/mega/engineeringmode/databinding/ActivityDisplayBinding;->d1:Lcom/mega/engineeringmode/function/display/DisplayActivity;

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/mega/engineeringmode/databinding/ActivityDisplayBindingImpl;->g1:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/mega/engineeringmode/databinding/ActivityDisplayBindingImpl;->g1:J

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0xa

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
    iget-wide v0, p0, Lcom/mega/engineeringmode/databinding/ActivityDisplayBindingImpl;->g1:J

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/mega/engineeringmode/databinding/ActivityDisplayBindingImpl;->g1:J

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v4, 0x2

    and-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mega/engineeringmode/databinding/ActivityDisplayBinding;->c:Landroid/widget/Button;

    iget-object v1, p0, Lcom/mega/engineeringmode/databinding/ActivityDisplayBindingImpl;->f1:Lh2/a;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/mega/engineeringmode/databinding/ActivityDisplayBinding;->c1:Landroid/widget/Button;

    iget-object p0, p0, Lcom/mega/engineeringmode/databinding/ActivityDisplayBindingImpl;->e1:Lh2/a;

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
    iget-wide v0, p0, Lcom/mega/engineeringmode/databinding/ActivityDisplayBindingImpl;->g1:J

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
    iput-wide v0, p0, Lcom/mega/engineeringmode/databinding/ActivityDisplayBindingImpl;->g1:J

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

    const/16 v0, 0xa

    if-ne v0, p1, :cond_0

    check-cast p2, Lcom/mega/engineeringmode/function/display/DisplayActivity;

    invoke-virtual {p0, p2}, Lcom/mega/engineeringmode/databinding/ActivityDisplayBindingImpl;->b(Lcom/mega/engineeringmode/function/display/DisplayActivity;)V

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
