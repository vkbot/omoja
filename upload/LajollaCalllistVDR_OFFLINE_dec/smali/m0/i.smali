.class public final Lm0/i;
.super Lm0/h;
.source "SourceFile"


# instance fields
.field public r:Lm0/j;

.field public s:F

.field public t:Z


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1

    sget-object v0, Lu1/i;->q:Lu1/h;

    invoke-direct {p0, p1}, Lm0/h;-><init>(Ljava/lang/Object;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lm0/i;->r:Lm0/j;

    const p1, 0x7f7fffff    # Float.MAX_VALUE

    iput p1, p0, Lm0/i;->s:F

    const/4 p1, 0x0

    iput-boolean p1, p0, Lm0/i;->t:Z

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 4

    iget-object v0, p0, Lm0/i;->r:Lm0/j;

    iget-wide v0, v0, Lm0/j;->b:D

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    const/4 v1, 0x1

    if-lez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    if-ne v0, v2, :cond_2

    iget-boolean v0, p0, Lm0/h;->f:Z

    if-eqz v0, :cond_1

    iput-boolean v1, p0, Lm0/i;->t:Z

    :cond_1
    return-void

    :cond_2
    new-instance p0, Landroid/util/AndroidRuntimeException;

    const-string v0, "Animations may only be started on the main thread"

    invoke-direct {p0, v0}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Spring animations can only come to an end when there is damping"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
