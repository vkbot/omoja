.class public Lcom/mega/engineeringmode/databinding/ActivityIhuStatusBindingImpl;
.super Lcom/mega/engineeringmode/databinding/ActivityIhuStatusBinding;
.source "SourceFile"


# static fields
.field public static final m1:Landroid/util/SparseIntArray;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# instance fields
.field public l1:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/mega/engineeringmode/databinding/ActivityIhuStatusBindingImpl;->m1:Landroid/util/SparseIntArray;

    const v1, 0x7f0a0148

    const/16 v2, 0xf

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0a03aa

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0a014c

    const/16 v2, 0x11

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0a020c

    const/16 v2, 0x12

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0a038b

    const/16 v2, 0x13

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0a02cd

    const/16 v2, 0x14

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0a03ce

    const/16 v2, 0x15

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0a014a

    const/16 v2, 0x16

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0a014e

    const/16 v2, 0x17

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0a01ad

    const/16 v2, 0x18

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0a035d

    const/16 v2, 0x19

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0a019e

    const/16 v2, 0x1a

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0a0346

    const/16 v2, 0x1b

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0a0168

    const/16 v2, 0x1c

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Landroidx/databinding/DataBindingComponent;)V
    .locals 18
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/databinding/DataBindingComponent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    move-object/from16 v2, p0

    sget-object v0, Lcom/mega/engineeringmode/databinding/ActivityIhuStatusBindingImpl;->m1:Landroid/util/SparseIntArray;

    const/16 v1, 0x1d

    const/4 v15, 0x0

    move-object/from16 v14, p1

    move-object/from16 v13, p2

    invoke-static {v13, v14, v1, v15, v0}, Landroidx/databinding/ViewDataBinding;->mapBindings(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v17

    const/4 v0, 0x4

    aget-object v0, v17, v0

    move-object v3, v0

    check-cast v3, Landroid/widget/TextView;

    const/4 v0, 0x2

    aget-object v0, v17, v0

    move-object v4, v0

    check-cast v4, Landroid/widget/TextView;

    const/16 v0, 0xc

    aget-object v0, v17, v0

    move-object v5, v0

    check-cast v5, Landroid/widget/TextView;

    const/16 v0, 0xf

    aget-object v0, v17, v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v0, 0x1

    aget-object v0, v17, v0

    move-object v6, v0

    check-cast v6, Landroid/widget/TextView;

    const/16 v0, 0x16

    aget-object v0, v17, v0

    check-cast v0, Landroid/widget/TextView;

    const/16 v0, 0x8

    aget-object v0, v17, v0

    move-object v7, v0

    check-cast v7, Landroid/widget/TextView;

    const/16 v0, 0x11

    aget-object v0, v17, v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v0, 0x3

    aget-object v0, v17, v0

    move-object v8, v0

    check-cast v8, Landroid/widget/TextView;

    const/16 v0, 0x17

    aget-object v0, v17, v0

    check-cast v0, Landroid/widget/TextView;

    const/16 v0, 0x9

    aget-object v0, v17, v0

    move-object v9, v0

    check-cast v9, Landroid/widget/TextView;

    const/16 v0, 0xe

    aget-object v0, v17, v0

    move-object v10, v0

    check-cast v10, Landroid/widget/TextView;

    const/16 v0, 0x1c

    aget-object v0, v17, v0

    check-cast v0, Landroid/widget/TextView;

    const/16 v0, 0x1a

    aget-object v0, v17, v0

    check-cast v0, Landroid/widget/TextView;

    const/16 v0, 0x18

    aget-object v0, v17, v0

    check-cast v0, Landroid/widget/TextView;

    const/16 v0, 0xa

    aget-object v0, v17, v0

    move-object v11, v0

    check-cast v11, Landroid/widget/TextView;

    const/16 v0, 0x12

    aget-object v0, v17, v0

    check-cast v0, Landroid/widget/TextView;

    const/16 v0, 0x14

    aget-object v0, v17, v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v0, 0x6

    aget-object v0, v17, v0

    move-object v12, v0

    check-cast v12, Landroid/widget/TextView;

    const/16 v0, 0x1b

    aget-object v0, v17, v0

    check-cast v0, Landroid/widget/TextView;

    const/16 v0, 0xd

    aget-object v0, v17, v0

    check-cast v0, Landroid/widget/TextView;

    move-object v13, v0

    const/16 v0, 0x19

    aget-object v0, v17, v0

    check-cast v0, Landroid/widget/TextView;

    const/16 v0, 0xb

    aget-object v0, v17, v0

    check-cast v0, Landroid/widget/TextView;

    move-object v14, v0

    const/16 v0, 0x13

    aget-object v0, v17, v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v0, 0x5

    aget-object v0, v17, v0

    check-cast v0, Landroid/widget/TextView;

    move-object v1, v15

    move-object v15, v0

    const/16 v0, 0x10

    aget-object v0, v17, v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v0, 0x7

    aget-object v0, v17, v0

    move-object/from16 v16, v0

    check-cast v16, Landroid/widget/TextView;

    const/16 v0, 0x15

    aget-object v0, v17, v0

    check-cast v0, Landroid/widget/TextView;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    invoke-direct/range {v0 .. v16}, Lcom/mega/engineeringmode/databinding/ActivityIhuStatusBinding;-><init>(Ljava/lang/Object;Landroid/view/View;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    const-wide/16 v0, -0x1

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/mega/engineeringmode/databinding/ActivityIhuStatusBindingImpl;->l1:J

    iget-object v0, v2, Lcom/mega/engineeringmode/databinding/ActivityIhuStatusBinding;->c:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v0, v2, Lcom/mega/engineeringmode/databinding/ActivityIhuStatusBinding;->r:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v0, v2, Lcom/mega/engineeringmode/databinding/ActivityIhuStatusBinding;->x:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v0, v2, Lcom/mega/engineeringmode/databinding/ActivityIhuStatusBinding;->y:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v0, v2, Lcom/mega/engineeringmode/databinding/ActivityIhuStatusBinding;->Z:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v0, v2, Lcom/mega/engineeringmode/databinding/ActivityIhuStatusBinding;->b1:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v0, v2, Lcom/mega/engineeringmode/databinding/ActivityIhuStatusBinding;->c1:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v0, v2, Lcom/mega/engineeringmode/databinding/ActivityIhuStatusBinding;->d1:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v0, v2, Lcom/mega/engineeringmode/databinding/ActivityIhuStatusBinding;->e1:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x0

    aget-object v0, v17, v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v0, v2, Lcom/mega/engineeringmode/databinding/ActivityIhuStatusBinding;->f1:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v0, v2, Lcom/mega/engineeringmode/databinding/ActivityIhuStatusBinding;->g1:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v0, v2, Lcom/mega/engineeringmode/databinding/ActivityIhuStatusBinding;->h1:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v0, v2, Lcom/mega/engineeringmode/databinding/ActivityIhuStatusBinding;->i1:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v0, v2, Lcom/mega/engineeringmode/databinding/ActivityIhuStatusBinding;->j1:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p1}, Landroidx/databinding/ViewDataBinding;->setRootTag(Landroid/view/View;)V

    invoke-virtual/range {p0 .. p0}, Lcom/mega/engineeringmode/databinding/ActivityIhuStatusBindingImpl;->invalidateAll()V

    return-void
.end method


# virtual methods
.method public final b(Lcom/mega/engineeringmode/function/screen/ScreenStatus;)V
    .locals 4
    .param p1    # Lcom/mega/engineeringmode/function/screen/ScreenStatus;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Landroidx/databinding/ViewDataBinding;->updateRegistration(ILandroidx/databinding/Observable;)Z

    iput-object p1, p0, Lcom/mega/engineeringmode/databinding/ActivityIhuStatusBinding;->k1:Lcom/mega/engineeringmode/function/screen/ScreenStatus;

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/mega/engineeringmode/databinding/ActivityIhuStatusBindingImpl;->l1:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/mega/engineeringmode/databinding/ActivityIhuStatusBindingImpl;->l1:J

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x11

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
    .locals 15

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/mega/engineeringmode/databinding/ActivityIhuStatusBindingImpl;->l1:J

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/mega/engineeringmode/databinding/ActivityIhuStatusBindingImpl;->l1:J

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v4, p0, Lcom/mega/engineeringmode/databinding/ActivityIhuStatusBinding;->k1:Lcom/mega/engineeringmode/function/screen/ScreenStatus;

    const-wide/16 v5, 0x3

    and-long/2addr v0, v5

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    if-eqz v4, :cond_0

    iget-object v1, v4, Lcom/mega/engineeringmode/function/screen/ScreenStatus;->backlightTmp:Ljava/lang/String;

    iget-object v2, v4, Lcom/mega/engineeringmode/function/screen/ScreenStatus;->touchVersion:Ljava/lang/String;

    iget-object v3, v4, Lcom/mega/engineeringmode/function/screen/ScreenStatus;->type:Ljava/lang/String;

    iget-object v5, v4, Lcom/mega/engineeringmode/function/screen/ScreenStatus;->hardwareVersion:Ljava/lang/String;

    iget-object v6, v4, Lcom/mega/engineeringmode/function/screen/ScreenStatus;->fuctionStatus:Ljava/lang/String;

    iget-object v7, v4, Lcom/mega/engineeringmode/function/screen/ScreenStatus;->dver:Ljava/lang/String;

    iget-object v8, v4, Lcom/mega/engineeringmode/function/screen/ScreenStatus;->mode:Ljava/lang/String;

    iget-object v9, v4, Lcom/mega/engineeringmode/function/screen/ScreenStatus;->softwareVersion:Ljava/lang/String;

    iget-object v10, v4, Lcom/mega/engineeringmode/function/screen/ScreenStatus;->backlightSwitch:Ljava/lang/String;

    iget-object v11, v4, Lcom/mega/engineeringmode/function/screen/ScreenStatus;->serialNum:Ljava/lang/String;

    iget-object v12, v4, Lcom/mega/engineeringmode/function/screen/ScreenStatus;->status:Ljava/lang/String;

    iget-object v13, v4, Lcom/mega/engineeringmode/function/screen/ScreenStatus;->supplierInfo:Ljava/lang/String;

    iget-object v14, v4, Lcom/mega/engineeringmode/function/screen/ScreenStatus;->partNum:Ljava/lang/String;

    iget-object v4, v4, Lcom/mega/engineeringmode/function/screen/ScreenStatus;->size:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    move-object v2, v1

    move-object v3, v2

    move-object v4, v3

    move-object v5, v4

    move-object v6, v5

    move-object v7, v6

    move-object v8, v7

    move-object v9, v8

    move-object v10, v9

    move-object v11, v10

    move-object v12, v11

    move-object v13, v12

    move-object v14, v13

    :goto_0
    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mega/engineeringmode/databinding/ActivityIhuStatusBinding;->c:Landroid/widget/TextView;

    invoke-static {v0, v10}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/mega/engineeringmode/databinding/ActivityIhuStatusBinding;->r:Landroid/widget/TextView;

    invoke-static {v0, v1}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/mega/engineeringmode/databinding/ActivityIhuStatusBinding;->x:Landroid/widget/TextView;

    invoke-static {v0, v6}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/mega/engineeringmode/databinding/ActivityIhuStatusBinding;->y:Landroid/widget/TextView;

    invoke-static {v0, v8}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/mega/engineeringmode/databinding/ActivityIhuStatusBinding;->Z:Landroid/widget/TextView;

    invoke-static {v0, v4}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/mega/engineeringmode/databinding/ActivityIhuStatusBinding;->b1:Landroid/widget/TextView;

    invoke-static {v0, v12}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/mega/engineeringmode/databinding/ActivityIhuStatusBinding;->c1:Landroid/widget/TextView;

    invoke-static {v0, v3}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/mega/engineeringmode/databinding/ActivityIhuStatusBinding;->d1:Landroid/widget/TextView;

    invoke-static {v0, v7}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/mega/engineeringmode/databinding/ActivityIhuStatusBinding;->e1:Landroid/widget/TextView;

    invoke-static {v0, v5}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/mega/engineeringmode/databinding/ActivityIhuStatusBinding;->f1:Landroid/widget/TextView;

    invoke-static {v0, v14}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/mega/engineeringmode/databinding/ActivityIhuStatusBinding;->g1:Landroid/widget/TextView;

    invoke-static {v0, v11}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/mega/engineeringmode/databinding/ActivityIhuStatusBinding;->h1:Landroid/widget/TextView;

    invoke-static {v0, v9}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/mega/engineeringmode/databinding/ActivityIhuStatusBinding;->i1:Landroid/widget/TextView;

    invoke-static {v0, v13}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/mega/engineeringmode/databinding/ActivityIhuStatusBinding;->j1:Landroid/widget/TextView;

    invoke-static {p0, v2}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_1
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
    iget-wide v0, p0, Lcom/mega/engineeringmode/databinding/ActivityIhuStatusBindingImpl;->l1:J

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
    iput-wide v0, p0, Lcom/mega/engineeringmode/databinding/ActivityIhuStatusBindingImpl;->l1:J

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
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    return v0

    :cond_0
    check-cast p2, Lcom/mega/engineeringmode/function/screen/ScreenStatus;

    if-nez p3, :cond_1

    monitor-enter p0

    :try_start_0
    iget-wide p1, p0, Lcom/mega/engineeringmode/databinding/ActivityIhuStatusBindingImpl;->l1:J

    const-wide/16 v0, 0x1

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/mega/engineeringmode/databinding/ActivityIhuStatusBindingImpl;->l1:J

    monitor-exit p0

    const/4 v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_0
    return v0
.end method

.method public final setVariable(ILjava/lang/Object;)Z
    .locals 1
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/16 v0, 0x11

    if-ne v0, p1, :cond_0

    check-cast p2, Lcom/mega/engineeringmode/function/screen/ScreenStatus;

    invoke-virtual {p0, p2}, Lcom/mega/engineeringmode/databinding/ActivityIhuStatusBindingImpl;->b(Lcom/mega/engineeringmode/function/screen/ScreenStatus;)V

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
