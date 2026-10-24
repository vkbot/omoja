.class public Lcom/mega/engineeringmode/databinding/ActivityConnectorStatusBindingImpl;
.super Lcom/mega/engineeringmode/databinding/ActivityConnectorStatusBinding;
.source "SourceFile"


# static fields
.field public static final l1:Landroid/util/SparseIntArray;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# instance fields
.field public k1:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/mega/engineeringmode/databinding/ActivityConnectorStatusBindingImpl;->l1:Landroid/util/SparseIntArray;

    const v1, 0x7f0a012d

    const/16 v2, 0xd

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0a0324

    const/16 v2, 0xe

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0a01d3

    const/16 v2, 0xf

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0a01c9

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0a006e

    const/16 v2, 0x11

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0a03a6

    const/16 v2, 0x12

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0a006f

    const/16 v2, 0x13

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0a02ff

    const/16 v2, 0x14

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0a0070

    const/16 v2, 0x15

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0a0071

    const/16 v2, 0x16

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0a043c

    const/16 v2, 0x17

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0a005b

    const/16 v2, 0x18

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0a0155

    const/16 v2, 0x19

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0a0224

    const/16 v2, 0x1a

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0a03c2

    const/16 v2, 0x1b

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0a03c3

    const/16 v2, 0x1c

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Landroidx/databinding/DataBindingComponent;)V
    .locals 20
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/databinding/DataBindingComponent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    move-object/from16 v15, p0

    sget-object v0, Lcom/mega/engineeringmode/databinding/ActivityConnectorStatusBindingImpl;->l1:Landroid/util/SparseIntArray;

    const/16 v1, 0x1d

    const/4 v14, 0x0

    move-object/from16 v13, p1

    move-object/from16 v2, p2

    invoke-static {v2, v13, v1, v14, v0}, Landroidx/databinding/ViewDataBinding;->mapBindings(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v16

    const/16 v0, 0x18

    aget-object v0, v16, v0

    check-cast v0, Landroid/widget/TextView;

    const/16 v0, 0xb

    aget-object v0, v16, v0

    move-object v3, v0

    check-cast v3, Landroid/widget/TextView;

    const/16 v0, 0x11

    aget-object v0, v16, v0

    check-cast v0, Landroid/widget/TextView;

    const/16 v0, 0x13

    aget-object v0, v16, v0

    check-cast v0, Landroid/widget/TextView;

    const/16 v0, 0x15

    aget-object v0, v16, v0

    check-cast v0, Landroid/widget/TextView;

    const/16 v0, 0x16

    aget-object v0, v16, v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v0, 0x4

    aget-object v0, v16, v0

    move-object v4, v0

    check-cast v4, Landroid/widget/TextView;

    const/4 v0, 0x6

    aget-object v0, v16, v0

    move-object v5, v0

    check-cast v5, Landroid/widget/TextView;

    const/16 v0, 0x8

    aget-object v0, v16, v0

    move-object v6, v0

    check-cast v6, Landroid/widget/TextView;

    const/16 v0, 0x9

    aget-object v0, v16, v0

    move-object v7, v0

    check-cast v7, Landroid/widget/TextView;

    const/16 v0, 0xd

    aget-object v0, v16, v0

    move-object v8, v0

    check-cast v8, Landroid/widget/Button;

    const/16 v0, 0x19

    aget-object v0, v16, v0

    check-cast v0, Landroid/widget/TextView;

    const/16 v0, 0xc

    aget-object v0, v16, v0

    move-object v9, v0

    check-cast v9, Landroid/widget/TextView;

    const/16 v0, 0x10

    aget-object v0, v16, v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v0, 0x3

    aget-object v0, v16, v0

    move-object v10, v0

    check-cast v10, Landroid/widget/TextView;

    const/16 v0, 0xf

    aget-object v0, v16, v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v0, 0x2

    aget-object v0, v16, v0

    move-object v11, v0

    check-cast v11, Landroid/widget/TextView;

    const/16 v0, 0x1a

    aget-object v0, v16, v0

    check-cast v0, Landroid/widget/LinearLayout;

    const/16 v0, 0x14

    aget-object v0, v16, v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v0, 0x7

    aget-object v0, v16, v0

    move-object v12, v0

    check-cast v12, Landroid/widget/TextView;

    const/16 v0, 0xe

    aget-object v0, v16, v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v0, 0x1

    aget-object v0, v16, v0

    move-object/from16 v17, v0

    check-cast v17, Landroid/widget/TextView;

    const/16 v0, 0x12

    aget-object v0, v16, v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v0, 0x5

    aget-object v0, v16, v0

    move-object/from16 v18, v0

    check-cast v18, Landroid/widget/TextView;

    const/16 v0, 0x1b

    aget-object v0, v16, v0

    check-cast v0, Landroid/widget/TextView;

    const/16 v0, 0x1c

    aget-object v0, v16, v0

    check-cast v0, Landroid/widget/TextView;

    const/16 v0, 0x17

    aget-object v0, v16, v0

    check-cast v0, Landroid/widget/TextView;

    const/16 v0, 0xa

    aget-object v0, v16, v0

    move-object/from16 v19, v0

    check-cast v19, Landroid/widget/TextView;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    move-object/from16 v13, v17

    move-object/from16 v14, v18

    move-object/from16 v15, v19

    invoke-direct/range {v0 .. v15}, Lcom/mega/engineeringmode/databinding/ActivityConnectorStatusBinding;-><init>(Ljava/lang/Object;Landroid/view/View;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/Button;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    const-wide/16 v0, -0x1

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/mega/engineeringmode/databinding/ActivityConnectorStatusBindingImpl;->k1:J

    iget-object v0, v2, Lcom/mega/engineeringmode/databinding/ActivityConnectorStatusBinding;->c:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v0, v2, Lcom/mega/engineeringmode/databinding/ActivityConnectorStatusBinding;->r:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v0, v2, Lcom/mega/engineeringmode/databinding/ActivityConnectorStatusBinding;->x:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v0, v2, Lcom/mega/engineeringmode/databinding/ActivityConnectorStatusBinding;->y:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v0, v2, Lcom/mega/engineeringmode/databinding/ActivityConnectorStatusBinding;->Z:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v0, v2, Lcom/mega/engineeringmode/databinding/ActivityConnectorStatusBinding;->c1:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v0, v2, Lcom/mega/engineeringmode/databinding/ActivityConnectorStatusBinding;->d1:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v0, v2, Lcom/mega/engineeringmode/databinding/ActivityConnectorStatusBinding;->e1:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x0

    aget-object v0, v16, v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v0, v2, Lcom/mega/engineeringmode/databinding/ActivityConnectorStatusBinding;->f1:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v0, v2, Lcom/mega/engineeringmode/databinding/ActivityConnectorStatusBinding;->g1:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v0, v2, Lcom/mega/engineeringmode/databinding/ActivityConnectorStatusBinding;->h1:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v0, v2, Lcom/mega/engineeringmode/databinding/ActivityConnectorStatusBinding;->i1:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p1}, Landroidx/databinding/ViewDataBinding;->setRootTag(Landroid/view/View;)V

    invoke-virtual/range {p0 .. p0}, Lcom/mega/engineeringmode/databinding/ActivityConnectorStatusBindingImpl;->invalidateAll()V

    return-void
.end method


# virtual methods
.method public final b(Lcom/mega/engineeringmode/function/connector/ConnectorStatus;)V
    .locals 4
    .param p1    # Lcom/mega/engineeringmode/function/connector/ConnectorStatus;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Landroidx/databinding/ViewDataBinding;->updateRegistration(ILandroidx/databinding/Observable;)Z

    iput-object p1, p0, Lcom/mega/engineeringmode/databinding/ActivityConnectorStatusBinding;->j1:Lcom/mega/engineeringmode/function/connector/ConnectorStatus;

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/mega/engineeringmode/databinding/ActivityConnectorStatusBindingImpl;->k1:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/mega/engineeringmode/databinding/ActivityConnectorStatusBindingImpl;->k1:J

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x17

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
    .locals 46

    move-object/from16 v1, p0

    monitor-enter p0

    :try_start_0
    iget-wide v2, v1, Lcom/mega/engineeringmode/databinding/ActivityConnectorStatusBindingImpl;->k1:J

    const-wide/16 v4, 0x0

    iput-wide v4, v1, Lcom/mega/engineeringmode/databinding/ActivityConnectorStatusBindingImpl;->k1:J

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, v1, Lcom/mega/engineeringmode/databinding/ActivityConnectorStatusBinding;->j1:Lcom/mega/engineeringmode/function/connector/ConnectorStatus;

    const-wide/16 v6, 0x3fff

    and-long/2addr v6, v2

    cmp-long v6, v6, v4

    const-wide/16 v13, 0x2081

    const-wide/16 v15, 0x2005

    const-wide/16 v17, 0x2041

    const-wide/16 v19, 0x2011

    const-wide/16 v21, 0x2201

    const-wide/16 v23, 0x2101

    const-wide/16 v25, 0x2021

    const-wide/16 v27, 0x2009

    const-wide/16 v29, 0x2401

    const/16 v31, 0x0

    if-eqz v6, :cond_c

    and-long v32, v2, v29

    cmp-long v6, v32, v4

    if-eqz v6, :cond_0

    if-eqz v0, :cond_0

    iget-object v6, v0, Lcom/mega/engineeringmode/function/connector/ConnectorStatus;->g1:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object/from16 v6, v31

    :goto_0
    and-long v32, v2, v27

    cmp-long v32, v32, v4

    if-eqz v32, :cond_1

    if-eqz v0, :cond_1

    iget-object v7, v0, Lcom/mega/engineeringmode/function/connector/ConnectorStatus;->c1:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object/from16 v7, v31

    :goto_1
    and-long v34, v2, v25

    cmp-long v8, v34, v4

    if-eqz v8, :cond_2

    if-eqz v0, :cond_2

    iget-object v8, v0, Lcom/mega/engineeringmode/function/connector/ConnectorStatus;->e1:Ljava/lang/String;

    goto :goto_2

    :cond_2
    move-object/from16 v8, v31

    :goto_2
    and-long v34, v2, v23

    cmp-long v34, v34, v4

    if-eqz v34, :cond_3

    if-eqz v0, :cond_3

    iget-object v9, v0, Lcom/mega/engineeringmode/function/connector/ConnectorStatus;->y:Ljava/lang/String;

    goto :goto_3

    :cond_3
    move-object/from16 v9, v31

    :goto_3
    and-long v36, v2, v21

    cmp-long v10, v36, v4

    if-eqz v10, :cond_4

    if-eqz v0, :cond_4

    iget-object v10, v0, Lcom/mega/engineeringmode/function/connector/ConnectorStatus;->Z:Ljava/lang/String;

    goto :goto_4

    :cond_4
    move-object/from16 v10, v31

    :goto_4
    and-long v36, v2, v19

    cmp-long v36, v36, v4

    if-eqz v36, :cond_5

    if-eqz v0, :cond_5

    iget-object v11, v0, Lcom/mega/engineeringmode/function/connector/ConnectorStatus;->r:Ljava/lang/String;

    goto :goto_5

    :cond_5
    move-object/from16 v11, v31

    :goto_5
    and-long v38, v2, v17

    cmp-long v12, v38, v4

    if-eqz v12, :cond_6

    if-eqz v0, :cond_6

    iget-object v12, v0, Lcom/mega/engineeringmode/function/connector/ConnectorStatus;->x:Ljava/lang/String;

    goto :goto_6

    :cond_6
    move-object/from16 v12, v31

    :goto_6
    and-long v38, v2, v15

    cmp-long v38, v38, v4

    if-eqz v38, :cond_7

    if-eqz v0, :cond_7

    iget-object v15, v0, Lcom/mega/engineeringmode/function/connector/ConnectorStatus;->d1:Ljava/lang/String;

    goto :goto_7

    :cond_7
    move-object/from16 v15, v31

    :goto_7
    and-long v40, v2, v13

    cmp-long v16, v40, v4

    if-eqz v16, :cond_8

    if-eqz v0, :cond_8

    iget-object v13, v0, Lcom/mega/engineeringmode/function/connector/ConnectorStatus;->f1:Ljava/lang/String;

    :goto_8
    const-wide/16 v36, 0x3001

    goto :goto_9

    :cond_8
    move-object/from16 v13, v31

    goto :goto_8

    :goto_9
    and-long v42, v2, v36

    cmp-long v14, v42, v4

    if-eqz v14, :cond_9

    if-eqz v0, :cond_9

    iget-object v14, v0, Lcom/mega/engineeringmode/function/connector/ConnectorStatus;->h1:Ljava/lang/String;

    :goto_a
    const-wide/16 v34, 0x2003

    goto :goto_b

    :cond_9
    move-object/from16 v14, v31

    goto :goto_a

    :goto_b
    and-long v42, v2, v34

    cmp-long v16, v42, v4

    if-eqz v16, :cond_a

    if-eqz v0, :cond_a

    iget-object v4, v0, Lcom/mega/engineeringmode/function/connector/ConnectorStatus;->c:Ljava/lang/String;

    :goto_c
    const-wide/16 v32, 0x2801

    goto :goto_d

    :cond_a
    move-object/from16 v4, v31

    goto :goto_c

    :goto_d
    and-long v44, v2, v32

    const-wide/16 v42, 0x0

    cmp-long v5, v44, v42

    if-eqz v5, :cond_b

    if-eqz v0, :cond_b

    iget-object v0, v0, Lcom/mega/engineeringmode/function/connector/ConnectorStatus;->b1:Ljava/lang/String;

    goto :goto_e

    :cond_b
    move-object/from16 v0, v31

    goto :goto_e

    :cond_c
    move-wide/from16 v42, v4

    const-wide/16 v32, 0x2801

    move-object/from16 v0, v31

    move-object v4, v0

    move-object v6, v4

    move-object v7, v6

    move-object v8, v7

    move-object v9, v8

    move-object v10, v9

    move-object v11, v10

    move-object v12, v11

    move-object v13, v12

    move-object v14, v13

    move-object v15, v14

    :goto_e
    and-long v31, v2, v32

    cmp-long v5, v31, v42

    if-eqz v5, :cond_d

    iget-object v5, v1, Lcom/mega/engineeringmode/databinding/ActivityConnectorStatusBinding;->c:Landroid/widget/TextView;

    invoke-static {v5, v0}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_d
    and-long v19, v2, v19

    cmp-long v0, v19, v42

    if-eqz v0, :cond_e

    iget-object v0, v1, Lcom/mega/engineeringmode/databinding/ActivityConnectorStatusBinding;->r:Landroid/widget/TextView;

    invoke-static {v0, v11}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_e
    and-long v16, v2, v17

    cmp-long v0, v16, v42

    if-eqz v0, :cond_f

    iget-object v0, v1, Lcom/mega/engineeringmode/databinding/ActivityConnectorStatusBinding;->x:Landroid/widget/TextView;

    invoke-static {v0, v12}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_f
    and-long v11, v2, v23

    cmp-long v0, v11, v42

    if-eqz v0, :cond_10

    iget-object v0, v1, Lcom/mega/engineeringmode/databinding/ActivityConnectorStatusBinding;->y:Landroid/widget/TextView;

    invoke-static {v0, v9}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_10
    and-long v11, v2, v21

    cmp-long v0, v11, v42

    if-eqz v0, :cond_11

    iget-object v0, v1, Lcom/mega/engineeringmode/databinding/ActivityConnectorStatusBinding;->Z:Landroid/widget/TextView;

    invoke-static {v0, v10}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_11
    const-wide/16 v9, 0x3001

    and-long/2addr v9, v2

    cmp-long v0, v9, v42

    if-eqz v0, :cond_12

    iget-object v0, v1, Lcom/mega/engineeringmode/databinding/ActivityConnectorStatusBinding;->c1:Landroid/widget/TextView;

    invoke-static {v0, v14}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_12
    and-long v9, v2, v27

    cmp-long v0, v9, v42

    if-eqz v0, :cond_13

    iget-object v0, v1, Lcom/mega/engineeringmode/databinding/ActivityConnectorStatusBinding;->d1:Landroid/widget/TextView;

    invoke-static {v0, v7}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_13
    const-wide/16 v9, 0x2005

    and-long/2addr v9, v2

    cmp-long v0, v9, v42

    if-eqz v0, :cond_14

    iget-object v0, v1, Lcom/mega/engineeringmode/databinding/ActivityConnectorStatusBinding;->e1:Landroid/widget/TextView;

    invoke-static {v0, v15}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_14
    const-wide/16 v9, 0x2081

    and-long/2addr v9, v2

    cmp-long v0, v9, v42

    if-eqz v0, :cond_15

    iget-object v0, v1, Lcom/mega/engineeringmode/databinding/ActivityConnectorStatusBinding;->f1:Landroid/widget/TextView;

    invoke-static {v0, v13}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_15
    const-wide/16 v9, 0x2003

    and-long/2addr v9, v2

    cmp-long v0, v9, v42

    if-eqz v0, :cond_16

    iget-object v0, v1, Lcom/mega/engineeringmode/databinding/ActivityConnectorStatusBinding;->g1:Landroid/widget/TextView;

    invoke-static {v0, v4}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_16
    and-long v4, v2, v25

    cmp-long v0, v4, v42

    if-eqz v0, :cond_17

    iget-object v0, v1, Lcom/mega/engineeringmode/databinding/ActivityConnectorStatusBinding;->h1:Landroid/widget/TextView;

    invoke-static {v0, v8}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_17
    and-long v2, v2, v29

    cmp-long v0, v2, v42

    if-eqz v0, :cond_18

    iget-object v0, v1, Lcom/mega/engineeringmode/databinding/ActivityConnectorStatusBinding;->i1:Landroid/widget/TextView;

    invoke-static {v0, v6}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_18
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
    iget-wide v0, p0, Lcom/mega/engineeringmode/databinding/ActivityConnectorStatusBindingImpl;->k1:J

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

    const-wide/16 v0, 0x2000

    :try_start_0
    iput-wide v0, p0, Lcom/mega/engineeringmode/databinding/ActivityConnectorStatusBindingImpl;->k1:J

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
    check-cast p2, Lcom/mega/engineeringmode/function/connector/ConnectorStatus;

    const/4 p1, 0x1

    if-nez p3, :cond_1

    monitor-enter p0

    :try_start_0
    iget-wide p2, p0, Lcom/mega/engineeringmode/databinding/ActivityConnectorStatusBindingImpl;->k1:J

    const-wide/16 v0, 0x1

    or-long/2addr p2, v0

    iput-wide p2, p0, Lcom/mega/engineeringmode/databinding/ActivityConnectorStatusBindingImpl;->k1:J

    monitor-exit p0

    :goto_0
    move v0, p1

    goto/16 :goto_1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    const/16 p2, 0x16

    if-ne p3, p2, :cond_2

    monitor-enter p0

    :try_start_1
    iget-wide p2, p0, Lcom/mega/engineeringmode/databinding/ActivityConnectorStatusBindingImpl;->k1:J

    const-wide/16 v0, 0x2

    or-long/2addr p2, v0

    iput-wide p2, p0, Lcom/mega/engineeringmode/databinding/ActivityConnectorStatusBindingImpl;->k1:J

    monitor-exit p0

    goto :goto_0

    :catchall_1
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p1

    :cond_2
    const/16 p2, 0x10

    if-ne p3, p2, :cond_3

    monitor-enter p0

    :try_start_2
    iget-wide p2, p0, Lcom/mega/engineeringmode/databinding/ActivityConnectorStatusBindingImpl;->k1:J

    const-wide/16 v0, 0x4

    or-long/2addr p2, v0

    iput-wide p2, p0, Lcom/mega/engineeringmode/databinding/ActivityConnectorStatusBindingImpl;->k1:J

    monitor-exit p0

    goto :goto_0

    :catchall_2
    move-exception p1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw p1

    :cond_3
    const/16 p2, 0xe

    if-ne p3, p2, :cond_4

    monitor-enter p0

    :try_start_3
    iget-wide p2, p0, Lcom/mega/engineeringmode/databinding/ActivityConnectorStatusBindingImpl;->k1:J

    const-wide/16 v0, 0x8

    or-long/2addr p2, v0

    iput-wide p2, p0, Lcom/mega/engineeringmode/databinding/ActivityConnectorStatusBindingImpl;->k1:J

    monitor-exit p0

    goto :goto_0

    :catchall_3
    move-exception p1

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    throw p1

    :cond_4
    const/4 p2, 0x3

    if-ne p3, p2, :cond_5

    monitor-enter p0

    :try_start_4
    iget-wide p2, p0, Lcom/mega/engineeringmode/databinding/ActivityConnectorStatusBindingImpl;->k1:J

    const-wide/16 v0, 0x10

    or-long/2addr p2, v0

    iput-wide p2, p0, Lcom/mega/engineeringmode/databinding/ActivityConnectorStatusBindingImpl;->k1:J

    monitor-exit p0

    goto :goto_0

    :catchall_4
    move-exception p1

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    throw p1

    :cond_5
    const/16 p2, 0x18

    if-ne p3, p2, :cond_6

    monitor-enter p0

    :try_start_5
    iget-wide p2, p0, Lcom/mega/engineeringmode/databinding/ActivityConnectorStatusBindingImpl;->k1:J

    const-wide/16 v0, 0x20

    or-long/2addr p2, v0

    iput-wide p2, p0, Lcom/mega/engineeringmode/databinding/ActivityConnectorStatusBindingImpl;->k1:J

    monitor-exit p0

    goto :goto_0

    :catchall_5
    move-exception p1

    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    throw p1

    :cond_6
    const/4 p2, 0x4

    if-ne p3, p2, :cond_7

    monitor-enter p0

    :try_start_6
    iget-wide p2, p0, Lcom/mega/engineeringmode/databinding/ActivityConnectorStatusBindingImpl;->k1:J

    const-wide/16 v0, 0x40

    or-long/2addr p2, v0

    iput-wide p2, p0, Lcom/mega/engineeringmode/databinding/ActivityConnectorStatusBindingImpl;->k1:J

    monitor-exit p0

    goto :goto_0

    :catchall_6
    move-exception p1

    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    throw p1

    :cond_7
    const/16 p2, 0x15

    if-ne p3, p2, :cond_8

    monitor-enter p0

    :try_start_7
    iget-wide p2, p0, Lcom/mega/engineeringmode/databinding/ActivityConnectorStatusBindingImpl;->k1:J

    const-wide/16 v0, 0x80

    or-long/2addr p2, v0

    iput-wide p2, p0, Lcom/mega/engineeringmode/databinding/ActivityConnectorStatusBindingImpl;->k1:J

    monitor-exit p0

    goto :goto_0

    :catchall_7
    move-exception p1

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    throw p1

    :cond_8
    const/4 p2, 0x5

    if-ne p3, p2, :cond_9

    monitor-enter p0

    :try_start_8
    iget-wide p2, p0, Lcom/mega/engineeringmode/databinding/ActivityConnectorStatusBindingImpl;->k1:J

    const-wide/16 v0, 0x100

    or-long/2addr p2, v0

    iput-wide p2, p0, Lcom/mega/engineeringmode/databinding/ActivityConnectorStatusBindingImpl;->k1:J

    monitor-exit p0

    goto/16 :goto_0

    :catchall_8
    move-exception p1

    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_8

    throw p1

    :cond_9
    const/4 p2, 0x6

    if-ne p3, p2, :cond_a

    monitor-enter p0

    :try_start_9
    iget-wide p2, p0, Lcom/mega/engineeringmode/databinding/ActivityConnectorStatusBindingImpl;->k1:J

    const-wide/16 v0, 0x200

    or-long/2addr p2, v0

    iput-wide p2, p0, Lcom/mega/engineeringmode/databinding/ActivityConnectorStatusBindingImpl;->k1:J

    monitor-exit p0

    goto/16 :goto_0

    :catchall_9
    move-exception p1

    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_9

    throw p1

    :cond_a
    const/16 p2, 0x19

    if-ne p3, p2, :cond_b

    monitor-enter p0

    :try_start_a
    iget-wide p2, p0, Lcom/mega/engineeringmode/databinding/ActivityConnectorStatusBindingImpl;->k1:J

    const-wide/16 v0, 0x400

    or-long/2addr p2, v0

    iput-wide p2, p0, Lcom/mega/engineeringmode/databinding/ActivityConnectorStatusBindingImpl;->k1:J

    monitor-exit p0

    goto/16 :goto_0

    :catchall_a
    move-exception p1

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_a

    throw p1

    :cond_b
    if-ne p3, p1, :cond_c

    monitor-enter p0

    :try_start_b
    iget-wide p2, p0, Lcom/mega/engineeringmode/databinding/ActivityConnectorStatusBindingImpl;->k1:J

    const-wide/16 v0, 0x800

    or-long/2addr p2, v0

    iput-wide p2, p0, Lcom/mega/engineeringmode/databinding/ActivityConnectorStatusBindingImpl;->k1:J

    monitor-exit p0

    goto/16 :goto_0

    :catchall_b
    move-exception p1

    monitor-exit p0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_b

    throw p1

    :cond_c
    const/16 p2, 0xb

    if-ne p3, p2, :cond_d

    monitor-enter p0

    :try_start_c
    iget-wide p2, p0, Lcom/mega/engineeringmode/databinding/ActivityConnectorStatusBindingImpl;->k1:J

    const-wide/16 v0, 0x1000

    or-long/2addr p2, v0

    iput-wide p2, p0, Lcom/mega/engineeringmode/databinding/ActivityConnectorStatusBindingImpl;->k1:J

    monitor-exit p0

    goto/16 :goto_0

    :catchall_c
    move-exception p1

    monitor-exit p0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_c

    throw p1

    :cond_d
    :goto_1
    return v0
.end method

.method public final setVariable(ILjava/lang/Object;)Z
    .locals 1
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/16 v0, 0x17

    if-ne v0, p1, :cond_0

    check-cast p2, Lcom/mega/engineeringmode/function/connector/ConnectorStatus;

    invoke-virtual {p0, p2}, Lcom/mega/engineeringmode/databinding/ActivityConnectorStatusBindingImpl;->b(Lcom/mega/engineeringmode/function/connector/ConnectorStatus;)V

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
