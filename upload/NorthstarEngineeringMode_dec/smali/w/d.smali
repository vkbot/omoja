.class public final Lw/d;
.super Lu/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lu/b<",
        "Lcom/bumptech/glide/load/resource/gif/GifDrawable;",
        ">;"
    }
.end annotation


# virtual methods
.method public final a()Ljava/lang/Class;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/bumptech/glide/load/resource/gif/GifDrawable;",
            ">;"
        }
    .end annotation

    const-class p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;

    return-object p0
.end method

.method public final getSize()I
    .locals 1

    iget-object p0, p0, Lu/b;->c:Landroid/graphics/drawable/Drawable;

    check-cast p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;

    iget-object p0, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->a:Lcom/bumptech/glide/load/resource/gif/GifDrawable$a;

    iget-object p0, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable$a;->a:Lcom/bumptech/glide/load/resource/gif/a;

    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/a;->a:Lh/a;

    invoke-interface {v0}, Lh/a;->b()I

    move-result v0

    iget p0, p0, Lcom/bumptech/glide/load/resource/gif/a;->o:I

    add-int/2addr v0, p0

    return v0
.end method

.method public final initialize()V
    .locals 0

    iget-object p0, p0, Lu/b;->c:Landroid/graphics/drawable/Drawable;

    check-cast p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;

    iget-object p0, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->a:Lcom/bumptech/glide/load/resource/gif/GifDrawable$a;

    iget-object p0, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable$a;->a:Lcom/bumptech/glide/load/resource/gif/a;

    iget-object p0, p0, Lcom/bumptech/glide/load/resource/gif/a;->l:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->prepareToDraw()V

    return-void
.end method

.method public final recycle()V
    .locals 4

    iget-object p0, p0, Lu/b;->c:Landroid/graphics/drawable/Drawable;

    check-cast p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;

    invoke-virtual {p0}, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->stop()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->d:Z

    iget-object p0, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->a:Lcom/bumptech/glide/load/resource/gif/GifDrawable$a;

    iget-object p0, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable$a;->a:Lcom/bumptech/glide/load/resource/gif/a;

    iget-object v1, p0, Lcom/bumptech/glide/load/resource/gif/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Lcom/bumptech/glide/load/resource/gif/a;->l:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/bumptech/glide/load/resource/gif/a;->e:Lm/d;

    invoke-interface {v3, v1}, Lm/d;->c(Landroid/graphics/Bitmap;)V

    iput-object v2, p0, Lcom/bumptech/glide/load/resource/gif/a;->l:Landroid/graphics/Bitmap;

    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/bumptech/glide/load/resource/gif/a;->f:Z

    iget-object v1, p0, Lcom/bumptech/glide/load/resource/gif/a;->i:Lcom/bumptech/glide/load/resource/gif/a$a;

    iget-object v3, p0, Lcom/bumptech/glide/load/resource/gif/a;->d:Lcom/bumptech/glide/h;

    if-eqz v1, :cond_1

    invoke-virtual {v3, v1}, Lcom/bumptech/glide/h;->k(Lc0/c;)V

    iput-object v2, p0, Lcom/bumptech/glide/load/resource/gif/a;->i:Lcom/bumptech/glide/load/resource/gif/a$a;

    :cond_1
    iget-object v1, p0, Lcom/bumptech/glide/load/resource/gif/a;->k:Lcom/bumptech/glide/load/resource/gif/a$a;

    if-eqz v1, :cond_2

    invoke-virtual {v3, v1}, Lcom/bumptech/glide/h;->k(Lc0/c;)V

    iput-object v2, p0, Lcom/bumptech/glide/load/resource/gif/a;->k:Lcom/bumptech/glide/load/resource/gif/a$a;

    :cond_2
    iget-object v1, p0, Lcom/bumptech/glide/load/resource/gif/a;->n:Lcom/bumptech/glide/load/resource/gif/a$a;

    if-eqz v1, :cond_3

    invoke-virtual {v3, v1}, Lcom/bumptech/glide/h;->k(Lc0/c;)V

    iput-object v2, p0, Lcom/bumptech/glide/load/resource/gif/a;->n:Lcom/bumptech/glide/load/resource/gif/a$a;

    :cond_3
    iget-object v1, p0, Lcom/bumptech/glide/load/resource/gif/a;->a:Lh/a;

    invoke-interface {v1}, Lh/a;->clear()V

    iput-boolean v0, p0, Lcom/bumptech/glide/load/resource/gif/a;->j:Z

    return-void
.end method
