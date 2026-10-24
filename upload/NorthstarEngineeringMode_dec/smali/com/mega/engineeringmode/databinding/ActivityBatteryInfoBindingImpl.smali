.class public Lcom/mega/engineeringmode/databinding/ActivityBatteryInfoBindingImpl;
.super Lcom/mega/engineeringmode/databinding/ActivityBatteryInfoBinding;
.source "SourceFile"


# static fields
.field public static final g1:Landroid/util/SparseIntArray;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# instance fields
.field public f1:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/mega/engineeringmode/databinding/ActivityBatteryInfoBindingImpl;->g1:Landroid/util/SparseIntArray;

    const v1, 0x7f0a020a

    const/16 v2, 0x9

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0a01b0

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0a01bf

    const/16 v2, 0xb

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0a037d

    const/16 v2, 0xc

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0a007f

    const/16 v2, 0xd

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0a0082

    const/16 v2, 0xe

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0a0080

    const/16 v2, 0xf

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0a0081

    const/16 v2, 0x10

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

    move-object v11, p0

    sget-object v0, Lcom/mega/engineeringmode/databinding/ActivityBatteryInfoBindingImpl;->g1:Landroid/util/SparseIntArray;

    const/16 v1, 0x11

    const/4 v12, 0x0

    move-object/from16 v13, p1

    move-object/from16 v2, p2

    invoke-static {v2, v13, v1, v12, v0}, Landroidx/databinding/ViewDataBinding;->mapBindings(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v14

    const/16 v0, 0xd

    aget-object v0, v14, v0

    check-cast v0, Landroid/widget/TextView;

    const/16 v0, 0xf

    aget-object v0, v14, v0

    check-cast v0, Landroid/widget/TextView;

    const/16 v0, 0x10

    aget-object v0, v14, v0

    check-cast v0, Landroid/widget/TextView;

    const/16 v0, 0xe

    aget-object v0, v14, v0

    check-cast v0, Landroid/widget/TextView;

    const/16 v0, 0xa

    aget-object v0, v14, v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v0, 0x2

    aget-object v0, v14, v0

    move-object v3, v0

    check-cast v3, Landroid/widget/TextView;

    const/16 v0, 0xb

    aget-object v0, v14, v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v0, 0x3

    aget-object v0, v14, v0

    move-object v4, v0

    check-cast v4, Landroid/widget/TextView;

    const/16 v0, 0x9

    aget-object v0, v14, v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v0, 0x1

    aget-object v0, v14, v0

    move-object v5, v0

    check-cast v5, Landroid/widget/TextView;

    const/16 v0, 0xc

    aget-object v0, v14, v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v0, 0x7

    aget-object v0, v14, v0

    move-object v6, v0

    check-cast v6, Landroid/widget/TextView;

    const/4 v0, 0x6

    aget-object v0, v14, v0

    move-object v7, v0

    check-cast v7, Landroid/widget/TextView;

    const/4 v0, 0x5

    aget-object v0, v14, v0

    move-object v8, v0

    check-cast v8, Landroid/widget/TextView;

    const/4 v0, 0x4

    aget-object v0, v14, v0

    move-object v9, v0

    check-cast v9, Landroid/widget/TextView;

    const/16 v0, 0x8

    aget-object v0, v14, v0

    move-object v10, v0

    check-cast v10, Landroid/widget/TextView;

    move-object v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    invoke-direct/range {v0 .. v10}, Lcom/mega/engineeringmode/databinding/ActivityBatteryInfoBinding;-><init>(Ljava/lang/Object;Landroid/view/View;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    const-wide/16 v0, -0x1

    iput-wide v0, v11, Lcom/mega/engineeringmode/databinding/ActivityBatteryInfoBindingImpl;->f1:J

    iget-object v0, v11, Lcom/mega/engineeringmode/databinding/ActivityBatteryInfoBinding;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v12}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v0, v11, Lcom/mega/engineeringmode/databinding/ActivityBatteryInfoBinding;->r:Landroid/widget/TextView;

    invoke-virtual {v0, v12}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v0, v11, Lcom/mega/engineeringmode/databinding/ActivityBatteryInfoBinding;->x:Landroid/widget/TextView;

    invoke-virtual {v0, v12}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x0

    aget-object v0, v14, v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v12}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v0, v11, Lcom/mega/engineeringmode/databinding/ActivityBatteryInfoBinding;->y:Landroid/widget/TextView;

    invoke-virtual {v0, v12}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v0, v11, Lcom/mega/engineeringmode/databinding/ActivityBatteryInfoBinding;->Z:Landroid/widget/TextView;

    invoke-virtual {v0, v12}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v0, v11, Lcom/mega/engineeringmode/databinding/ActivityBatteryInfoBinding;->b1:Landroid/widget/TextView;

    invoke-virtual {v0, v12}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v0, v11, Lcom/mega/engineeringmode/databinding/ActivityBatteryInfoBinding;->c1:Landroid/widget/TextView;

    invoke-virtual {v0, v12}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v0, v11, Lcom/mega/engineeringmode/databinding/ActivityBatteryInfoBinding;->d1:Landroid/widget/TextView;

    invoke-virtual {v0, v12}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p1}, Landroidx/databinding/ViewDataBinding;->setRootTag(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/mega/engineeringmode/databinding/ActivityBatteryInfoBindingImpl;->invalidateAll()V

    return-void
.end method


# virtual methods
.method public final b(Lcom/mega/engineeringmode/model/BatteryViewModel;)V
    .locals 4
    .param p1    # Lcom/mega/engineeringmode/model/BatteryViewModel;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/mega/engineeringmode/databinding/ActivityBatteryInfoBinding;->e1:Lcom/mega/engineeringmode/model/BatteryViewModel;

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/mega/engineeringmode/databinding/ActivityBatteryInfoBindingImpl;->f1:J

    const-wide/16 v2, 0x100

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/mega/engineeringmode/databinding/ActivityBatteryInfoBindingImpl;->f1:J

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
    .locals 34

    move-object/from16 v1, p0

    monitor-enter p0

    :try_start_0
    iget-wide v2, v1, Lcom/mega/engineeringmode/databinding/ActivityBatteryInfoBindingImpl;->f1:J

    const-wide/16 v4, 0x0

    iput-wide v4, v1, Lcom/mega/engineeringmode/databinding/ActivityBatteryInfoBindingImpl;->f1:J

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, v1, Lcom/mega/engineeringmode/databinding/ActivityBatteryInfoBinding;->e1:Lcom/mega/engineeringmode/model/BatteryViewModel;

    const-wide/16 v6, 0x3ff

    and-long/2addr v6, v2

    cmp-long v6, v6, v4

    const-wide/16 v11, 0x320

    const-wide/16 v13, 0x310

    const-wide/16 v15, 0x308

    const/4 v7, 0x2

    const-wide/16 v17, 0x304

    const/4 v8, 0x1

    const-wide/16 v19, 0x302

    const-wide/16 v21, 0x301

    const/4 v9, 0x0

    if-eqz v6, :cond_18

    and-long v25, v2, v21

    cmp-long v6, v25, v4

    const/16 v25, 0x0

    if-eqz v6, :cond_2

    if-eqz v0, :cond_0

    const v6, 0x67000086

    invoke-virtual {v0, v6}, Lcom/mega/engineeringmode/model/SignalViewModel;->a(I)Landroidx/lifecycle/MutableLiveData;

    move-result-object v6

    goto :goto_0

    :cond_0
    move-object/from16 v6, v25

    :goto_0
    invoke-virtual {v1, v9, v6}, Landroidx/databinding/ViewDataBinding;->updateLiveDataRegistration(ILandroidx/lifecycle/LiveData;)Z

    if-eqz v6, :cond_1

    invoke-virtual {v6}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    goto :goto_1

    :cond_1
    move-object/from16 v6, v25

    :goto_1
    invoke-static {v6}, Landroidx/databinding/ViewDataBinding;->safeUnbox(Ljava/lang/Float;)F

    move-result v6

    goto :goto_2

    :cond_2
    const/4 v6, 0x0

    :goto_2
    and-long v26, v2, v19

    cmp-long v26, v26, v4

    if-eqz v26, :cond_5

    if-eqz v0, :cond_3

    const v9, 0x5000043

    invoke-virtual {v0, v9}, Lcom/mega/engineeringmode/model/SignalViewModel;->a(I)Landroidx/lifecycle/MutableLiveData;

    move-result-object v9

    goto :goto_3

    :cond_3
    move-object/from16 v9, v25

    :goto_3
    invoke-virtual {v1, v8, v9}, Landroidx/databinding/ViewDataBinding;->updateLiveDataRegistration(ILandroidx/lifecycle/LiveData;)Z

    if-eqz v9, :cond_4

    invoke-virtual {v9}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    goto :goto_4

    :cond_4
    move-object/from16 v9, v25

    :goto_4
    invoke-static {v9}, Landroidx/databinding/ViewDataBinding;->safeUnbox(Ljava/lang/Integer;)I

    move-result v9

    goto :goto_5

    :cond_5
    const/4 v9, 0x0

    :goto_5
    and-long v27, v2, v17

    cmp-long v27, v27, v4

    if-eqz v27, :cond_8

    if-eqz v0, :cond_6

    const v10, 0x67000083

    invoke-virtual {v0, v10}, Lcom/mega/engineeringmode/model/SignalViewModel;->a(I)Landroidx/lifecycle/MutableLiveData;

    move-result-object v10

    goto :goto_6

    :cond_6
    move-object/from16 v10, v25

    :goto_6
    invoke-virtual {v1, v7, v10}, Landroidx/databinding/ViewDataBinding;->updateLiveDataRegistration(ILandroidx/lifecycle/LiveData;)Z

    if-eqz v10, :cond_7

    invoke-virtual {v10}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Float;

    goto :goto_7

    :cond_7
    move-object/from16 v10, v25

    :goto_7
    invoke-static {v10}, Landroidx/databinding/ViewDataBinding;->safeUnbox(Ljava/lang/Float;)F

    move-result v10

    goto :goto_8

    :cond_8
    const/4 v10, 0x0

    :goto_8
    and-long v28, v2, v15

    cmp-long v28, v28, v4

    if-eqz v28, :cond_b

    if-eqz v0, :cond_9

    const v7, 0x67000084

    invoke-virtual {v0, v7}, Lcom/mega/engineeringmode/model/SignalViewModel;->a(I)Landroidx/lifecycle/MutableLiveData;

    move-result-object v7

    goto :goto_9

    :cond_9
    move-object/from16 v7, v25

    :goto_9
    const/4 v8, 0x3

    invoke-virtual {v1, v8, v7}, Landroidx/databinding/ViewDataBinding;->updateLiveDataRegistration(ILandroidx/lifecycle/LiveData;)Z

    if-eqz v7, :cond_a

    invoke-virtual {v7}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    goto :goto_a

    :cond_a
    move-object/from16 v7, v25

    :goto_a
    invoke-static {v7}, Landroidx/databinding/ViewDataBinding;->safeUnbox(Ljava/lang/Integer;)I

    move-result v7

    goto :goto_b

    :cond_b
    const/4 v7, 0x0

    :goto_b
    and-long v30, v2, v13

    cmp-long v8, v30, v4

    if-eqz v8, :cond_e

    if-eqz v0, :cond_c

    const v8, 0x5000044

    invoke-virtual {v0, v8}, Lcom/mega/engineeringmode/model/SignalViewModel;->a(I)Landroidx/lifecycle/MutableLiveData;

    move-result-object v8

    goto :goto_c

    :cond_c
    move-object/from16 v8, v25

    :goto_c
    const/4 v15, 0x4

    invoke-virtual {v1, v15, v8}, Landroidx/databinding/ViewDataBinding;->updateLiveDataRegistration(ILandroidx/lifecycle/LiveData;)Z

    if-eqz v8, :cond_d

    invoke-virtual {v8}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    goto :goto_d

    :cond_d
    move-object/from16 v8, v25

    :goto_d
    invoke-static {v8}, Landroidx/databinding/ViewDataBinding;->safeUnbox(Ljava/lang/Integer;)I

    move-result v8

    goto :goto_e

    :cond_e
    const/4 v8, 0x0

    :goto_e
    and-long v15, v2, v11

    cmp-long v15, v15, v4

    if-eqz v15, :cond_11

    if-eqz v0, :cond_f

    const v15, 0x67000085

    invoke-virtual {v0, v15}, Lcom/mega/engineeringmode/model/SignalViewModel;->a(I)Landroidx/lifecycle/MutableLiveData;

    move-result-object v15

    goto :goto_f

    :cond_f
    move-object/from16 v15, v25

    :goto_f
    const/4 v11, 0x5

    invoke-virtual {v1, v11, v15}, Landroidx/databinding/ViewDataBinding;->updateLiveDataRegistration(ILandroidx/lifecycle/LiveData;)Z

    if-eqz v15, :cond_10

    invoke-virtual {v15}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Float;

    goto :goto_10

    :cond_10
    move-object/from16 v11, v25

    :goto_10
    invoke-static {v11}, Landroidx/databinding/ViewDataBinding;->safeUnbox(Ljava/lang/Float;)F

    move-result v11

    :goto_11
    const-wide/16 v15, 0x340

    goto :goto_12

    :cond_11
    const/4 v11, 0x0

    goto :goto_11

    :goto_12
    and-long v32, v2, v15

    cmp-long v12, v32, v4

    if-eqz v12, :cond_14

    if-eqz v0, :cond_12

    const v12, 0x5000003

    invoke-virtual {v0, v12}, Lcom/mega/engineeringmode/model/SignalViewModel;->a(I)Landroidx/lifecycle/MutableLiveData;

    move-result-object v12

    goto :goto_13

    :cond_12
    move-object/from16 v12, v25

    :goto_13
    const/4 v15, 0x6

    invoke-virtual {v1, v15, v12}, Landroidx/databinding/ViewDataBinding;->updateLiveDataRegistration(ILandroidx/lifecycle/LiveData;)Z

    if-eqz v12, :cond_13

    invoke-virtual {v12}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Float;

    goto :goto_14

    :cond_13
    move-object/from16 v12, v25

    :goto_14
    invoke-static {v12}, Landroidx/databinding/ViewDataBinding;->safeUnbox(Ljava/lang/Float;)F

    move-result v12

    :goto_15
    const-wide/16 v15, 0x380

    goto :goto_16

    :cond_14
    const/4 v12, 0x0

    goto :goto_15

    :goto_16
    and-long v32, v2, v15

    cmp-long v15, v32, v4

    if-eqz v15, :cond_17

    if-eqz v0, :cond_15

    const v15, 0x500005f

    invoke-virtual {v0, v15}, Lcom/mega/engineeringmode/model/SignalViewModel;->a(I)Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    goto :goto_17

    :cond_15
    move-object/from16 v0, v25

    :goto_17
    const/4 v15, 0x7

    invoke-virtual {v1, v15, v0}, Landroidx/databinding/ViewDataBinding;->updateLiveDataRegistration(ILandroidx/lifecycle/LiveData;)Z

    if-eqz v0, :cond_16

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v25, v0

    check-cast v25, Ljava/lang/Float;

    :cond_16
    invoke-static/range {v25 .. v25}, Landroidx/databinding/ViewDataBinding;->safeUnbox(Ljava/lang/Float;)F

    move-result v0

    move/from16 v27, v0

    move v0, v10

    move v10, v12

    goto :goto_19

    :cond_17
    move v0, v10

    move v10, v12

    :goto_18
    const/16 v27, 0x0

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    goto :goto_18

    :goto_19
    and-long v15, v2, v19

    cmp-long v12, v15, v4

    const/16 v15, 0x64

    const/16 v13, 0xff

    if-eqz v12, :cond_1b

    iget-object v12, v1, Lcom/mega/engineeringmode/databinding/ActivityBatteryInfoBinding;->c:Landroid/widget/TextView;

    sget v14, Lcom/mega/engineeringmode/function/battery/BatteryInfoActivity;->i:I

    if-ne v9, v13, :cond_19

    const-string v9, "--%"

    invoke-virtual {v12, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1a

    :cond_19
    if-ltz v9, :cond_1b

    if-ge v9, v13, :cond_1b

    if-le v9, v15, :cond_1a

    move v9, v15

    :cond_1a
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const-string v14, "%"

    filled-new-array {v9, v14}, [Ljava/lang/Object;

    move-result-object v9

    const-string v14, "%s%s"

    invoke-static {v14, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v12, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1b
    :goto_1a
    const-wide/16 v23, 0x340

    and-long v23, v2, v23

    cmp-long v9, v23, v4

    if-eqz v9, :cond_1d

    iget-object v9, v1, Lcom/mega/engineeringmode/databinding/ActivityBatteryInfoBinding;->r:Landroid/widget/TextView;

    sget v12, Lcom/mega/engineeringmode/function/battery/BatteryInfoActivity;->i:I

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v14, "bindVoltage = "

    invoke-direct {v12, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const-string v14, "BatteryInfoActivity"

    invoke-static {v14, v12}, Lmega/log/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const v12, 0x4197fe00    # 18.999023f

    cmpl-float v12, v10, v12

    if-nez v12, :cond_1c

    const-string v10, "--V"

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1b

    :cond_1c
    const/high16 v12, 0x41200000    # 10.0f

    mul-float/2addr v10, v12

    float-to-double v13, v10

    invoke-static {v13, v14}, Ljava/lang/Math;->floor(D)D

    move-result-wide v13

    const-wide/high16 v23, 0x4024000000000000L    # 10.0

    div-double v13, v13, v23

    const-wide/high16 v4, 0x4032000000000000L    # 18.0

    invoke-static {v4, v5, v13, v14}, Ljava/lang/Math;->min(DD)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, "%sV"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1d
    :goto_1b
    const-wide/16 v4, 0x310

    and-long/2addr v4, v2

    const-wide/16 v9, 0x0

    cmp-long v4, v4, v9

    if-eqz v4, :cond_20

    iget-object v4, v1, Lcom/mega/engineeringmode/databinding/ActivityBatteryInfoBinding;->x:Landroid/widget/TextView;

    sget v5, Lcom/mega/engineeringmode/function/battery/BatteryInfoActivity;->i:I

    const/16 v5, 0xff

    if-ne v8, v5, :cond_1e

    const-string v5, "--%"

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1c

    :cond_1e
    if-ltz v8, :cond_20

    if-ge v8, v5, :cond_20

    if-le v8, v15, :cond_1f

    move v8, v15

    :cond_1f
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v8, "%"

    filled-new-array {v5, v8}, [Ljava/lang/Object;

    move-result-object v5

    const-string v8, "%s%s"

    invoke-static {v8, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_20
    :goto_1c
    const-wide/16 v4, 0x380

    and-long/2addr v4, v2

    const-wide/16 v8, 0x0

    cmp-long v4, v4, v8

    if-eqz v4, :cond_21

    iget-object v4, v1, Lcom/mega/engineeringmode/databinding/ActivityBatteryInfoBinding;->y:Landroid/widget/TextView;

    sget v5, Lcom/mega/engineeringmode/function/battery/BatteryInfoActivity;->i:I

    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    const-string v8, "%sA"

    invoke-static {v8, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_21
    const-wide/16 v4, 0x308

    and-long/2addr v4, v2

    const-wide/16 v8, 0x0

    cmp-long v4, v4, v8

    if-eqz v4, :cond_24

    iget-object v4, v1, Lcom/mega/engineeringmode/databinding/ActivityBatteryInfoBinding;->Z:Landroid/widget/TextView;

    sget v5, Lcom/mega/engineeringmode/function/battery/BatteryInfoActivity;->i:I

    if-nez v7, :cond_22

    const v5, 0x7f120129

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1d

    :cond_22
    const/4 v5, 0x1

    if-ne v7, v5, :cond_23

    const v5, 0x7f12012b

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1d

    :cond_23
    const/4 v5, 0x2

    if-ne v7, v5, :cond_24

    const v5, 0x7f12012a

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    :cond_24
    :goto_1d
    and-long v4, v2, v17

    const-wide/16 v7, 0x0

    cmp-long v4, v4, v7

    if-eqz v4, :cond_25

    iget-object v4, v1, Lcom/mega/engineeringmode/databinding/ActivityBatteryInfoBinding;->b1:Landroid/widget/TextView;

    sget v5, Lcom/mega/engineeringmode/function/battery/BatteryInfoActivity;->i:I

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v5, "%s\u2103"

    invoke-static {v5, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_25
    const-wide/16 v4, 0x320

    and-long/2addr v4, v2

    const-wide/16 v7, 0x0

    cmp-long v0, v4, v7

    if-eqz v0, :cond_26

    iget-object v0, v1, Lcom/mega/engineeringmode/databinding/ActivityBatteryInfoBinding;->c1:Landroid/widget/TextView;

    sget v4, Lcom/mega/engineeringmode/function/battery/BatteryInfoActivity;->i:I

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, "%sV"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_26
    and-long v2, v2, v21

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_27

    iget-object v0, v1, Lcom/mega/engineeringmode/databinding/ActivityBatteryInfoBinding;->d1:Landroid/widget/TextView;

    sget v1, Lcom/mega/engineeringmode/function/battery/BatteryInfoActivity;->i:I

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "%sA"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_27
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
    iget-wide v0, p0, Lcom/mega/engineeringmode/databinding/ActivityBatteryInfoBindingImpl;->f1:J

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

    const-wide/16 v0, 0x200

    :try_start_0
    iput-wide v0, p0, Lcom/mega/engineeringmode/databinding/ActivityBatteryInfoBindingImpl;->f1:J

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
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    return v1

    :pswitch_0
    check-cast p2, Landroidx/lifecycle/MutableLiveData;

    if-nez p3, :cond_0

    monitor-enter p0

    :try_start_0
    iget-wide p1, p0, Lcom/mega/engineeringmode/databinding/ActivityBatteryInfoBindingImpl;->f1:J

    const-wide/16 v1, 0x80

    or-long/2addr p1, v1

    iput-wide p1, p0, Lcom/mega/engineeringmode/databinding/ActivityBatteryInfoBindingImpl;->f1:J

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    move v0, v1

    :goto_0
    return v0

    :pswitch_1
    check-cast p2, Landroidx/lifecycle/MutableLiveData;

    if-nez p3, :cond_1

    monitor-enter p0

    :try_start_1
    iget-wide p1, p0, Lcom/mega/engineeringmode/databinding/ActivityBatteryInfoBindingImpl;->f1:J

    const-wide/16 v1, 0x40

    or-long/2addr p1, v1

    iput-wide p1, p0, Lcom/mega/engineeringmode/databinding/ActivityBatteryInfoBindingImpl;->f1:J

    monitor-exit p0

    goto :goto_1

    :catchall_1
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p1

    :cond_1
    move v0, v1

    :goto_1
    return v0

    :pswitch_2
    check-cast p2, Landroidx/lifecycle/MutableLiveData;

    if-nez p3, :cond_2

    monitor-enter p0

    :try_start_2
    iget-wide p1, p0, Lcom/mega/engineeringmode/databinding/ActivityBatteryInfoBindingImpl;->f1:J

    const-wide/16 v1, 0x20

    or-long/2addr p1, v1

    iput-wide p1, p0, Lcom/mega/engineeringmode/databinding/ActivityBatteryInfoBindingImpl;->f1:J

    monitor-exit p0

    goto :goto_2

    :catchall_2
    move-exception p1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw p1

    :cond_2
    move v0, v1

    :goto_2
    return v0

    :pswitch_3
    check-cast p2, Landroidx/lifecycle/MutableLiveData;

    if-nez p3, :cond_3

    monitor-enter p0

    :try_start_3
    iget-wide p1, p0, Lcom/mega/engineeringmode/databinding/ActivityBatteryInfoBindingImpl;->f1:J

    const-wide/16 v1, 0x10

    or-long/2addr p1, v1

    iput-wide p1, p0, Lcom/mega/engineeringmode/databinding/ActivityBatteryInfoBindingImpl;->f1:J

    monitor-exit p0

    goto :goto_3

    :catchall_3
    move-exception p1

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    throw p1

    :cond_3
    move v0, v1

    :goto_3
    return v0

    :pswitch_4
    check-cast p2, Landroidx/lifecycle/MutableLiveData;

    if-nez p3, :cond_4

    monitor-enter p0

    :try_start_4
    iget-wide p1, p0, Lcom/mega/engineeringmode/databinding/ActivityBatteryInfoBindingImpl;->f1:J

    const-wide/16 v1, 0x8

    or-long/2addr p1, v1

    iput-wide p1, p0, Lcom/mega/engineeringmode/databinding/ActivityBatteryInfoBindingImpl;->f1:J

    monitor-exit p0

    goto :goto_4

    :catchall_4
    move-exception p1

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    throw p1

    :cond_4
    move v0, v1

    :goto_4
    return v0

    :pswitch_5
    check-cast p2, Landroidx/lifecycle/MutableLiveData;

    if-nez p3, :cond_5

    monitor-enter p0

    :try_start_5
    iget-wide p1, p0, Lcom/mega/engineeringmode/databinding/ActivityBatteryInfoBindingImpl;->f1:J

    const-wide/16 v1, 0x4

    or-long/2addr p1, v1

    iput-wide p1, p0, Lcom/mega/engineeringmode/databinding/ActivityBatteryInfoBindingImpl;->f1:J

    monitor-exit p0

    goto :goto_5

    :catchall_5
    move-exception p1

    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    throw p1

    :cond_5
    move v0, v1

    :goto_5
    return v0

    :pswitch_6
    check-cast p2, Landroidx/lifecycle/MutableLiveData;

    if-nez p3, :cond_6

    monitor-enter p0

    :try_start_6
    iget-wide p1, p0, Lcom/mega/engineeringmode/databinding/ActivityBatteryInfoBindingImpl;->f1:J

    const-wide/16 v1, 0x2

    or-long/2addr p1, v1

    iput-wide p1, p0, Lcom/mega/engineeringmode/databinding/ActivityBatteryInfoBindingImpl;->f1:J

    monitor-exit p0

    goto :goto_6

    :catchall_6
    move-exception p1

    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    throw p1

    :cond_6
    move v0, v1

    :goto_6
    return v0

    :pswitch_7
    check-cast p2, Landroidx/lifecycle/MutableLiveData;

    if-nez p3, :cond_7

    monitor-enter p0

    :try_start_7
    iget-wide p1, p0, Lcom/mega/engineeringmode/databinding/ActivityBatteryInfoBindingImpl;->f1:J

    const-wide/16 v1, 0x1

    or-long/2addr p1, v1

    iput-wide p1, p0, Lcom/mega/engineeringmode/databinding/ActivityBatteryInfoBindingImpl;->f1:J

    monitor-exit p0

    goto :goto_7

    :catchall_7
    move-exception p1

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    throw p1

    :cond_7
    move v0, v1

    :goto_7
    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final setVariable(ILjava/lang/Object;)Z
    .locals 1
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/16 v0, 0x14

    if-ne v0, p1, :cond_0

    check-cast p2, Lcom/mega/engineeringmode/model/BatteryViewModel;

    invoke-virtual {p0, p2}, Lcom/mega/engineeringmode/databinding/ActivityBatteryInfoBindingImpl;->b(Lcom/mega/engineeringmode/model/BatteryViewModel;)V

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
