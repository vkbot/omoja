.class public Lkotlin/collections/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;
.implements Lt2/a;


# instance fields
.field public final synthetic b:I

.field public c:I

.field public final d:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lkotlin/collections/e;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lkotlin/collections/b;->b:I

    .line 3
    iput-object p1, p0, Lkotlin/collections/b;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>([Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lkotlin/collections/b;->b:I

    const-string v0, "array"

    .line 1
    invoke-static {p1, v0}, Lcom/google/android/material/slider/h;->y(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlin/collections/b;->d:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 4

    iget v0, p0, Lkotlin/collections/b;->b:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lkotlin/collections/b;->d:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget v0, p0, Lkotlin/collections/b;->c:I

    check-cast v3, Lkotlin/collections/e;

    invoke-virtual {v3}, Lkotlin/collections/a;->a()I

    move-result v3

    if-ge v0, v3, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1

    :goto_1
    iget v0, p0, Lkotlin/collections/b;->c:I

    check-cast v3, [Ljava/lang/Object;

    array-length v3, v3

    if-ge v0, v3, :cond_1

    goto :goto_2

    :cond_1
    move v1, v2

    :goto_2
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final next()Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lkotlin/collections/b;->b:I

    iget-object v1, p0, Lkotlin/collections/b;->d:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0}, Lkotlin/collections/b;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    check-cast v1, Lkotlin/collections/e;

    iget v0, p0, Lkotlin/collections/b;->c:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lkotlin/collections/b;->c:I

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :goto_0
    :try_start_0
    check-cast v1, [Ljava/lang/Object;

    iget v0, p0, Lkotlin/collections/b;->c:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lkotlin/collections/b;->c:I

    aget-object v0, v1, v0
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    iget v1, p0, Lkotlin/collections/b;->c:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lkotlin/collections/b;->c:I

    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final remove()V
    .locals 2

    iget v0, p0, Lkotlin/collections/b;->b:I

    const-string v1, "Operation is not supported for read-only collection"

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :goto_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
