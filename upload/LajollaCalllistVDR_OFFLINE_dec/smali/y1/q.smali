.class public final Ly1/q;
.super Ly1/w;
.source "SourceFile"


# instance fields
.field public final synthetic b:Ljava/util/List;

.field public final synthetic c:Landroid/graphics/Matrix;


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;Landroid/graphics/Matrix;)V
    .locals 0

    iput-object p1, p0, Ly1/q;->b:Ljava/util/List;

    iput-object p2, p0, Ly1/q;->c:Landroid/graphics/Matrix;

    invoke-direct {p0}, Ly1/w;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/Matrix;Lx1/a;ILandroid/graphics/Canvas;)V
    .locals 2

    iget-object p1, p0, Ly1/q;->b:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ly1/w;

    iget-object v1, p0, Ly1/q;->c:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1, p2, p3, p4}, Ly1/w;->a(Landroid/graphics/Matrix;Lx1/a;ILandroid/graphics/Canvas;)V

    goto :goto_0

    :cond_0
    return-void
.end method
