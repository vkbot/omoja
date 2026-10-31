.class public final Lu/d;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Lz/d;


# instance fields
.field public final b:I

.field public final c:I

.field public d:Ly/c;

.field public final e:Landroid/os/Handler;

.field public final f:I

.field public final g:J

.field public h:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/os/Handler;IJ)V
    .registers 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/high16 v0, -0x80000000

    .line 5
    .line 6
    invoke-static {v0, v0}, Lc0/p;->i(II)Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-eqz v1, :cond_16

    .line 11
    .line 12
    iput v0, p0, Lu/d;->b:I

    .line 13
    .line 14
    iput v0, p0, Lu/d;->c:I

    .line 15
    .line 16
    iput-object p1, p0, Lu/d;->e:Landroid/os/Handler;

    .line 17
    .line 18
    iput p2, p0, Lu/d;->f:I

    .line 19
    .line 20
    iput-wide p3, p0, Lu/d;->g:J

    .line 21
    .line 22
    return-void

    .line 23
    :cond_16
    const-string p1, "Width and height must both be > 0 or Target#SIZE_ORIGINAL, but given width: -2147483648 and height: -2147483648"

    .line 24
    .line 25
    invoke-static {p1}, Lj1/i;->k(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    const/4 p1, 0x0

    .line 29
    throw p1
.end method


# virtual methods
.method public final a(Ly/f;)V
    .registers 4

    .line 1
    iget v0, p0, Lu/d;->b:I

    .line 2
    .line 3
    iget v1, p0, Lu/d;->c:I

    .line 4
    .line 5
    invoke-virtual {p1, v0, v1}, Ly/f;->m(II)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final b(Ljava/lang/Object;)V
    .registers 5

    .line 1
    check-cast p1, Landroid/graphics/Bitmap;

    .line 2
    .line 3
    iput-object p1, p0, Lu/d;->h:Landroid/graphics/Bitmap;

    .line 4
    .line 5
    const/4 p1, 0x1

    .line 6
    iget-object v0, p0, Lu/d;->e:Landroid/os/Handler;

    .line 7
    .line 8
    invoke-virtual {v0, p1, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    iget-wide v1, p0, Lu/d;->g:J

    .line 13
    .line 14
    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final c()V
    .registers 1

    .line 1
    return-void
.end method

.method public final d(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    .line 1
    return-void
.end method

.method public final e()V
    .registers 1

    .line 1
    return-void
.end method

.method public final f(Ly/f;)V
    .registers 2

    .line 1
    return-void
.end method

.method public final g(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    .line 1
    return-void
.end method

.method public final h(Ly/c;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lu/d;->d:Ly/c;

    .line 2
    .line 3
    return-void
.end method

.method public final i()Ly/c;
    .registers 2

    .line 1
    iget-object v0, p0, Lu/d;->d:Ly/c;

    .line 2
    .line 3
    return-object v0
.end method

.method public final j(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    .line 1
    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lu/d;->h:Landroid/graphics/Bitmap;

    .line 3
    .line 4
    return-void
.end method

.method public final onStart()V
    .registers 1

    .line 1
    return-void
.end method
