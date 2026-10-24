.class public Lcom/mega/engineeringmode/databinding/ActivityCertificateUsbactivityBindingImpl;
.super Lcom/mega/engineeringmode/databinding/ActivityCertificateUsbactivityBinding;
.source "SourceFile"

# interfaces
.implements Lh2/a$a;


# static fields
.field public static final m1:Landroid/util/SparseIntArray;
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

.field public final g1:Lh2/a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final h1:Lh2/a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final i1:Lh2/a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final j1:Lh2/a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final k1:Lh2/a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public l1:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/mega/engineeringmode/databinding/ActivityCertificateUsbactivityBindingImpl;->m1:Landroid/util/SparseIntArray;

    const v1, 0x7f0a043b

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0a0441

    const/16 v2, 0x9

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

    move-object/from16 v10, p0

    sget-object v0, Lcom/mega/engineeringmode/databinding/ActivityCertificateUsbactivityBindingImpl;->m1:Landroid/util/SparseIntArray;

    const/16 v1, 0xa

    const/4 v11, 0x0

    move-object/from16 v12, p1

    move-object/from16 v2, p2

    invoke-static {v2, v12, v1, v11, v0}, Landroidx/databinding/ViewDataBinding;->mapBindings(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v13

    const/4 v14, 0x1

    aget-object v0, v13, v14

    move-object v3, v0

    check-cast v3, Landroid/widget/Button;

    const/4 v15, 0x2

    aget-object v0, v13, v15

    move-object v4, v0

    check-cast v4, Landroid/widget/Button;

    const/4 v9, 0x7

    aget-object v0, v13, v9

    move-object v5, v0

    check-cast v5, Landroid/widget/Button;

    const/4 v8, 0x6

    aget-object v0, v13, v8

    move-object v6, v0

    check-cast v6, Landroid/widget/Button;

    const/16 v0, 0x8

    aget-object v0, v13, v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v7, 0x3

    aget-object v0, v13, v7

    move-object/from16 v16, v0

    check-cast v16, Landroid/widget/Button;

    const/4 v1, 0x4

    aget-object v0, v13, v1

    move-object/from16 v17, v0

    check-cast v17, Landroid/widget/Button;

    const/4 v0, 0x5

    aget-object v18, v13, v0

    check-cast v18, Landroid/widget/Button;

    const/16 v19, 0x9

    aget-object v19, v13, v19

    check-cast v19, Landroid/widget/TextView;

    move v15, v0

    move-object/from16 v0, p0

    move v14, v1

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    move-object/from16 v7, v16

    move v15, v8

    move-object/from16 v8, v17

    move v14, v9

    move-object/from16 v9, v18

    invoke-direct/range {v0 .. v9}, Lcom/mega/engineeringmode/databinding/ActivityCertificateUsbactivityBinding;-><init>(Ljava/lang/Object;Landroid/view/View;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;)V

    const-wide/16 v0, -0x1

    iput-wide v0, v10, Lcom/mega/engineeringmode/databinding/ActivityCertificateUsbactivityBindingImpl;->l1:J

    const/4 v0, 0x0

    aget-object v0, v13, v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v11}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v0, v10, Lcom/mega/engineeringmode/databinding/ActivityCertificateUsbactivityBinding;->c:Landroid/widget/Button;

    invoke-virtual {v0, v11}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v0, v10, Lcom/mega/engineeringmode/databinding/ActivityCertificateUsbactivityBinding;->r:Landroid/widget/Button;

    invoke-virtual {v0, v11}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v0, v10, Lcom/mega/engineeringmode/databinding/ActivityCertificateUsbactivityBinding;->x:Landroid/widget/Button;

    invoke-virtual {v0, v11}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v0, v10, Lcom/mega/engineeringmode/databinding/ActivityCertificateUsbactivityBinding;->y:Landroid/widget/Button;

    invoke-virtual {v0, v11}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v0, v10, Lcom/mega/engineeringmode/databinding/ActivityCertificateUsbactivityBinding;->Z:Landroid/widget/Button;

    invoke-virtual {v0, v11}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v0, v10, Lcom/mega/engineeringmode/databinding/ActivityCertificateUsbactivityBinding;->b1:Landroid/widget/Button;

    invoke-virtual {v0, v11}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v0, v10, Lcom/mega/engineeringmode/databinding/ActivityCertificateUsbactivityBinding;->c1:Landroid/widget/Button;

    invoke-virtual {v0, v11}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p1}, Landroidx/databinding/ViewDataBinding;->setRootTag(Landroid/view/View;)V

    new-instance v0, Lh2/a;

    invoke-direct {v0, v10, v15}, Lh2/a;-><init>(Lh2/a$a;I)V

    iput-object v0, v10, Lcom/mega/engineeringmode/databinding/ActivityCertificateUsbactivityBindingImpl;->e1:Lh2/a;

    new-instance v0, Lh2/a;

    invoke-direct {v0, v10, v14}, Lh2/a;-><init>(Lh2/a$a;I)V

    iput-object v0, v10, Lcom/mega/engineeringmode/databinding/ActivityCertificateUsbactivityBindingImpl;->f1:Lh2/a;

    new-instance v0, Lh2/a;

    const/4 v1, 0x4

    invoke-direct {v0, v10, v1}, Lh2/a;-><init>(Lh2/a$a;I)V

    iput-object v0, v10, Lcom/mega/engineeringmode/databinding/ActivityCertificateUsbactivityBindingImpl;->g1:Lh2/a;

    new-instance v0, Lh2/a;

    const/4 v1, 0x5

    invoke-direct {v0, v10, v1}, Lh2/a;-><init>(Lh2/a$a;I)V

    iput-object v0, v10, Lcom/mega/engineeringmode/databinding/ActivityCertificateUsbactivityBindingImpl;->h1:Lh2/a;

    new-instance v0, Lh2/a;

    const/4 v1, 0x3

    invoke-direct {v0, v10, v1}, Lh2/a;-><init>(Lh2/a$a;I)V

    iput-object v0, v10, Lcom/mega/engineeringmode/databinding/ActivityCertificateUsbactivityBindingImpl;->i1:Lh2/a;

    new-instance v0, Lh2/a;

    const/4 v1, 0x1

    invoke-direct {v0, v10, v1}, Lh2/a;-><init>(Lh2/a$a;I)V

    iput-object v0, v10, Lcom/mega/engineeringmode/databinding/ActivityCertificateUsbactivityBindingImpl;->j1:Lh2/a;

    new-instance v0, Lh2/a;

    const/4 v1, 0x2

    invoke-direct {v0, v10, v1}, Lh2/a;-><init>(Lh2/a$a;I)V

    iput-object v0, v10, Lcom/mega/engineeringmode/databinding/ActivityCertificateUsbactivityBindingImpl;->k1:Lh2/a;

    invoke-virtual/range {p0 .. p0}, Lcom/mega/engineeringmode/databinding/ActivityCertificateUsbactivityBindingImpl;->invalidateAll()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 4

    const/4 v0, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "CertificateEvent"

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    iget-object p0, p0, Lcom/mega/engineeringmode/databinding/ActivityCertificateUsbactivityBinding;->d1:Le2/a;

    if-eqz p0, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "usbTestDevice "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Le2/a;->a:I

    invoke-static {p1, v1, v3}, Landroidx/activity/result/a;->p(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget p1, p0, Le2/a;->a:I

    invoke-static {p1, v2}, Le2/a;->a(II)V

    iget p0, p0, Le2/a;->a:I

    invoke-static {p0, v0}, Le2/a;->b(II)V

    goto/16 :goto_0

    :pswitch_1
    iget-object p0, p0, Lcom/mega/engineeringmode/databinding/ActivityCertificateUsbactivityBinding;->d1:Le2/a;

    if-eqz p0, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "usbTestHost "

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Le2/a;->a:I

    invoke-static {p1, v2, v3}, Landroidx/activity/result/a;->p(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget p1, p0, Le2/a;->a:I

    invoke-static {p1, v1}, Le2/a;->a(II)V

    iget p0, p0, Le2/a;->a:I

    invoke-static {p0, v0}, Le2/a;->b(II)V

    goto :goto_0

    :pswitch_2
    iget-object p0, p0, Lcom/mega/engineeringmode/databinding/ActivityCertificateUsbactivityBinding;->d1:Le2/a;

    if-eqz p0, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "usbTestSe "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Le2/a;->a:I

    invoke-static {p1, v0, v3}, Landroidx/activity/result/a;->p(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    const/4 p1, 0x2

    iget p0, p0, Le2/a;->a:I

    invoke-static {p0, p1}, Le2/a;->b(II)V

    goto :goto_0

    :pswitch_3
    iget-object p0, p0, Lcom/mega/engineeringmode/databinding/ActivityCertificateUsbactivityBinding;->d1:Le2/a;

    if-eqz p0, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "usbTestK "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Le2/a;->a:I

    invoke-static {p1, v0, v3}, Landroidx/activity/result/a;->p(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget p0, p0, Le2/a;->a:I

    invoke-static {p0, v2}, Le2/a;->b(II)V

    goto :goto_0

    :pswitch_4
    iget-object p0, p0, Lcom/mega/engineeringmode/databinding/ActivityCertificateUsbactivityBinding;->d1:Le2/a;

    if-eqz p0, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "usbTestJ "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Le2/a;->a:I

    invoke-static {p1, v0, v3}, Landroidx/activity/result/a;->p(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget p0, p0, Le2/a;->a:I

    invoke-static {p0, v1}, Le2/a;->b(II)V

    goto :goto_0

    :pswitch_5
    iget-object p0, p0, Lcom/mega/engineeringmode/databinding/ActivityCertificateUsbactivityBinding;->d1:Le2/a;

    if-eqz p0, :cond_0

    iput v2, p0, Le2/a;->a:I

    iget-object p0, p0, Le2/a;->b:Landroidx/lifecycle/MutableLiveData;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_6
    iget-object p0, p0, Lcom/mega/engineeringmode/databinding/ActivityCertificateUsbactivityBinding;->d1:Le2/a;

    if-eqz p0, :cond_0

    iput v1, p0, Le2/a;->a:I

    iget-object p0, p0, Le2/a;->b:Landroidx/lifecycle/MutableLiveData;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final b(Le2/a;)V
    .locals 4
    .param p1    # Le2/a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/mega/engineeringmode/databinding/ActivityCertificateUsbactivityBinding;->d1:Le2/a;

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/mega/engineeringmode/databinding/ActivityCertificateUsbactivityBindingImpl;->l1:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/mega/engineeringmode/databinding/ActivityCertificateUsbactivityBindingImpl;->l1:J

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0xd

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
    iget-wide v0, p0, Lcom/mega/engineeringmode/databinding/ActivityCertificateUsbactivityBindingImpl;->l1:J

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/mega/engineeringmode/databinding/ActivityCertificateUsbactivityBindingImpl;->l1:J

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v4, 0x2

    and-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mega/engineeringmode/databinding/ActivityCertificateUsbactivityBinding;->c:Landroid/widget/Button;

    iget-object v1, p0, Lcom/mega/engineeringmode/databinding/ActivityCertificateUsbactivityBindingImpl;->j1:Lh2/a;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/mega/engineeringmode/databinding/ActivityCertificateUsbactivityBinding;->r:Landroid/widget/Button;

    iget-object v1, p0, Lcom/mega/engineeringmode/databinding/ActivityCertificateUsbactivityBindingImpl;->k1:Lh2/a;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/mega/engineeringmode/databinding/ActivityCertificateUsbactivityBinding;->x:Landroid/widget/Button;

    iget-object v1, p0, Lcom/mega/engineeringmode/databinding/ActivityCertificateUsbactivityBindingImpl;->f1:Lh2/a;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/mega/engineeringmode/databinding/ActivityCertificateUsbactivityBinding;->y:Landroid/widget/Button;

    iget-object v1, p0, Lcom/mega/engineeringmode/databinding/ActivityCertificateUsbactivityBindingImpl;->e1:Lh2/a;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/mega/engineeringmode/databinding/ActivityCertificateUsbactivityBinding;->Z:Landroid/widget/Button;

    iget-object v1, p0, Lcom/mega/engineeringmode/databinding/ActivityCertificateUsbactivityBindingImpl;->i1:Lh2/a;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/mega/engineeringmode/databinding/ActivityCertificateUsbactivityBinding;->b1:Landroid/widget/Button;

    iget-object v1, p0, Lcom/mega/engineeringmode/databinding/ActivityCertificateUsbactivityBindingImpl;->g1:Lh2/a;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/mega/engineeringmode/databinding/ActivityCertificateUsbactivityBinding;->c1:Landroid/widget/Button;

    iget-object p0, p0, Lcom/mega/engineeringmode/databinding/ActivityCertificateUsbactivityBindingImpl;->h1:Lh2/a;

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
    iget-wide v0, p0, Lcom/mega/engineeringmode/databinding/ActivityCertificateUsbactivityBindingImpl;->l1:J

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
    iput-wide v0, p0, Lcom/mega/engineeringmode/databinding/ActivityCertificateUsbactivityBindingImpl;->l1:J

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

    const/16 v0, 0xd

    if-ne v0, p1, :cond_0

    check-cast p2, Le2/a;

    invoke-virtual {p0, p2}, Lcom/mega/engineeringmode/databinding/ActivityCertificateUsbactivityBindingImpl;->b(Le2/a;)V

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
