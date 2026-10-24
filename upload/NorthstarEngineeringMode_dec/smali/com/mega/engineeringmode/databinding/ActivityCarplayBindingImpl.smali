.class public Lcom/mega/engineeringmode/databinding/ActivityCarplayBindingImpl;
.super Lcom/mega/engineeringmode/databinding/ActivityCarplayBinding;
.source "SourceFile"

# interfaces
.implements Lh2/a$a;


# static fields
.field public static final c1:Landroid/util/SparseIntArray;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# instance fields
.field public final Z:Lh2/a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public b1:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/mega/engineeringmode/databinding/ActivityCarplayBindingImpl;->c1:Landroid/util/SparseIntArray;

    const v1, 0x7f0a00f3

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0a00f2

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Landroidx/databinding/DataBindingComponent;)V
    .locals 9
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/databinding/DataBindingComponent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    sget-object v0, Lcom/mega/engineeringmode/databinding/ActivityCarplayBindingImpl;->c1:Landroid/util/SparseIntArray;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-static {p2, p1, v1, v2, v0}, Landroidx/databinding/ViewDataBinding;->mapBindings(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x3

    aget-object v1, v0, v1

    move-object v6, v1

    check-cast v6, Landroid/widget/TextView;

    const/4 v1, 0x2

    aget-object v1, v0, v1

    move-object v7, v1

    check-cast v7, Landroid/widget/TextView;

    const/4 v1, 0x1

    aget-object v3, v0, v1

    move-object v8, v3

    check-cast v8, Landroid/widget/Button;

    move-object v3, p0

    move-object v4, p2

    move-object v5, p1

    invoke-direct/range {v3 .. v8}, Lcom/mega/engineeringmode/databinding/ActivityCarplayBinding;-><init>(Ljava/lang/Object;Landroid/view/View;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/Button;)V

    const-wide/16 v3, -0x1

    iput-wide v3, p0, Lcom/mega/engineeringmode/databinding/ActivityCarplayBindingImpl;->b1:J

    iget-object p2, p0, Lcom/mega/engineeringmode/databinding/ActivityCarplayBinding;->x:Landroid/widget/Button;

    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const/4 p2, 0x0

    aget-object p2, v0, p2

    check-cast p2, Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Landroidx/databinding/ViewDataBinding;->setRootTag(Landroid/view/View;)V

    new-instance p1, Lh2/a;

    invoke-direct {p1, p0, v1}, Lh2/a;-><init>(Lh2/a$a;I)V

    iput-object p1, p0, Lcom/mega/engineeringmode/databinding/ActivityCarplayBindingImpl;->Z:Lh2/a;

    invoke-virtual {p0}, Lcom/mega/engineeringmode/databinding/ActivityCarplayBindingImpl;->invalidateAll()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 3

    iget-object p0, p0, Lcom/mega/engineeringmode/databinding/ActivityCarplayBinding;->y:Lcom/mega/engineeringmode/function/carplay/CarplayActivity;

    if-eqz p0, :cond_1

    const-string p1, "CarplayActivity"

    const-string/jumbo v0, "sheckCarPlayStatus"

    invoke-static {p1, v0}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/mega/engineeringmode/function/carplay/CarplayActivity;->i:Lv2/l;

    if-eqz p1, :cond_1

    const-string v0, "l"

    const-string v1, "getCarPlayConnectionStatus in. "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p1}, Lv2/l;->f()Z

    move-result v2

    if-nez v2, :cond_0

    const-string p1, "getCarPlayConnectionStatus~~mInterface is null"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_1

    :cond_0
    iget-object p1, p1, Lv2/l;->c:Lv2/h;

    invoke-interface {p1}, Lv2/h;->z()I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    invoke-virtual {p0, v1}, Lcom/mega/engineeringmode/function/carplay/CarplayActivity;->n(I)V

    :cond_1
    return-void
.end method

.method public final b(Lcom/mega/engineeringmode/function/carplay/CarplayActivity;)V
    .locals 4
    .param p1    # Lcom/mega/engineeringmode/function/carplay/CarplayActivity;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/mega/engineeringmode/databinding/ActivityCarplayBinding;->y:Lcom/mega/engineeringmode/function/carplay/CarplayActivity;

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/mega/engineeringmode/databinding/ActivityCarplayBindingImpl;->b1:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/mega/engineeringmode/databinding/ActivityCarplayBindingImpl;->b1:J

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x7

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
    iget-wide v0, p0, Lcom/mega/engineeringmode/databinding/ActivityCarplayBindingImpl;->b1:J

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/mega/engineeringmode/databinding/ActivityCarplayBindingImpl;->b1:J

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v4, 0x2

    and-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mega/engineeringmode/databinding/ActivityCarplayBinding;->x:Landroid/widget/Button;

    iget-object p0, p0, Lcom/mega/engineeringmode/databinding/ActivityCarplayBindingImpl;->Z:Lh2/a;

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
    iget-wide v0, p0, Lcom/mega/engineeringmode/databinding/ActivityCarplayBindingImpl;->b1:J

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
    iput-wide v0, p0, Lcom/mega/engineeringmode/databinding/ActivityCarplayBindingImpl;->b1:J

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

    const/4 v0, 0x7

    if-ne v0, p1, :cond_0

    check-cast p2, Lcom/mega/engineeringmode/function/carplay/CarplayActivity;

    invoke-virtual {p0, p2}, Lcom/mega/engineeringmode/databinding/ActivityCarplayBindingImpl;->b(Lcom/mega/engineeringmode/function/carplay/CarplayActivity;)V

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
