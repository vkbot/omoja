.class public final Ls/n;
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
        "Landroid/graphics/drawable/BitmapDrawable;",
        ">;",
        "Ll/t;"
    }
.end annotation


# instance fields
.field public final c:Landroid/content/res/Resources;

.field public final r:Ll/x;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ll/x<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Ll/x;)V
    .locals 1
    .param p1    # Landroid/content/res/Resources;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ll/x;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "Ll/x<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Argument must not be null"

    if-eqz p1, :cond_1

    iput-object p1, p0, Ls/n;->c:Landroid/content/res/Resources;

    if-eqz p2, :cond_0

    iput-object p2, p0, Ls/n;->r:Ll/x;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

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
            "Landroid/graphics/drawable/BitmapDrawable;",
            ">;"
        }
    .end annotation

    const-class p0, Landroid/graphics/drawable/BitmapDrawable;

    return-object p0
.end method

.method public final get()Ljava/lang/Object;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Ls/n;->r:Ll/x;

    invoke-interface {v1}, Ll/x;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    iget-object p0, p0, Ls/n;->c:Landroid/content/res/Resources;

    invoke-direct {v0, p0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v0
.end method

.method public final getSize()I
    .locals 0

    iget-object p0, p0, Ls/n;->r:Ll/x;

    invoke-interface {p0}, Ll/x;->getSize()I

    move-result p0

    return p0
.end method

.method public final initialize()V
    .locals 1

    iget-object p0, p0, Ls/n;->r:Ll/x;

    instance-of v0, p0, Ll/t;

    if-eqz v0, :cond_0

    check-cast p0, Ll/t;

    invoke-interface {p0}, Ll/t;->initialize()V

    :cond_0
    return-void
.end method

.method public final recycle()V
    .locals 0

    iget-object p0, p0, Ls/n;->r:Ll/x;

    invoke-interface {p0}, Ll/x;->recycle()V

    return-void
.end method
