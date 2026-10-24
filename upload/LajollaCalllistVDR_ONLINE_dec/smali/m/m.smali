.class public Lm/m;
.super Lm/f;
.source "SourceFile"

# interfaces
.implements Lm/l;


# instance fields
.field public u0:[Lm/f;

.field public v0:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lm/f;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [Lm/f;

    iput-object v0, p0, Lm/m;->u0:[Lm/f;

    const/4 v0, 0x0

    iput v0, p0, Lm/m;->v0:I

    return-void
.end method


# virtual methods
.method public final S(Lm/f;)V
    .locals 3

    if-eq p1, p0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Lm/m;->v0:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lm/m;->u0:[Lm/f;

    array-length v2, v1

    if-le v0, v2, :cond_1

    array-length v0, v1

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lm/f;

    iput-object v0, p0, Lm/m;->u0:[Lm/f;

    :cond_1
    iget-object v0, p0, Lm/m;->u0:[Lm/f;

    iget v1, p0, Lm/m;->v0:I

    aput-object p1, v0, v1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lm/m;->v0:I

    :cond_2
    :goto_0
    return-void
.end method

.method public final T(ILn/i;Ljava/util/ArrayList;)V
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Lm/m;->v0:I

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lm/m;->u0:[Lm/f;

    aget-object v2, v2, v1

    iget-object v3, p2, Ln/i;->a:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_2
    iget v1, p0, Lm/m;->v0:I

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lm/m;->u0:[Lm/f;

    aget-object v1, v1, v0

    invoke-static {v1, p1, p3, p2}, Lcom/google/android/material/slider/h;->Z(Lm/f;ILjava/util/ArrayList;Ln/i;)Ln/i;

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method public a()V
    .locals 0

    return-void
.end method

.method public h(Lm/f;Ljava/util/HashMap;)V
    .locals 3

    invoke-super {p0, p1, p2}, Lm/f;->h(Lm/f;Ljava/util/HashMap;)V

    check-cast p1, Lm/m;

    const/4 v0, 0x0

    iput v0, p0, Lm/m;->v0:I

    iget v1, p1, Lm/m;->v0:I

    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v2, p1, Lm/m;->u0:[Lm/f;

    aget-object v2, v2, v0

    invoke-virtual {p2, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lm/f;

    invoke-virtual {p0, v2}, Lm/m;->S(Lm/f;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
