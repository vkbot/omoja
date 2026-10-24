.class public Lcom/mega/engineeringmode/databinding/ActivityTemperatureInfoBindingImpl;
.super Lcom/mega/engineeringmode/databinding/ActivityTemperatureInfoBinding;
.source "SourceFile"


# instance fields
.field public b1:J


# direct methods
.method public constructor <init>(Landroid/view/View;Landroidx/databinding/DataBindingComponent;)V
    .locals 10
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/databinding/DataBindingComponent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x5

    const/4 v1, 0x0

    invoke-static {p2, p1, v0, v1, v1}, Landroidx/databinding/ViewDataBinding;->mapBindings(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    const/4 v2, 0x3

    aget-object v2, v0, v2

    move-object v6, v2

    check-cast v6, Landroid/widget/TextView;

    const/4 v2, 0x4

    aget-object v2, v0, v2

    move-object v7, v2

    check-cast v7, Landroid/widget/TextView;

    const/4 v2, 0x2

    aget-object v2, v0, v2

    move-object v8, v2

    check-cast v8, Landroid/widget/TextView;

    const/4 v2, 0x1

    aget-object v2, v0, v2

    move-object v9, v2

    check-cast v9, Landroid/widget/TextView;

    move-object v3, p0

    move-object v4, p2

    move-object v5, p1

    invoke-direct/range {v3 .. v9}, Lcom/mega/engineeringmode/databinding/ActivityTemperatureInfoBinding;-><init>(Ljava/lang/Object;Landroid/view/View;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/mega/engineeringmode/databinding/ActivityTemperatureInfoBindingImpl;->b1:J

    const/4 p2, 0x0

    aget-object p2, v0, p2

    check-cast p2, Landroid/widget/LinearLayout;

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/mega/engineeringmode/databinding/ActivityTemperatureInfoBinding;->c:Landroid/widget/TextView;

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/mega/engineeringmode/databinding/ActivityTemperatureInfoBinding;->r:Landroid/widget/TextView;

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/mega/engineeringmode/databinding/ActivityTemperatureInfoBinding;->x:Landroid/widget/TextView;

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/mega/engineeringmode/databinding/ActivityTemperatureInfoBinding;->y:Landroid/widget/TextView;

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Landroidx/databinding/ViewDataBinding;->setRootTag(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/mega/engineeringmode/databinding/ActivityTemperatureInfoBindingImpl;->invalidateAll()V

    return-void
.end method


# virtual methods
.method public final b(Lcom/mega/engineeringmode/model/TemperatureViewModel;)V
    .locals 4
    .param p1    # Lcom/mega/engineeringmode/model/TemperatureViewModel;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/mega/engineeringmode/databinding/ActivityTemperatureInfoBinding;->Z:Lcom/mega/engineeringmode/model/TemperatureViewModel;

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/mega/engineeringmode/databinding/ActivityTemperatureInfoBindingImpl;->b1:J

    const-wide/16 v2, 0x10

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/mega/engineeringmode/databinding/ActivityTemperatureInfoBindingImpl;->b1:J

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x14

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
    .locals 22

    move-object/from16 v1, p0

    monitor-enter p0

    :try_start_0
    iget-wide v2, v1, Lcom/mega/engineeringmode/databinding/ActivityTemperatureInfoBindingImpl;->b1:J

    const-wide/16 v4, 0x0

    iput-wide v4, v1, Lcom/mega/engineeringmode/databinding/ActivityTemperatureInfoBindingImpl;->b1:J

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, v1, Lcom/mega/engineeringmode/databinding/ActivityTemperatureInfoBinding;->Z:Lcom/mega/engineeringmode/model/TemperatureViewModel;

    const-wide/16 v6, 0x3f

    and-long/2addr v6, v2

    cmp-long v6, v6, v4

    const-wide/16 v7, 0x38

    const/4 v9, 0x2

    const-wide/16 v10, 0x34

    const/4 v12, 0x1

    const-wide/16 v13, 0x32

    const-wide/16 v15, 0x31

    const/16 v17, 0x0

    if-eqz v6, :cond_c

    and-long v18, v2, v15

    cmp-long v6, v18, v4

    const/16 v18, 0x0

    if-eqz v6, :cond_2

    if-eqz v0, :cond_0

    iget-object v6, v0, Lcom/mega/engineeringmode/model/TemperatureViewModel;->b:Landroidx/lifecycle/MutableLiveData;

    goto :goto_0

    :cond_0
    move-object/from16 v6, v18

    :goto_0
    const/4 v15, 0x0

    invoke-virtual {v1, v15, v6}, Landroidx/databinding/ViewDataBinding;->updateLiveDataRegistration(ILandroidx/lifecycle/LiveData;)Z

    if-eqz v6, :cond_1

    invoke-virtual {v6}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    goto :goto_1

    :cond_1
    move-object/from16 v6, v18

    :goto_1
    invoke-static {v6}, Landroidx/databinding/ViewDataBinding;->safeUnbox(Ljava/lang/Float;)F

    move-result v6

    goto :goto_2

    :cond_2
    move/from16 v6, v17

    :goto_2
    and-long v15, v2, v13

    cmp-long v15, v15, v4

    if-eqz v15, :cond_5

    if-eqz v0, :cond_3

    iget-object v15, v0, Lcom/mega/engineeringmode/model/TemperatureViewModel;->c:Landroidx/lifecycle/MutableLiveData;

    goto :goto_3

    :cond_3
    move-object/from16 v15, v18

    :goto_3
    invoke-virtual {v1, v12, v15}, Landroidx/databinding/ViewDataBinding;->updateLiveDataRegistration(ILandroidx/lifecycle/LiveData;)Z

    if-eqz v15, :cond_4

    invoke-virtual {v15}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Float;

    goto :goto_4

    :cond_4
    move-object/from16 v15, v18

    :goto_4
    invoke-static {v15}, Landroidx/databinding/ViewDataBinding;->safeUnbox(Ljava/lang/Float;)F

    move-result v15

    goto :goto_5

    :cond_5
    move/from16 v15, v17

    :goto_5
    and-long v20, v2, v10

    cmp-long v16, v20, v4

    if-eqz v16, :cond_8

    if-eqz v0, :cond_6

    iget-object v12, v0, Lcom/mega/engineeringmode/model/TemperatureViewModel;->d:Landroidx/lifecycle/MutableLiveData;

    goto :goto_6

    :cond_6
    move-object/from16 v12, v18

    :goto_6
    invoke-virtual {v1, v9, v12}, Landroidx/databinding/ViewDataBinding;->updateLiveDataRegistration(ILandroidx/lifecycle/LiveData;)Z

    if-eqz v12, :cond_7

    invoke-virtual {v12}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Float;

    goto :goto_7

    :cond_7
    move-object/from16 v12, v18

    :goto_7
    invoke-static {v12}, Landroidx/databinding/ViewDataBinding;->safeUnbox(Ljava/lang/Float;)F

    move-result v12

    goto :goto_8

    :cond_8
    move/from16 v12, v17

    :goto_8
    and-long v20, v2, v7

    cmp-long v20, v20, v4

    if-eqz v20, :cond_b

    if-eqz v0, :cond_9

    iget-object v0, v0, Lcom/mega/engineeringmode/model/TemperatureViewModel;->e:Landroidx/lifecycle/MutableLiveData;

    goto :goto_9

    :cond_9
    move-object/from16 v0, v18

    :goto_9
    const/4 v13, 0x3

    invoke-virtual {v1, v13, v0}, Landroidx/databinding/ViewDataBinding;->updateLiveDataRegistration(ILandroidx/lifecycle/LiveData;)Z

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v18, v0

    check-cast v18, Ljava/lang/Float;

    :cond_a
    invoke-static/range {v18 .. v18}, Landroidx/databinding/ViewDataBinding;->safeUnbox(Ljava/lang/Float;)F

    move-result v0

    goto :goto_a

    :cond_b
    move/from16 v0, v17

    goto :goto_a

    :cond_c
    move/from16 v0, v17

    move v6, v0

    move v12, v6

    move v15, v12

    :goto_a
    and-long/2addr v10, v2

    cmp-long v10, v10, v4

    const v11, 0x7f120324

    const v13, 0x7f120323

    if-eqz v10, :cond_e

    iget-object v10, v1, Lcom/mega/engineeringmode/databinding/ActivityTemperatureInfoBinding;->c:Landroid/widget/TextView;

    sget v14, Lcom/mega/engineeringmode/function/temperature/TemperatureInfoActivity;->j:I

    const-string/jumbo v14, "view"

    invoke-static {v10, v14}, Lo3/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    cmpl-float v14, v12, v17

    if-ltz v14, :cond_e

    cmpg-float v12, v12, v17

    if-nez v12, :cond_d

    invoke-virtual {v10}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_b

    :cond_d
    invoke-virtual {v10}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_e
    :goto_b
    and-long/2addr v7, v2

    cmp-long v7, v7, v4

    if-eqz v7, :cond_f

    iget-object v7, v1, Lcom/mega/engineeringmode/databinding/ActivityTemperatureInfoBinding;->r:Landroid/widget/TextView;

    sget v8, Lcom/mega/engineeringmode/function/temperature/TemperatureInfoActivity;->j:I

    const-string/jumbo v8, "view"

    invoke-static {v7, v8}, Lo3/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    cmpl-float v8, v0, v17

    if-ltz v8, :cond_f

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string v8, "%"

    filled-new-array {v0, v8}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v9}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    const-string v8, "%.2f%s"

    invoke-static {v8, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v8, "format(format, *args)"

    invoke-static {v0, v8}, Lo3/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_f
    const-wide/16 v7, 0x32

    and-long/2addr v7, v2

    cmp-long v0, v7, v4

    if-eqz v0, :cond_11

    iget-object v0, v1, Lcom/mega/engineeringmode/databinding/ActivityTemperatureInfoBinding;->x:Landroid/widget/TextView;

    sget v7, Lcom/mega/engineeringmode/function/temperature/TemperatureInfoActivity;->j:I

    const-string/jumbo v7, "view"

    invoke-static {v0, v7}, Lo3/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    cmpl-float v7, v15, v17

    if-ltz v7, :cond_11

    cmpg-float v7, v15, v17

    if-nez v7, :cond_10

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_c

    :cond_10
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_11
    :goto_c
    const-wide/16 v7, 0x31

    and-long/2addr v2, v7

    cmp-long v0, v2, v4

    if-eqz v0, :cond_12

    iget-object v0, v1, Lcom/mega/engineeringmode/databinding/ActivityTemperatureInfoBinding;->y:Landroid/widget/TextView;

    sget v1, Lcom/mega/engineeringmode/function/temperature/TemperatureInfoActivity;->j:I

    const-string/jumbo v1, "view"

    invoke-static {v0, v1}, Lo3/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    const-string v2, "%s\u2103"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "format(format, *args)"

    invoke-static {v1, v2}, Lo3/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_12
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
    iget-wide v0, p0, Lcom/mega/engineeringmode/databinding/ActivityTemperatureInfoBindingImpl;->b1:J

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

    const-wide/16 v0, 0x20

    :try_start_0
    iput-wide v0, p0, Lcom/mega/engineeringmode/databinding/ActivityTemperatureInfoBindingImpl;->b1:J

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
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_6

    if-eq p1, v1, :cond_4

    const/4 v2, 0x2

    if-eq p1, v2, :cond_2

    const/4 v2, 0x3

    if-eq p1, v2, :cond_0

    return v0

    :cond_0
    check-cast p2, Landroidx/lifecycle/MutableLiveData;

    if-nez p3, :cond_1

    monitor-enter p0

    :try_start_0
    iget-wide p1, p0, Lcom/mega/engineeringmode/databinding/ActivityTemperatureInfoBindingImpl;->b1:J

    const-wide/16 v2, 0x8

    or-long/2addr p1, v2

    iput-wide p1, p0, Lcom/mega/engineeringmode/databinding/ActivityTemperatureInfoBindingImpl;->b1:J

    monitor-exit p0

    move v0, v1

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

    :cond_2
    check-cast p2, Landroidx/lifecycle/MutableLiveData;

    if-nez p3, :cond_3

    monitor-enter p0

    :try_start_1
    iget-wide p1, p0, Lcom/mega/engineeringmode/databinding/ActivityTemperatureInfoBindingImpl;->b1:J

    const-wide/16 v2, 0x4

    or-long/2addr p1, v2

    iput-wide p1, p0, Lcom/mega/engineeringmode/databinding/ActivityTemperatureInfoBindingImpl;->b1:J

    monitor-exit p0

    move v0, v1

    goto :goto_1

    :catchall_1
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p1

    :cond_3
    :goto_1
    return v0

    :cond_4
    check-cast p2, Landroidx/lifecycle/MutableLiveData;

    if-nez p3, :cond_5

    monitor-enter p0

    :try_start_2
    iget-wide p1, p0, Lcom/mega/engineeringmode/databinding/ActivityTemperatureInfoBindingImpl;->b1:J

    const-wide/16 v2, 0x2

    or-long/2addr p1, v2

    iput-wide p1, p0, Lcom/mega/engineeringmode/databinding/ActivityTemperatureInfoBindingImpl;->b1:J

    monitor-exit p0

    move v0, v1

    goto :goto_2

    :catchall_2
    move-exception p1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw p1

    :cond_5
    :goto_2
    return v0

    :cond_6
    check-cast p2, Landroidx/lifecycle/MutableLiveData;

    if-nez p3, :cond_7

    monitor-enter p0

    :try_start_3
    iget-wide p1, p0, Lcom/mega/engineeringmode/databinding/ActivityTemperatureInfoBindingImpl;->b1:J

    const-wide/16 v2, 0x1

    or-long/2addr p1, v2

    iput-wide p1, p0, Lcom/mega/engineeringmode/databinding/ActivityTemperatureInfoBindingImpl;->b1:J

    monitor-exit p0

    move v0, v1

    goto :goto_3

    :catchall_3
    move-exception p1

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    throw p1

    :cond_7
    :goto_3
    return v0
.end method

.method public final setVariable(ILjava/lang/Object;)Z
    .locals 1
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/16 v0, 0x14

    if-ne v0, p1, :cond_0

    check-cast p2, Lcom/mega/engineeringmode/model/TemperatureViewModel;

    invoke-virtual {p0, p2}, Lcom/mega/engineeringmode/databinding/ActivityTemperatureInfoBindingImpl;->b(Lcom/mega/engineeringmode/model/TemperatureViewModel;)V

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
