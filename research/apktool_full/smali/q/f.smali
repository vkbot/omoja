.class public abstract Lq/f;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Lh/l;


# virtual methods
.method public final a(Landroid/content/Context;Lj/d0;II)Lj/d0;
    .locals 2

    .line 1
    invoke-static {p3, p4}, Lc0/p;->i(II)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_3

    .line 6
    .line 7
    invoke-static {p1}, Lcom/bumptech/glide/b;->a(Landroid/content/Context;)Lcom/bumptech/glide/b;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    iget-object p1, p1, Lcom/bumptech/glide/b;->b:Lk/b;

    .line 12
    .line 13
    invoke-interface {p2}, Lj/d0;->get()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Landroid/graphics/Bitmap;

    .line 18
    .line 19
    const/high16 v1, -0x80000000

    .line 20
    .line 21
    if-ne p3, v1, :cond_0

    .line 22
    .line 23
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    .line 24
    .line 25
    .line 26
    move-result p3

    .line 27
    :cond_0
    if-ne p4, v1, :cond_1

    .line 28
    .line 29
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    .line 30
    .line 31
    .line 32
    move-result p4

    .line 33
    :cond_1
    invoke-virtual {p0, p1, v0, p3, p4}, Lq/f;->c(Lk/b;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    .line 34
    .line 35
    .line 36
    move-result-object p3

    .line 37
    invoke-virtual {v0, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result p4

    .line 41
    if-eqz p4, :cond_2

    .line 42
    .line 43
    return-object p2

    .line 44
    :cond_2
    invoke-static {p3, p1}, Lq/e;->c(Landroid/graphics/Bitmap;Lk/b;)Lq/e;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    return-object p1

    .line 49
    :cond_3
    const-string p1, " or height: "

    .line 50
    .line 51
    const-string p2, " less than or equal to zero and not Target.SIZE_ORIGINAL"

    .line 52
    .line 53
    const-string v0, "Cannot apply transformation on width: "

    .line 54
    .line 55
    invoke-static {v0, p3, p1, p4, p2}, Lai/onnxruntime/b;->s(Ljava/lang/String;ILjava/lang/Object;ILjava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    const/4 p1, 0x0

    .line 59
    return-object p1
.end method

.method public abstract c(Lk/b;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
.end method
