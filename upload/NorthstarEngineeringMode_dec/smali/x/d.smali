.class public final Lx/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lx/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lx/e<",
        "Lcom/bumptech/glide/load/resource/gif/GifDrawable;",
        "[B>;"
    }
.end annotation


# virtual methods
.method public final a(Ll/x;Li/h;)Ll/x;
    .locals 3
    .param p1    # Ll/x;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Li/h;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll/x<",
            "Lcom/bumptech/glide/load/resource/gif/GifDrawable;",
            ">;",
            "Li/h;",
            ")",
            "Ll/x<",
            "[B>;"
        }
    .end annotation

    invoke-interface {p1}, Ll/x;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;

    iget-object p0, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->a:Lcom/bumptech/glide/load/resource/gif/GifDrawable$a;

    iget-object p0, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable$a;->a:Lcom/bumptech/glide/load/resource/gif/a;

    iget-object p0, p0, Lcom/bumptech/glide/load/resource/gif/a;->a:Lh/a;

    invoke-interface {p0}, Lh/a;->getData()Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object p0

    new-instance p1, Lt/b;

    sget p2, Lf0/a;->a:I

    invoke-virtual {p0}, Ljava/nio/Buffer;->isReadOnly()Z

    move-result p2

    if-nez p2, :cond_0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result p2

    if-eqz p2, :cond_0

    new-instance p2, Lf0/a$b;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v1

    invoke-virtual {p0}, Ljava/nio/Buffer;->limit()I

    move-result v2

    invoke-direct {p2, v0, v1, v2}, Lf0/a$b;-><init>([BII)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_1

    iget v0, p2, Lf0/a$b;->a:I

    if-nez v0, :cond_1

    iget-object v0, p2, Lf0/a$b;->c:[B

    array-length v0, v0

    iget p2, p2, Lf0/a$b;->b:I

    if-ne p2, v0, :cond_1

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/Buffer;->limit()I

    move-result p2

    new-array p2, p2, [B

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {p0, p2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    move-object p0, p2

    :goto_1
    invoke-direct {p1, p0}, Lt/b;-><init>([B)V

    return-object p1
.end method
