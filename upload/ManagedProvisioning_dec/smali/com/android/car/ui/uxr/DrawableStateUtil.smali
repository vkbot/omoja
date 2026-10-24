.class Lcom/android/car/ui/uxr/DrawableStateUtil;
.super Ljava/lang/Object;
.source "DrawableStateUtil.java"

# interfaces
.implements Lcom/android/car/ui/uxr/DrawableStateView;


# instance fields
.field private mStateToAdd:[I

.field private mStateToRemove:[I

.field private final mView:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/android/car/ui/uxr/DrawableStateUtil;->mView:Landroid/view/View;

    return-void
.end method

.method static synthetic lambda$onCreateDrawableState$0(II)Z
    .locals 0

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$onCreateDrawableState$1(I)Z
    .locals 1

    .line 61
    iget-object p0, p0, Lcom/android/car/ui/uxr/DrawableStateUtil;->mStateToRemove:[I

    invoke-static {p0}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object p0

    new-instance v0, Lcom/android/car/ui/uxr/-$$Lambda$DrawableStateUtil$pTyZDeDfGPctjaUiy17aiq6YrHA;

    invoke-direct {v0, p1}, Lcom/android/car/ui/uxr/-$$Lambda$DrawableStateUtil$pTyZDeDfGPctjaUiy17aiq6YrHA;-><init>(I)V

    invoke-interface {p0, v0}, Ljava/util/stream/IntStream;->noneMatch(Ljava/util/function/IntPredicate;)Z

    move-result p0

    return p0
.end method

.method private static mergeDrawableStates([I[I)[I
    .locals 3

    .line 81
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 82
    aget v1, p0, v0

    if-nez v1, :cond_0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    add-int/lit8 v0, v0, 0x1

    .line 85
    array-length v2, p1

    invoke-static {p1, v1, p0, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p0
.end method


# virtual methods
.method public synthetic lambda$onCreateDrawableState$1$DrawableStateUtil(I)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/car/ui/uxr/DrawableStateUtil;->lambda$onCreateDrawableState$1(I)Z

    move-result p0

    return p0
.end method

.method public onCreateDrawableState(ILjava/util/function/Function;)[I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/function/Function<",
            "Ljava/lang/Integer;",
            "[I>;)[I"
        }
    .end annotation

    .line 52
    iget-object v0, p0, Lcom/android/car/ui/uxr/DrawableStateUtil;->mStateToAdd:[I

    if-nez v0, :cond_0

    .line 53
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    goto :goto_0

    .line 55
    :cond_0
    array-length v0, v0

    add-int/2addr p1, v0

    .line 56
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    iget-object p2, p0, Lcom/android/car/ui/uxr/DrawableStateUtil;->mStateToAdd:[I

    .line 55
    invoke-static {p1, p2}, Lcom/android/car/ui/uxr/DrawableStateUtil;->mergeDrawableStates([I[I)[I

    .line 59
    :goto_0
    iget-object p2, p0, Lcom/android/car/ui/uxr/DrawableStateUtil;->mStateToRemove:[I

    if-eqz p2, :cond_1

    array-length p2, p2

    if-eqz p2, :cond_1

    .line 60
    invoke-static {p1}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object p1

    new-instance p2, Lcom/android/car/ui/uxr/-$$Lambda$DrawableStateUtil$-DzHlEN4E11L4xr95KL91TTfySE;

    invoke-direct {p2, p0}, Lcom/android/car/ui/uxr/-$$Lambda$DrawableStateUtil$-DzHlEN4E11L4xr95KL91TTfySE;-><init>(Lcom/android/car/ui/uxr/DrawableStateUtil;)V

    .line 61
    invoke-interface {p1, p2}, Ljava/util/stream/IntStream;->filter(Ljava/util/function/IntPredicate;)Ljava/util/stream/IntStream;

    move-result-object p0

    .line 63
    invoke-interface {p0}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object p1

    :cond_1
    return-object p1
.end method

.method public setExtraDrawableState([I[I)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/android/car/ui/uxr/DrawableStateUtil;->mStateToAdd:[I

    .line 75
    iput-object p2, p0, Lcom/android/car/ui/uxr/DrawableStateUtil;->mStateToRemove:[I

    .line 76
    iget-object p0, p0, Lcom/android/car/ui/uxr/DrawableStateUtil;->mView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    return-void
.end method
