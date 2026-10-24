.class public final Lx/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lx/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lx/e<",
        "Landroid/graphics/drawable/Drawable;",
        "[B>;"
    }
.end annotation


# instance fields
.field public final a:Lm/d;

.field public final b:Lx/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx/e<",
            "Landroid/graphics/Bitmap;",
            "[B>;"
        }
    .end annotation
.end field

.field public final c:Lx/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx/e<",
            "Lcom/bumptech/glide/load/resource/gif/GifDrawable;",
            "[B>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lm/d;Lx/a;Lx/d;)V
    .locals 0
    .param p1    # Lm/d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lx/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lx/d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lx/c;->a:Lm/d;

    iput-object p2, p0, Lx/c;->b:Lx/e;

    iput-object p3, p0, Lx/c;->c:Lx/e;

    return-void
.end method


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
            "Landroid/graphics/drawable/Drawable;",
            ">;",
            "Li/h;",
            ")",
            "Ll/x<",
            "[B>;"
        }
    .end annotation

    invoke-interface {p1}, Ll/x;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    instance-of v1, v0, Landroid/graphics/drawable/BitmapDrawable;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v2, Ls/d;

    iget-object v0, p0, Lx/c;->a:Lm/d;

    invoke-direct {v2, p1, v0}, Ls/d;-><init>(Landroid/graphics/Bitmap;Lm/d;)V

    :goto_0
    iget-object p0, p0, Lx/c;->b:Lx/e;

    invoke-interface {p0, v2, p2}, Lx/e;->a(Ll/x;Li/h;)Ll/x;

    move-result-object p0

    return-object p0

    :cond_1
    instance-of v0, v0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;

    if-eqz v0, :cond_2

    iget-object p0, p0, Lx/c;->c:Lx/e;

    invoke-interface {p0, p1, p2}, Lx/e;->a(Ll/x;Li/h;)Ll/x;

    move-result-object p0

    return-object p0

    :cond_2
    return-object v2
.end method
