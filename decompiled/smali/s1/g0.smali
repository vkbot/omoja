.class public final synthetic Ls1/g0;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Ls1/f0;

.field public final synthetic c:I

.field public final synthetic d:I

.field public final synthetic e:I

.field public final synthetic f:I


# direct methods
.method public synthetic constructor <init>(Ls1/f0;IIII)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ls1/g0;->b:Ls1/f0;

    .line 5
    .line 6
    iput p2, p0, Ls1/g0;->c:I

    .line 7
    .line 8
    iput p3, p0, Ls1/g0;->d:I

    .line 9
    .line 10
    iput p4, p0, Ls1/g0;->e:I

    .line 11
    .line 12
    iput p5, p0, Ls1/g0;->f:I

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Ls1/g0;->b:Ls1/f0;

    .line 2
    .line 3
    iget v1, p0, Ls1/g0;->c:I

    .line 4
    .line 5
    iget v2, p0, Ls1/g0;->d:I

    .line 6
    .line 7
    iget v3, p0, Ls1/g0;->e:I

    .line 8
    .line 9
    iget v4, p0, Ls1/g0;->f:I

    .line 10
    .line 11
    iget-object v5, v0, Ls1/f0;->c:Ls1/q0;

    .line 12
    .line 13
    iget-boolean v5, v5, Ls1/q0;->E:Z

    .line 14
    .line 15
    if-eqz v5, :cond_0

    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    iget-object v5, v0, Ls1/f0;->c:Ls1/q0;

    .line 19
    .line 20
    iput v1, v5, Ls1/q0;->F:I

    .line 21
    .line 22
    iput v2, v5, Ls1/q0;->G:I

    .line 23
    .line 24
    iput v3, v5, Ls1/q0;->H:I

    .line 25
    .line 26
    iput v4, v5, Ls1/q0;->I:I

    .line 27
    .line 28
    invoke-virtual {v5}, Ls1/q0;->C()V

    .line 29
    .line 30
    .line 31
    iget-object v1, v0, Ls1/f0;->c:Ls1/q0;

    .line 32
    .line 33
    iget-object v1, v1, Ls1/q0;->r:Landroid/os/Handler;

    .line 34
    .line 35
    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 36
    .line 37
    .line 38
    iget-object v1, v0, Ls1/f0;->c:Ls1/q0;

    .line 39
    .line 40
    iget-object v1, v1, Ls1/q0;->r:Landroid/os/Handler;

    .line 41
    .line 42
    const-wide/16 v2, 0xbb8

    .line 43
    .line 44
    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 45
    .line 46
    .line 47
    return-void
.end method
