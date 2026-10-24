.class public final Ls/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ll/x;
.implements Ll/t;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ll/x<",
        "Landroid/graphics/Bitmap;",
        ">;",
        "Ll/t;"
    }
.end annotation


# instance fields
.field public final c:Landroid/graphics/Bitmap;

.field public final r:Lm/d;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;Lm/d;)V
    .locals 0
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lm/d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    iput-object p1, p0, Ls/d;->c:Landroid/graphics/Bitmap;

    if-eqz p2, :cond_0

    iput-object p2, p0, Ls/d;->r:Lm/d;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "BitmapPool must not be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Bitmap must not be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final a()Ljava/lang/Class;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    const-class p0, Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public final get()Ljava/lang/Object;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Ls/d;->c:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public final getSize()I
    .locals 0

    iget-object p0, p0, Ls/d;->c:Landroid/graphics/Bitmap;

    invoke-static {p0}, Lf0/j;->c(Landroid/graphics/Bitmap;)I

    move-result p0

    return p0
.end method

.method public final initialize()V
    .locals 0

    iget-object p0, p0, Ls/d;->c:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->prepareToDraw()V

    return-void
.end method

.method public final recycle()V
    .locals 1

    iget-object v0, p0, Ls/d;->r:Lm/d;

    iget-object p0, p0, Ls/d;->c:Landroid/graphics/Bitmap;

    invoke-interface {v0, p0}, Lm/d;->c(Landroid/graphics/Bitmap;)V

    return-void
.end method
