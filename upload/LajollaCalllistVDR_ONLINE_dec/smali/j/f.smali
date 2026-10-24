.class public final Lj/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field public final b:I

.field public c:I

.field public d:I

.field public e:Z

.field public final synthetic f:Landroidx/appcompat/view/menu/e;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/e;I)V
    .locals 1

    iput-object p1, p0, Lj/f;->f:Landroidx/appcompat/view/menu/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lj/f;->e:Z

    iput p2, p0, Lj/f;->b:I

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/e;->g()I

    move-result p1

    iput p1, p0, Lj/f;->c:I

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 2

    iget v0, p0, Lj/f;->d:I

    iget v1, p0, Lj/f;->c:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final next()Ljava/lang/Object;
    .locals 3

    invoke-virtual {p0}, Lj/f;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lj/f;->d:I

    iget v1, p0, Lj/f;->b:I

    iget-object v2, p0, Lj/f;->f:Landroidx/appcompat/view/menu/e;

    invoke-virtual {v2, v0, v1}, Landroidx/appcompat/view/menu/e;->e(II)Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lj/f;->d:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lj/f;->d:I

    iput-boolean v2, p0, Lj/f;->e:Z

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final remove()V
    .locals 2

    iget-boolean v0, p0, Lj/f;->e:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lj/f;->d:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lj/f;->d:I

    iget v1, p0, Lj/f;->c:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lj/f;->c:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lj/f;->e:Z

    iget-object v1, p0, Lj/f;->f:Landroidx/appcompat/view/menu/e;

    invoke-virtual {v1, v0}, Landroidx/appcompat/view/menu/e;->k(I)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
