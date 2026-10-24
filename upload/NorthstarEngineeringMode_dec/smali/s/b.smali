.class public final Ls/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/k;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Li/k<",
        "Landroid/graphics/drawable/BitmapDrawable;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lm/d;

.field public final b:Li/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/k<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lm/d;Ls/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ls/b;->a:Lm/d;

    iput-object p2, p0, Ls/b;->b:Li/k;

    return-void
.end method


# virtual methods
.method public final a(Li/h;)Li/c;
    .locals 0
    .param p1    # Li/h;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Ls/b;->b:Li/k;

    invoke-interface {p0, p1}, Li/k;->a(Li/h;)Li/c;

    move-result-object p0

    return-object p0
.end method

.method public final b(Ljava/lang/Object;Ljava/io/File;Li/h;)Z
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/io/File;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Li/h;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Ll/x;

    new-instance v0, Ls/d;

    invoke-interface {p1}, Ll/x;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    iget-object v1, p0, Ls/b;->a:Lm/d;

    invoke-direct {v0, p1, v1}, Ls/d;-><init>(Landroid/graphics/Bitmap;Lm/d;)V

    iget-object p0, p0, Ls/b;->b:Li/k;

    invoke-interface {p0, v0, p2, p3}, Li/d;->b(Ljava/lang/Object;Ljava/io/File;Li/h;)Z

    move-result p0

    return p0
.end method
