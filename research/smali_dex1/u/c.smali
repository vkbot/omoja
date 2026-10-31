.class public final Lu/c;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Lh/l;


# instance fields
.field public final b:Lh/l;


# direct methods
.method public constructor <init>(Lh/l;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "Argument must not be null"

    .line 5
    .line 6
    invoke-static {p1, v0}, Lc0/g;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lu/c;->b:Lh/l;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lj/d0;II)Lj/d0;
    .registers 9

    .line 1
    invoke-interface {p2}, Lj/d0;->get()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lu/b;

    .line 6
    .line 7
    invoke-static {p1}, Lcom/bumptech/glide/b;->a(Landroid/content/Context;)Lcom/bumptech/glide/b;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    iget-object v1, v1, Lcom/bumptech/glide/b;->b:Lk/b;

    .line 12
    .line 13
    iget-object v2, v0, Lu/b;->b:Lr3/a;

    .line 14
    .line 15
    iget-object v2, v2, Lr3/a;->b:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v2, Lu/f;

    .line 18
    .line 19
    iget-object v2, v2, Lu/f;->l:Landroid/graphics/Bitmap;

    .line 20
    .line 21
    new-instance v3, Lq/e;

    .line 22
    .line 23
    invoke-direct {v3, v2, v1}, Lq/e;-><init>(Landroid/graphics/Bitmap;Lk/b;)V

    .line 24
    .line 25
    .line 26
    iget-object v1, p0, Lu/c;->b:Lh/l;

    .line 27
    .line 28
    invoke-interface {v1, p1, v3, p3, p4}, Lh/l;->a(Landroid/content/Context;Lj/d0;II)Lj/d0;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result p3

    .line 36
    if-nez p3, :cond_28

    .line 37
    .line 38
    invoke-virtual {v3}, Lq/e;->recycle()V

    .line 39
    .line 40
    .line 41
    :cond_28
    invoke-interface {p1}, Lj/d0;->get()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    check-cast p1, Landroid/graphics/Bitmap;

    .line 46
    .line 47
    iget-object p3, v0, Lu/b;->b:Lr3/a;

    .line 48
    .line 49
    iget-object p3, p3, Lr3/a;->b:Ljava/lang/Object;

    .line 50
    .line 51
    check-cast p3, Lu/f;

    .line 52
    .line 53
    invoke-virtual {p3, v1, p1}, Lu/f;->c(Lh/l;Landroid/graphics/Bitmap;)V

    .line 54
    .line 55
    .line 56
    return-object p2
.end method

.method public final b(Ljava/security/MessageDigest;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lu/c;->b:Lh/l;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lh/e;->b(Ljava/security/MessageDigest;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 3

    .line 1
    instance-of v0, p1, Lu/c;

    .line 2
    .line 3
    if-eqz v0, :cond_f

    .line 4
    .line 5
    check-cast p1, Lu/c;

    .line 6
    .line 7
    iget-object v0, p0, Lu/c;->b:Lh/l;

    .line 8
    .line 9
    iget-object p1, p1, Lu/c;->b:Lh/l;

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    return p1

    .line 16
    :cond_f
    const/4 p1, 0x0

    .line 17
    return p1
.end method

.method public final hashCode()I
    .registers 2

    .line 1
    iget-object v0, p0, Lu/c;->b:Lh/l;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method
