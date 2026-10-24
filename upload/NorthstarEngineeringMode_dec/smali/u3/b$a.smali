.class public final Lu3/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lu3/b;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lr3/c;",
        ">;"
    }
.end annotation


# instance fields
.field public Z:I

.field public final synthetic b1:Lu3/b;

.field public c:I

.field public r:I

.field public x:I

.field public y:Lr3/c;


# direct methods
.method public constructor <init>(Lu3/b;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lu3/b$a;->b1:Lu3/b;

    const/4 v0, -0x1

    iput v0, p0, Lu3/b$a;->c:I

    iget v0, p1, Lu3/b;->b:I

    iget-object p1, p1, Lu3/b;->a:Ljava/lang/CharSequence;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-ltz p1, :cond_2

    if-gez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    if-le v0, p1, :cond_1

    move v0, p1

    :cond_1
    :goto_0
    iput v0, p0, Lu3/b$a;->r:I

    iput v0, p0, Lu3/b$a;->x:I

    return-void

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot coerce value to an empty range: maximum "

    const-string v1, " is less than minimum 0."

    invoke-static {v0, p1, v1}, La4/a;->d(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final a()V
    .locals 7

    iget v0, p0, Lu3/b$a;->x:I

    const/4 v1, 0x0

    if-gez v0, :cond_0

    iput v1, p0, Lu3/b$a;->c:I

    const/4 v0, 0x0

    iput-object v0, p0, Lu3/b$a;->y:Lr3/c;

    goto/16 :goto_2

    :cond_0
    iget-object v2, p0, Lu3/b$a;->b1:Lu3/b;

    iget v3, v2, Lu3/b;->c:I

    const/4 v4, -0x1

    const/4 v5, 0x1

    if-lez v3, :cond_1

    iget v6, p0, Lu3/b$a;->Z:I

    add-int/2addr v6, v5

    iput v6, p0, Lu3/b$a;->Z:I

    if-ge v6, v3, :cond_2

    :cond_1
    iget-object v3, v2, Lu3/b;->a:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-le v0, v3, :cond_3

    :cond_2
    new-instance v0, Lr3/c;

    iget v1, p0, Lu3/b$a;->r:I

    iget-object v2, v2, Lu3/b;->a:Ljava/lang/CharSequence;

    invoke-static {v2}, Lu3/h;->h0(Ljava/lang/CharSequence;)I

    move-result v2

    invoke-direct {v0, v1, v2, v5}, Lr3/a;-><init>(III)V

    iput-object v0, p0, Lu3/b$a;->y:Lr3/c;

    iput v4, p0, Lu3/b$a;->x:I

    goto :goto_1

    :cond_3
    iget-object v0, v2, Lu3/b;->d:Ln3/p;

    iget-object v3, v2, Lu3/b;->a:Ljava/lang/CharSequence;

    iget v6, p0, Lu3/b$a;->x:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v3, v6}, Ln3/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf3/b;

    if-nez v0, :cond_4

    new-instance v0, Lr3/c;

    iget v1, p0, Lu3/b$a;->r:I

    iget-object v2, v2, Lu3/b;->a:Ljava/lang/CharSequence;

    invoke-static {v2}, Lu3/h;->h0(Ljava/lang/CharSequence;)I

    move-result v2

    invoke-direct {v0, v1, v2, v5}, Lr3/a;-><init>(III)V

    iput-object v0, p0, Lu3/b$a;->y:Lr3/c;

    iput v4, p0, Lu3/b$a;->x:I

    goto :goto_1

    :cond_4
    iget-object v2, v0, Lf3/b;->c:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    iget-object v0, v0, Lf3/b;->r:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    iget v3, p0, Lu3/b$a;->r:I

    const/high16 v4, -0x80000000

    if-gt v2, v4, :cond_5

    sget-object v3, Lr3/c;->y:Lr3/c;

    goto :goto_0

    :cond_5
    new-instance v4, Lr3/c;

    add-int/lit8 v6, v2, -0x1

    invoke-direct {v4, v3, v6, v5}, Lr3/a;-><init>(III)V

    move-object v3, v4

    :goto_0
    iput-object v3, p0, Lu3/b$a;->y:Lr3/c;

    add-int/2addr v2, v0

    iput v2, p0, Lu3/b$a;->r:I

    if-nez v0, :cond_6

    move v1, v5

    :cond_6
    add-int/2addr v2, v1

    iput v2, p0, Lu3/b$a;->x:I

    :goto_1
    iput v5, p0, Lu3/b$a;->c:I

    :goto_2
    return-void
.end method

.method public final hasNext()Z
    .locals 2

    iget v0, p0, Lu3/b$a;->c:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lu3/b$a;->a()V

    :cond_0
    iget p0, p0, Lu3/b$a;->c:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final next()Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lu3/b$a;->c:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lu3/b$a;->a()V

    :cond_0
    iget v0, p0, Lu3/b$a;->c:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lu3/b$a;->y:Lr3/c;

    const-string v2, "null cannot be cast to non-null type kotlin.ranges.IntRange"

    invoke-static {v0, v2}, Lo3/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    iput-object v2, p0, Lu3/b$a;->y:Lr3/c;

    iput v1, p0, Lu3/b$a;->c:I

    return-object v0

    :cond_1
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method

.method public final remove()V
    .locals 1

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Operation is not supported for read-only collection"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
