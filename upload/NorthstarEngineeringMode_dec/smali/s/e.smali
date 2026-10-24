.class public final Ls/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/j;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Li/j<",
        "Ljava/nio/ByteBuffer;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Ls/h;


# direct methods
.method public constructor <init>(Ls/h;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ls/e;->a:Ls/h;

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

    check-cast p1, Ljava/nio/ByteBuffer;

    iget-object p0, p0, Ls/e;->a:Ls/h;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x1

    return p0
.end method

.method public final b(Ljava/lang/Object;IILi/h;)Ll/x;
    .locals 7
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Li/h;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Ljava/nio/ByteBuffer;

    sget v0, Lf0/a;->a:I

    new-instance v0, Lf0/a$a;

    invoke-direct {v0, p1}, Lf0/a$a;-><init>(Ljava/nio/ByteBuffer;)V

    sget-object v6, Ls/h;->j:Ls/h$a;

    new-instance v2, Ls/m$a;

    iget-object v1, p0, Ls/e;->a:Ls/h;

    iget-object p0, v1, Ls/h;->d:Ljava/util/List;

    iget-object p1, v1, Ls/h;->c:Lm/b;

    invoke-direct {v2, p1, v0, p0}, Ls/m$a;-><init>(Lm/b;Ljava/io/InputStream;Ljava/util/List;)V

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-virtual/range {v1 .. v6}, Ls/h;->a(Ls/m;IILi/h;Ls/h$b;)Ls/d;

    move-result-object p0

    return-object p0
.end method
