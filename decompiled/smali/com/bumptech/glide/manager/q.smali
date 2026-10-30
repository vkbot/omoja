.class public final Lcom/bumptech/glide/manager/q;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Z

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;ZI)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/bumptech/glide/manager/q;->b:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/bumptech/glide/manager/q;->d:Ljava/lang/Object;

    .line 4
    .line 5
    iput-boolean p2, p0, Lcom/bumptech/glide/manager/q;->c:Z

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget v0, p0, Lcom/bumptech/glide/manager/q;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/bumptech/glide/manager/q;->d:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Lo7/e0;

    .line 9
    .line 10
    iget-object v0, v0, Lo7/e0;->c:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v0, Lo7/p0;

    .line 13
    .line 14
    iget-boolean v1, p0, Lcom/bumptech/glide/manager/q;->c:Z

    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    const/4 v1, 0x1

    .line 20
    iput-boolean v1, v0, Lo7/p0;->l:Z

    .line 21
    .line 22
    iget-wide v3, v0, Lo7/p0;->i:J

    .line 23
    .line 24
    const-wide/16 v5, 0x0

    .line 25
    .line 26
    cmp-long v1, v3, v5

    .line 27
    .line 28
    if-lez v1, :cond_0

    .line 29
    .line 30
    iget-object v1, v0, Lo7/p0;->k:Li4/f;

    .line 31
    .line 32
    iput-boolean v2, v1, Li4/f;->a:Z

    .line 33
    .line 34
    invoke-virtual {v1}, Li4/f;->b()V

    .line 35
    .line 36
    .line 37
    :cond_0
    iput-boolean v2, v0, Lo7/p0;->q:Z

    .line 38
    .line 39
    return-void

    .line 40
    :pswitch_0
    iget-object v0, p0, Lcom/bumptech/glide/manager/q;->d:Ljava/lang/Object;

    .line 41
    .line 42
    check-cast v0, Lcom/bumptech/glide/manager/r;

    .line 43
    .line 44
    invoke-static {}, Lc0/p;->a()V

    .line 45
    .line 46
    .line 47
    iget-object v0, v0, Lcom/bumptech/glide/manager/r;->b:Ljava/lang/Object;

    .line 48
    .line 49
    check-cast v0, Lcom/bumptech/glide/manager/s;

    .line 50
    .line 51
    iget-boolean v1, v0, Lcom/bumptech/glide/manager/s;->b:Z

    .line 52
    .line 53
    iget-boolean v2, p0, Lcom/bumptech/glide/manager/q;->c:Z

    .line 54
    .line 55
    iput-boolean v2, v0, Lcom/bumptech/glide/manager/s;->b:Z

    .line 56
    .line 57
    if-eq v1, v2, :cond_1

    .line 58
    .line 59
    iget-object v0, v0, Lcom/bumptech/glide/manager/s;->c:Ljava/lang/Object;

    .line 60
    .line 61
    check-cast v0, Lcom/bumptech/glide/manager/p;

    .line 62
    .line 63
    invoke-virtual {v0, v2}, Lcom/bumptech/glide/manager/p;->a(Z)V

    .line 64
    .line 65
    .line 66
    :cond_1
    return-void

    .line 67
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
