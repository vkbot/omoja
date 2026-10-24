.class public final Landroidx/lifecycle/a0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/n;


# static fields
.field public static final h:Landroidx/lifecycle/a0;


# instance fields
.field public a:I

.field public b:I

.field public c:Z

.field public d:Z

.field public e:Landroid/os/Handler;

.field public final f:Landroidx/lifecycle/p;

.field public final g:Landroidx/activity/b;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/lifecycle/a0;

    invoke-direct {v0}, Landroidx/lifecycle/a0;-><init>()V

    sput-object v0, Landroidx/lifecycle/a0;->h:Landroidx/lifecycle/a0;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroidx/lifecycle/a0;->a:I

    iput v0, p0, Landroidx/lifecycle/a0;->b:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/lifecycle/a0;->c:Z

    iput-boolean v0, p0, Landroidx/lifecycle/a0;->d:Z

    new-instance v0, Landroidx/lifecycle/p;

    invoke-direct {v0, p0}, Landroidx/lifecycle/p;-><init>(Landroidx/lifecycle/n;)V

    iput-object v0, p0, Landroidx/lifecycle/a0;->f:Landroidx/lifecycle/p;

    new-instance v0, Landroidx/activity/b;

    const/16 v1, 0xc

    invoke-direct {v0, v1, p0}, Landroidx/activity/b;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Landroidx/lifecycle/a0;->g:Landroidx/activity/b;

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 2

    iget v0, p0, Landroidx/lifecycle/a0;->b:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Landroidx/lifecycle/a0;->b:I

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Landroidx/lifecycle/a0;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/lifecycle/a0;->f:Landroidx/lifecycle/p;

    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_RESUME:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/p;->e(Landroidx/lifecycle/Lifecycle$Event;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/lifecycle/a0;->c:Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/lifecycle/a0;->e:Landroid/os/Handler;

    iget-object p0, p0, Landroidx/lifecycle/a0;->g:Landroidx/activity/b;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final getLifecycle()Landroidx/lifecycle/i;
    .locals 0

    iget-object p0, p0, Landroidx/lifecycle/a0;->f:Landroidx/lifecycle/p;

    return-object p0
.end method
