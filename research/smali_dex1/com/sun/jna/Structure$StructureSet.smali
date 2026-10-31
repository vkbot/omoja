.class Lcom/sun/jna/Structure$StructureSet;
.super Ljava/util/AbstractCollection;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Ljava/util/Set;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/Structure;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StructureSet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractCollection<",
        "Lcom/sun/jna/Structure;",
        ">;",
        "Ljava/util/Set<",
        "Lcom/sun/jna/Structure;",
        ">;"
    }
.end annotation


# instance fields
.field private count:I

.field elements:[Lcom/sun/jna/Structure;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private ensureCapacity(I)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/sun/jna/Structure$StructureSet;->elements:[Lcom/sun/jna/Structure;

    .line 2
    .line 3
    if-nez v0, :cond_d

    .line 4
    .line 5
    mul-int/lit8 p1, p1, 0x3

    .line 6
    .line 7
    div-int/lit8 p1, p1, 0x2

    .line 8
    .line 9
    new-array p1, p1, [Lcom/sun/jna/Structure;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/sun/jna/Structure$StructureSet;->elements:[Lcom/sun/jna/Structure;

    .line 12
    .line 13
    return-void

    .line 14
    :cond_d
    array-length v1, v0

    .line 15
    if-ge v1, p1, :cond_1d

    .line 16
    .line 17
    mul-int/lit8 p1, p1, 0x3

    .line 18
    .line 19
    div-int/lit8 p1, p1, 0x2

    .line 20
    .line 21
    new-array p1, p1, [Lcom/sun/jna/Structure;

    .line 22
    .line 23
    array-length v1, v0

    .line 24
    const/4 v2, 0x0

    .line 25
    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 26
    .line 27
    .line 28
    iput-object p1, p0, Lcom/sun/jna/Structure$StructureSet;->elements:[Lcom/sun/jna/Structure;

    .line 29
    .line 30
    :cond_1d
    return-void
.end method

.method private indexOf(Lcom/sun/jna/Structure;)I
    .registers 6

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_1
    iget v1, p0, Lcom/sun/jna/Structure$StructureSet;->count:I

    .line 3
    .line 4
    if-ge v0, v1, :cond_32

    .line 5
    .line 6
    iget-object v1, p0, Lcom/sun/jna/Structure$StructureSet;->elements:[Lcom/sun/jna/Structure;

    .line 7
    .line 8
    aget-object v1, v1, v0

    .line 9
    .line 10
    if-eq p1, v1, :cond_31

    .line 11
    .line 12
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    if-ne v2, v3, :cond_2e

    .line 21
    .line 22
    invoke-virtual {p1}, Lcom/sun/jna/Structure;->size()I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    invoke-virtual {v1}, Lcom/sun/jna/Structure;->size()I

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    if-ne v2, v3, :cond_2e

    .line 31
    .line 32
    invoke-virtual {p1}, Lcom/sun/jna/Structure;->getPointer()Lcom/sun/jna/Pointer;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-virtual {v1}, Lcom/sun/jna/Structure;->getPointer()Lcom/sun/jna/Pointer;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-virtual {v2, v1}, Lcom/sun/jna/Pointer;->equals(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    if-eqz v1, :cond_2e

    .line 45
    .line 46
    goto :goto_31

    .line 47
    :cond_2e
    add-int/lit8 v0, v0, 0x1

    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_31
    :goto_31
    return v0

    .line 51
    :cond_32
    const/4 p1, -0x1

    .line 52
    return p1
.end method


# virtual methods
.method public add(Lcom/sun/jna/Structure;)Z
    .registers 6

    .line 1
    invoke-virtual {p0, p1}, Lcom/sun/jna/Structure$StructureSet;->contains(Ljava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_18

    .line 6
    .line 7
    iget v0, p0, Lcom/sun/jna/Structure$StructureSet;->count:I

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    add-int/2addr v0, v1

    .line 11
    invoke-direct {p0, v0}, Lcom/sun/jna/Structure$StructureSet;->ensureCapacity(I)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/sun/jna/Structure$StructureSet;->elements:[Lcom/sun/jna/Structure;

    .line 15
    .line 16
    iget v2, p0, Lcom/sun/jna/Structure$StructureSet;->count:I

    .line 17
    .line 18
    add-int/lit8 v3, v2, 0x1

    .line 19
    .line 20
    iput v3, p0, Lcom/sun/jna/Structure$StructureSet;->count:I

    .line 21
    .line 22
    aput-object p1, v0, v2

    .line 23
    .line 24
    return v1

    .line 25
    :cond_18
    const/4 p1, 0x0

    .line 26
    return p1
.end method

.method public bridge synthetic add(Ljava/lang/Object;)Z
    .registers 2

    .line 27
    check-cast p1, Lcom/sun/jna/Structure;

    invoke-virtual {p0, p1}, Lcom/sun/jna/Structure$StructureSet;->add(Lcom/sun/jna/Structure;)Z

    move-result p1

    return p1
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 3

    .line 1
    check-cast p1, Lcom/sun/jna/Structure;

    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/sun/jna/Structure$StructureSet;->indexOf(Lcom/sun/jna/Structure;)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    const/4 v0, -0x1

    .line 8
    if-eq p1, v0, :cond_b

    .line 9
    .line 10
    const/4 p1, 0x1

    .line 11
    return p1

    .line 12
    :cond_b
    const/4 p1, 0x0

    .line 13
    return p1
.end method

.method public getElements()[Lcom/sun/jna/Structure;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/sun/jna/Structure$StructureSet;->elements:[Lcom/sun/jna/Structure;

    .line 2
    .line 3
    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/sun/jna/Structure;",
            ">;"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/sun/jna/Structure$StructureSet;->count:I

    .line 2
    .line 3
    new-array v1, v0, [Lcom/sun/jna/Structure;

    .line 4
    .line 5
    if-lez v0, :cond_c

    .line 6
    .line 7
    iget-object v2, p0, Lcom/sun/jna/Structure$StructureSet;->elements:[Lcom/sun/jna/Structure;

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 11
    .line 12
    .line 13
    :cond_c
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 6

    .line 1
    check-cast p1, Lcom/sun/jna/Structure;

    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/sun/jna/Structure$StructureSet;->indexOf(Lcom/sun/jna/Structure;)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    const/4 v0, -0x1

    .line 8
    if-eq p1, v0, :cond_1b

    .line 9
    .line 10
    iget v0, p0, Lcom/sun/jna/Structure$StructureSet;->count:I

    .line 11
    .line 12
    const/4 v1, 0x1

    .line 13
    sub-int/2addr v0, v1

    .line 14
    iput v0, p0, Lcom/sun/jna/Structure$StructureSet;->count:I

    .line 15
    .line 16
    if-ltz v0, :cond_1a

    .line 17
    .line 18
    iget-object v2, p0, Lcom/sun/jna/Structure$StructureSet;->elements:[Lcom/sun/jna/Structure;

    .line 19
    .line 20
    aget-object v3, v2, v0

    .line 21
    .line 22
    aput-object v3, v2, p1

    .line 23
    .line 24
    const/4 p1, 0x0

    .line 25
    aput-object p1, v2, v0

    .line 26
    .line 27
    :cond_1a
    return v1

    .line 28
    :cond_1b
    const/4 p1, 0x0

    .line 29
    return p1
.end method

.method public size()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/sun/jna/Structure$StructureSet;->count:I

    .line 2
    .line 3
    return v0
.end method
