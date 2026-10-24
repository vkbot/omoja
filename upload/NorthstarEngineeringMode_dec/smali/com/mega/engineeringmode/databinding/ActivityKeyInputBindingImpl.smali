.class public Lcom/mega/engineeringmode/databinding/ActivityKeyInputBindingImpl;
.super Lcom/mega/engineeringmode/databinding/ActivityKeyInputBinding;
.source "SourceFile"


# static fields
.field public static final f1:Landroid/util/SparseIntArray;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# instance fields
.field public e1:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/mega/engineeringmode/databinding/ActivityKeyInputBindingImpl;->f1:Landroid/util/SparseIntArray;

    const v1, 0x7f0a00d2

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0a00d4

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0a00ba

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0a00cc

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0a00d0

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0a00d5

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0a00b4

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0a00b2

    const/16 v2, 0x8

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

    sget-object v0, Lcom/mega/engineeringmode/databinding/ActivityKeyInputBindingImpl;->f1:Landroid/util/SparseIntArray;

    const/16 v1, 0x9

    const/4 v2, 0x0

    move-object/from16 v14, p1

    move-object/from16 v4, p2

    invoke-static {v4, v14, v1, v2, v0}, Landroidx/databinding/ViewDataBinding;->mapBindings(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x8

    aget-object v1, v0, v1

    move-object v6, v1

    check-cast v6, Lcom/mega/engineeringmode/function/presskey/KeyBtn;

    const/4 v1, 0x7

    aget-object v1, v0, v1

    move-object v7, v1

    check-cast v7, Lcom/mega/engineeringmode/function/presskey/KeyBtn;

    const/4 v1, 0x3

    aget-object v1, v0, v1

    move-object v8, v1

    check-cast v8, Lcom/mega/engineeringmode/function/presskey/KeyBtn;

    const/4 v1, 0x4

    aget-object v1, v0, v1

    move-object v9, v1

    check-cast v9, Lcom/mega/engineeringmode/function/presskey/KeyBtn;

    const/4 v1, 0x5

    aget-object v1, v0, v1

    move-object v10, v1

    check-cast v10, Lcom/mega/engineeringmode/function/presskey/KeyBtn;

    const/4 v1, 0x1

    aget-object v1, v0, v1

    move-object v11, v1

    check-cast v11, Lcom/mega/engineeringmode/function/presskey/KeyBtn;

    const/4 v1, 0x2

    aget-object v1, v0, v1

    move-object v12, v1

    check-cast v12, Lcom/mega/engineeringmode/function/presskey/KeyBtn;

    const/4 v1, 0x6

    aget-object v1, v0, v1

    move-object v13, v1

    check-cast v13, Lcom/mega/engineeringmode/function/presskey/KeyBtn;

    move-object v3, p0

    move-object/from16 v4, p2

    move-object/from16 v5, p1

    invoke-direct/range {v3 .. v13}, Lcom/mega/engineeringmode/databinding/ActivityKeyInputBinding;-><init>(Ljava/lang/Object;Landroid/view/View;Lcom/mega/engineeringmode/function/presskey/KeyBtn;Lcom/mega/engineeringmode/function/presskey/KeyBtn;Lcom/mega/engineeringmode/function/presskey/KeyBtn;Lcom/mega/engineeringmode/function/presskey/KeyBtn;Lcom/mega/engineeringmode/function/presskey/KeyBtn;Lcom/mega/engineeringmode/function/presskey/KeyBtn;Lcom/mega/engineeringmode/function/presskey/KeyBtn;Lcom/mega/engineeringmode/function/presskey/KeyBtn;)V

    const-wide/16 v3, -0x1

    move-object v1, p0

    iput-wide v3, v1, Lcom/mega/engineeringmode/databinding/ActivityKeyInputBindingImpl;->e1:J

    const/4 v3, 0x0

    aget-object v0, v0, v3

    check-cast v0, Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p1}, Landroidx/databinding/ViewDataBinding;->setRootTag(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/mega/engineeringmode/databinding/ActivityKeyInputBindingImpl;->invalidateAll()V

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 0

    return-void
.end method

.method public final executeBindings()V
    .locals 2

    monitor-enter p0

    const-wide/16 v0, 0x0

    :try_start_0
    iput-wide v0, p0, Lcom/mega/engineeringmode/databinding/ActivityKeyInputBindingImpl;->e1:J

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final hasPendingBindings()Z
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/mega/engineeringmode/databinding/ActivityKeyInputBindingImpl;->e1:J

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
    iput-wide v0, p0, Lcom/mega/engineeringmode/databinding/ActivityKeyInputBindingImpl;->e1:J

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
    .locals 0
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/16 p0, 0x13

    if-ne p0, p1, :cond_0

    check-cast p2, Lcom/mega/engineeringmode/function/presskey/KeyInputActivity;

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
