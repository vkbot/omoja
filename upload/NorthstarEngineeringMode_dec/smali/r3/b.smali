.class public final Lr3/b;
.super Lg3/j;
.source "SourceFile"


# instance fields
.field public final c:I

.field public final r:I

.field public x:Z

.field public y:I


# direct methods
.method public constructor <init>(III)V
    .locals 2

    invoke-direct {p0}, Lg3/j;-><init>()V

    iput p3, p0, Lr3/b;->c:I

    iput p2, p0, Lr3/b;->r:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-lez p3, :cond_1

    if-gt p1, p2, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    if-lt p1, p2, :cond_0

    :goto_0
    iput-boolean v0, p0, Lr3/b;->x:Z

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    move p1, p2

    :goto_1
    iput p1, p0, Lr3/b;->y:I

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 2

    iget v0, p0, Lr3/b;->y:I

    iget v1, p0, Lr3/b;->r:I

    if-ne v0, v1, :cond_1

    iget-boolean v1, p0, Lr3/b;->x:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lr3/b;->x:Z

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0

    :cond_1
    iget v1, p0, Lr3/b;->c:I

    add-int/2addr v1, v0

    iput v1, p0, Lr3/b;->y:I

    :goto_0
    return v0
.end method

.method public final hasNext()Z
    .locals 0

    iget-boolean p0, p0, Lr3/b;->x:Z

    return p0
.end method
