.class public Lk/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lh0/o;


# instance fields
.field public final synthetic b:I

.field public final c:Ljava/lang/Object;

.field public d:I


# direct methods
.method public constructor <init>(II)V
    .locals 2

    iput p2, p0, Lk/f;->b:I

    const/4 v0, 0x1

    const-string v1, "The max pool size must be > 0"

    if-eq p2, v0, :cond_1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-lez p1, :cond_0

    .line 2
    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, Lk/f;->c:Ljava/lang/Object;

    return-void

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4
    :cond_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-lez p1, :cond_2

    .line 5
    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, Lk/f;->c:Ljava/lang/Object;

    return-void

    .line 6
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;I)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lk/f;->b:I

    .line 7
    iput-object p1, p0, Lk/f;->c:Ljava/lang/Object;

    iput p2, p0, Lk/f;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 4

    iget v0, p0, Lk/f;->b:I

    iget-object v1, p0, Lk/f;->c:Ljava/lang/Object;

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget v0, p0, Lk/f;->d:I

    if-lez v0, :cond_0

    add-int/lit8 v0, v0, -0x1

    check-cast v1, [Ljava/lang/Object;

    aget-object v3, v1, v0

    aput-object v2, v1, v0

    iput v0, p0, Lk/f;->d:I

    move-object v2, v3

    :cond_0
    return-object v2

    :goto_0
    iget v0, p0, Lk/f;->d:I

    if-lez v0, :cond_1

    add-int/lit8 v0, v0, -0x1

    check-cast v1, [Ljava/lang/Object;

    aget-object v3, v1, v0

    aput-object v2, v1, v0

    iput v0, p0, Lk/f;->d:I

    move-object v2, v3

    :cond_1
    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public b(Ljava/lang/Object;)Z
    .locals 6

    iget v0, p0, Lk/f;->b:I

    const/4 v1, 0x0

    iget-object v2, p0, Lk/f;->c:Ljava/lang/Object;

    const/4 v3, 0x1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget v0, p0, Lk/f;->d:I

    check-cast v2, [Ljava/lang/Object;

    array-length v4, v2

    if-ge v0, v4, :cond_0

    aput-object p1, v2, v0

    add-int/2addr v0, v3

    iput v0, p0, Lk/f;->d:I

    move v1, v3

    :cond_0
    return v1

    :goto_0
    move v0, v1

    :goto_1
    iget v4, p0, Lk/f;->d:I

    if-ge v0, v4, :cond_2

    move-object v5, v2

    check-cast v5, [Ljava/lang/Object;

    aget-object v5, v5, v0

    if-ne v5, p1, :cond_1

    move v0, v3

    goto :goto_2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move v0, v1

    :goto_2
    if-nez v0, :cond_4

    check-cast v2, [Ljava/lang/Object;

    array-length v0, v2

    if-ge v4, v0, :cond_3

    aput-object p1, v2, v4

    add-int/2addr v4, v3

    iput v4, p0, Lk/f;->d:I

    move v1, v3

    :cond_3
    return v1

    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Already in the pool!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final f(Landroid/view/View;)Z
    .locals 1

    iget-object p1, p0, Lk/f;->c:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iget v0, p0, Lk/f;->d:I

    invoke-virtual {p1, v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->A(I)V

    const/4 p1, 0x1

    return p1
.end method
