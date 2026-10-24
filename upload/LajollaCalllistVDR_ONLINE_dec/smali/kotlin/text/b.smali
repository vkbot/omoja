.class public final Lkotlin/text/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;
.implements Lt2/a;


# instance fields
.field public b:I

.field public c:I

.field public d:I

.field public e:Lu2/c;

.field public f:I

.field public final synthetic g:Lkotlin/text/c;


# direct methods
.method public constructor <init>(Lkotlin/text/c;)V
    .locals 3

    iput-object p1, p0, Lkotlin/text/b;->g:Lkotlin/text/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lkotlin/text/b;->b:I

    iget v0, p1, Lkotlin/text/c;->b:I

    iget-object p1, p1, Lkotlin/text/c;->a:Ljava/lang/CharSequence;

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
    iput v0, p0, Lkotlin/text/b;->c:I

    iput v0, p0, Lkotlin/text/b;->d:I

    return-void

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot coerce value to an empty range: maximum "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is less than minimum 0."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final a()V
    .locals 7

    iget v0, p0, Lkotlin/text/b;->d:I

    const/4 v1, 0x0

    if-gez v0, :cond_0

    iput v1, p0, Lkotlin/text/b;->b:I

    const/4 v0, 0x0

    iput-object v0, p0, Lkotlin/text/b;->e:Lu2/c;

    goto/16 :goto_1

    :cond_0
    iget-object v2, p0, Lkotlin/text/b;->g:Lkotlin/text/c;

    iget v3, v2, Lkotlin/text/c;->c:I

    const/4 v4, -0x1

    const/4 v5, 0x1

    if-lez v3, :cond_1

    iget v6, p0, Lkotlin/text/b;->f:I

    add-int/2addr v6, v5

    iput v6, p0, Lkotlin/text/b;->f:I

    if-ge v6, v3, :cond_2

    :cond_1
    iget-object v3, v2, Lkotlin/text/c;->a:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-le v0, v3, :cond_3

    :cond_2
    iget v0, p0, Lkotlin/text/b;->c:I

    new-instance v1, Lu2/c;

    iget-object v2, v2, Lkotlin/text/c;->a:Ljava/lang/CharSequence;

    invoke-static {v2}, Lkotlin/text/n;->W1(Ljava/lang/CharSequence;)I

    move-result v2

    invoke-direct {v1, v0, v2}, Lu2/c;-><init>(II)V

    iput-object v1, p0, Lkotlin/text/b;->e:Lu2/c;

    iput v4, p0, Lkotlin/text/b;->d:I

    goto :goto_0

    :cond_3
    iget-object v0, v2, Lkotlin/text/c;->d:Ls2/p;

    iget-object v3, v2, Lkotlin/text/c;->a:Ljava/lang/CharSequence;

    iget v6, p0, Lkotlin/text/b;->d:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v3, v6}, Ls2/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/Pair;

    if-nez v0, :cond_4

    iget v0, p0, Lkotlin/text/b;->c:I

    new-instance v1, Lu2/c;

    iget-object v2, v2, Lkotlin/text/c;->a:Ljava/lang/CharSequence;

    invoke-static {v2}, Lkotlin/text/n;->W1(Ljava/lang/CharSequence;)I

    move-result v2

    invoke-direct {v1, v0, v2}, Lu2/c;-><init>(II)V

    iput-object v1, p0, Lkotlin/text/b;->e:Lu2/c;

    iput v4, p0, Lkotlin/text/b;->d:I

    goto :goto_0

    :cond_4
    invoke-virtual {v0}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    invoke-virtual {v0}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    iget v3, p0, Lkotlin/text/b;->c:I

    invoke-static {v3, v2}, Lcom/google/android/material/slider/h;->F1(II)Lu2/c;

    move-result-object v3

    iput-object v3, p0, Lkotlin/text/b;->e:Lu2/c;

    add-int/2addr v2, v0

    iput v2, p0, Lkotlin/text/b;->c:I

    if-nez v0, :cond_5

    move v1, v5

    :cond_5
    add-int/2addr v2, v1

    iput v2, p0, Lkotlin/text/b;->d:I

    :goto_0
    iput v5, p0, Lkotlin/text/b;->b:I

    :goto_1
    return-void
.end method

.method public final hasNext()Z
    .locals 2

    iget v0, p0, Lkotlin/text/b;->b:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lkotlin/text/b;->a()V

    :cond_0
    iget v0, p0, Lkotlin/text/b;->b:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public final next()Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lkotlin/text/b;->b:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lkotlin/text/b;->a()V

    :cond_0
    iget v0, p0, Lkotlin/text/b;->b:I

    if-eqz v0, :cond_2

    iget-object v0, p0, Lkotlin/text/b;->e:Lu2/c;

    if-eqz v0, :cond_1

    const/4 v2, 0x0

    iput-object v2, p0, Lkotlin/text/b;->e:Lu2/c;

    iput v1, p0, Lkotlin/text/b;->b:I

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null cannot be cast to non-null type kotlin.ranges.IntRange"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final remove()V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation is not supported for read-only collection"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
