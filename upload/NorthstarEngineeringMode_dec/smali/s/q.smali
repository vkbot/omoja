.class public final Ls/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/j;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Li/j<",
        "Landroid/net/Uri;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lu/d;

.field public final b:Lm/d;


# direct methods
.method public constructor <init>(Lu/d;Lm/d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ls/q;->a:Lu/d;

    iput-object p2, p0, Ls/q;->b:Lm/d;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Li/h;)Z
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Li/h;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Landroid/net/Uri;

    const-string p0, "android.resource"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final b(Ljava/lang/Object;IILi/h;)Ll/x;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Li/h;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    check-cast p1, Landroid/net/Uri;

    iget-object p4, p0, Ls/q;->a:Lu/d;

    invoke-virtual {p4, p1}, Lu/d;->c(Landroid/net/Uri;)Ll/x;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    check-cast p1, Lu/b;

    invoke-virtual {p1}, Lu/b;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/Drawable;

    iget-object p0, p0, Ls/q;->b:Lm/d;

    invoke-static {p0, p1, p2, p3}, Ls/i;->a(Lm/d;Landroid/graphics/drawable/Drawable;II)Ls/d;

    move-result-object p0

    :goto_0
    return-object p0
.end method
