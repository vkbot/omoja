.class public final Landroidx/lifecycle/d0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public c:Z

.field public final d:Ljava/lang/Object;

.field public final e:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroidx/lifecycle/p;Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Landroidx/lifecycle/d0;->b:I

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean v0, p0, Landroidx/lifecycle/d0;->c:Z

    .line 3
    iput-object p1, p0, Landroidx/lifecycle/d0;->d:Ljava/lang/Object;

    .line 4
    iput-object p2, p0, Landroidx/lifecycle/d0;->e:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/material/behavior/SwipeDismissBehavior;Landroid/view/View;Z)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Landroidx/lifecycle/d0;->b:I

    .line 5
    iput-object p1, p0, Landroidx/lifecycle/d0;->e:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p2, p0, Landroidx/lifecycle/d0;->d:Ljava/lang/Object;

    .line 7
    iput-boolean p3, p0, Landroidx/lifecycle/d0;->c:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Landroidx/lifecycle/d0;->b:I

    iget-object v1, p0, Landroidx/lifecycle/d0;->e:Ljava/lang/Object;

    iget-object v2, p0, Landroidx/lifecycle/d0;->d:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-boolean v0, p0, Landroidx/lifecycle/d0;->c:Z

    if-nez v0, :cond_0

    check-cast v2, Landroidx/lifecycle/p;

    check-cast v1, Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {v2, v1}, Landroidx/lifecycle/p;->e(Landroidx/lifecycle/Lifecycle$Event;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/lifecycle/d0;->c:Z

    :cond_0
    return-void

    :goto_0
    check-cast v1, Lcom/google/android/material/behavior/SwipeDismissBehavior;

    iget-object v0, v1, Lcom/google/android/material/behavior/SwipeDismissBehavior;->a:Lj0/e;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lj0/e;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    check-cast v2, Landroid/view/View;

    sget-object v0, Lg0/s0;->a:Ljava/util/WeakHashMap;

    invoke-static {v2, p0}, Lg0/a0;->m(Landroid/view/View;Ljava/lang/Runnable;)V

    :cond_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
