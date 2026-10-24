.class public final Lm2/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;
.implements Ll2/a;


# instance fields
.field public final a:I

.field public b:Z

.field public c:I

.field public final d:I


# direct methods
.method public constructor <init>(III)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p3, p0, Lm2/b;->d:I

    iput p2, p0, Lm2/b;->a:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-lez p3, :cond_0

    if-gt p1, p2, :cond_1

    goto :goto_0

    :cond_0
    if-lt p1, p2, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lm2/b;->b:Z

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    move p1, p2

    :goto_1
    iput p1, p0, Lm2/b;->c:I

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lm2/b;->b()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public final b()I
    .locals 2

    iget v0, p0, Lm2/b;->c:I

    iget v1, p0, Lm2/b;->a:I

    if-ne v0, v1, :cond_1

    iget-boolean v1, p0, Lm2/b;->b:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lm2/b;->b:Z

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0

    :cond_1
    iget v1, p0, Lm2/b;->d:I

    add-int/2addr v1, v0

    iput v1, p0, Lm2/b;->c:I

    :goto_0
    return v0
.end method

.method public final c()V
    .locals 1

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Operation is not supported for read-only collection"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final hasNext()Z
    .locals 0

    iget-boolean p0, p0, Lm2/b;->b:Z

    return p0
.end method

.method public final bridge synthetic next()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lm2/b;->a()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic remove()V
    .locals 0

    invoke-virtual {p0}, Lm2/b;->c()V

    const/4 p0, 0x0

    throw p0
.end method
