.class public Landroidx/recyclerview/widget/SortedList;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/recyclerview/widget/SortedList$Callback;,
        Landroidx/recyclerview/widget/SortedList$BatchedCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final CAPACITY_GROWTH:I = 0xa

.field private static final DELETION:I = 0x2

.field private static final INSERTION:I = 0x1

.field public static final INVALID_POSITION:I = -0x1

.field private static final LOOKUP:I = 0x4

.field private static final MIN_CAPACITY:I = 0xa


# instance fields
.field private mBatchedCallback:Landroidx/recyclerview/widget/SortedList$BatchedCallback;

.field private mCallback:Landroidx/recyclerview/widget/SortedList$Callback;

.field mData:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

.field private mNewDataStart:I

.field private mOldData:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

.field private mOldDataSize:I

.field private mOldDataStart:I

.field private mSize:I

.field private final mTClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;Landroidx/recyclerview/widget/SortedList$Callback;)V
    .registers 4
    .param p1    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/recyclerview/widget/SortedList$Callback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Landroidx/recyclerview/widget/SortedList$Callback<",
            "TT;>;)V"
        }
    .end annotation

    const/16 v0, 0xa

    .line 20
    invoke-direct {p0, p1, p2, v0}, Landroidx/recyclerview/widget/SortedList;-><init>(Ljava/lang/Class;Landroidx/recyclerview/widget/SortedList$Callback;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Landroidx/recyclerview/widget/SortedList$Callback;I)V
    .registers 4
    .param p1    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/recyclerview/widget/SortedList$Callback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Landroidx/recyclerview/widget/SortedList$Callback<",
            "TT;>;I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/recyclerview/widget/SortedList;->mTClass:Ljava/lang/Class;

    .line 5
    .line 6
    invoke-static {p1, p3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    check-cast p1, [Ljava/lang/Object;

    .line 11
    .line 12
    iput-object p1, p0, Landroidx/recyclerview/widget/SortedList;->mData:[Ljava/lang/Object;

    .line 13
    .line 14
    iput-object p2, p0, Landroidx/recyclerview/widget/SortedList;->mCallback:Landroidx/recyclerview/widget/SortedList$Callback;

    .line 15
    .line 16
    const/4 p1, 0x0

    .line 17
    iput p1, p0, Landroidx/recyclerview/widget/SortedList;->mSize:I

    .line 18
    .line 19
    return-void
.end method

.method private add(Ljava/lang/Object;Z)I
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)I"
        }
    .end annotation

    .line 1
    iget-object v2, p0, Landroidx/recyclerview/widget/SortedList;->mData:[Ljava/lang/Object;

    .line 2
    .line 3
    iget v4, p0, Landroidx/recyclerview/widget/SortedList;->mSize:I

    .line 4
    .line 5
    const/4 v5, 0x1

    .line 6
    const/4 v3, 0x0

    .line 7
    move-object v0, p0

    .line 8
    move-object v1, p1

    .line 9
    invoke-direct/range {v0 .. v5}, Landroidx/recyclerview/widget/SortedList;->findIndexOf(Ljava/lang/Object;[Ljava/lang/Object;III)I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    const/4 v2, -0x1

    .line 14
    const/4 v3, 0x1

    .line 15
    if-ne p1, v2, :cond_12

    .line 16
    .line 17
    const/4 p1, 0x0

    .line 18
    goto :goto_3b

    .line 19
    :cond_12
    iget v2, v0, Landroidx/recyclerview/widget/SortedList;->mSize:I

    .line 20
    .line 21
    if-ge p1, v2, :cond_3b

    .line 22
    .line 23
    iget-object v2, v0, Landroidx/recyclerview/widget/SortedList;->mData:[Ljava/lang/Object;

    .line 24
    .line 25
    aget-object v2, v2, p1

    .line 26
    .line 27
    iget-object v4, v0, Landroidx/recyclerview/widget/SortedList;->mCallback:Landroidx/recyclerview/widget/SortedList$Callback;

    .line 28
    .line 29
    invoke-virtual {v4, v2, v1}, Landroidx/recyclerview/widget/SortedList$Callback;->areItemsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v4

    .line 33
    if-eqz v4, :cond_3b

    .line 34
    .line 35
    iget-object p2, v0, Landroidx/recyclerview/widget/SortedList;->mCallback:Landroidx/recyclerview/widget/SortedList$Callback;

    .line 36
    .line 37
    invoke-virtual {p2, v2, v1}, Landroidx/recyclerview/widget/SortedList$Callback;->areContentsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result p2

    .line 41
    iget-object v4, v0, Landroidx/recyclerview/widget/SortedList;->mData:[Ljava/lang/Object;

    .line 42
    .line 43
    if-eqz p2, :cond_2f

    .line 44
    .line 45
    aput-object v1, v4, p1

    .line 46
    .line 47
    return p1

    .line 48
    :cond_2f
    aput-object v1, v4, p1

    .line 49
    .line 50
    iget-object p2, v0, Landroidx/recyclerview/widget/SortedList;->mCallback:Landroidx/recyclerview/widget/SortedList$Callback;

    .line 51
    .line 52
    invoke-virtual {p2, v2, v1}, Landroidx/recyclerview/widget/SortedList$Callback;->getChangePayload(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    invoke-virtual {p2, p1, v3, v1}, Landroidx/recyclerview/widget/SortedList$Callback;->onChanged(IILjava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    return p1

    .line 60
    :cond_3b
    :goto_3b
    invoke-direct {p0, p1, v1}, Landroidx/recyclerview/widget/SortedList;->addToData(ILjava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    if-eqz p2, :cond_45

    .line 64
    .line 65
    iget-object p2, v0, Landroidx/recyclerview/widget/SortedList;->mCallback:Landroidx/recyclerview/widget/SortedList$Callback;

    .line 66
    .line 67
    invoke-interface {p2, p1, v3}, Landroidx/recyclerview/widget/ListUpdateCallback;->onInserted(II)V

    .line 68
    .line 69
    .line 70
    :cond_45
    return p1
.end method

.method private addAllInternal([Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)V"
        }
    .end annotation

    .line 1
    array-length v0, p1

    .line 2
    const/4 v1, 0x1

    .line 3
    if-ge v0, v1, :cond_5

    .line 4
    .line 5
    return-void

    .line 6
    :cond_5
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/SortedList;->sortAndDedup([Ljava/lang/Object;)I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    iget v1, p0, Landroidx/recyclerview/widget/SortedList;->mSize:I

    .line 11
    .line 12
    if-nez v1, :cond_18

    .line 13
    .line 14
    iput-object p1, p0, Landroidx/recyclerview/widget/SortedList;->mData:[Ljava/lang/Object;

    .line 15
    .line 16
    iput v0, p0, Landroidx/recyclerview/widget/SortedList;->mSize:I

    .line 17
    .line 18
    iget-object p1, p0, Landroidx/recyclerview/widget/SortedList;->mCallback:Landroidx/recyclerview/widget/SortedList$Callback;

    .line 19
    .line 20
    const/4 v1, 0x0

    .line 21
    invoke-interface {p1, v1, v0}, Landroidx/recyclerview/widget/ListUpdateCallback;->onInserted(II)V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :cond_18
    invoke-direct {p0, p1, v0}, Landroidx/recyclerview/widget/SortedList;->merge([Ljava/lang/Object;I)V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method private addToData(ILjava/lang/Object;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/SortedList;->mSize:I

    .line 2
    .line 3
    if-gt p1, v0, :cond_3a

    .line 4
    .line 5
    iget-object v1, p0, Landroidx/recyclerview/widget/SortedList;->mData:[Ljava/lang/Object;

    .line 6
    .line 7
    array-length v2, v1

    .line 8
    if-ne v0, v2, :cond_29

    .line 9
    .line 10
    iget-object v0, p0, Landroidx/recyclerview/widget/SortedList;->mTClass:Ljava/lang/Class;

    .line 11
    .line 12
    array-length v1, v1

    .line 13
    add-int/lit8 v1, v1, 0xa

    .line 14
    .line 15
    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, [Ljava/lang/Object;

    .line 20
    .line 21
    iget-object v1, p0, Landroidx/recyclerview/widget/SortedList;->mData:[Ljava/lang/Object;

    .line 22
    .line 23
    const/4 v2, 0x0

    .line 24
    invoke-static {v1, v2, v0, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 25
    .line 26
    .line 27
    aput-object p2, v0, p1

    .line 28
    .line 29
    iget-object p2, p0, Landroidx/recyclerview/widget/SortedList;->mData:[Ljava/lang/Object;

    .line 30
    .line 31
    add-int/lit8 v1, p1, 0x1

    .line 32
    .line 33
    iget v2, p0, Landroidx/recyclerview/widget/SortedList;->mSize:I

    .line 34
    .line 35
    sub-int/2addr v2, p1

    .line 36
    invoke-static {p2, p1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 37
    .line 38
    .line 39
    iput-object v0, p0, Landroidx/recyclerview/widget/SortedList;->mData:[Ljava/lang/Object;

    .line 40
    .line 41
    goto :goto_33

    .line 42
    :cond_29
    add-int/lit8 v2, p1, 0x1

    .line 43
    .line 44
    sub-int/2addr v0, p1

    .line 45
    invoke-static {v1, p1, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 46
    .line 47
    .line 48
    iget-object v0, p0, Landroidx/recyclerview/widget/SortedList;->mData:[Ljava/lang/Object;

    .line 49
    .line 50
    aput-object p2, v0, p1

    .line 51
    .line 52
    :goto_33
    iget p1, p0, Landroidx/recyclerview/widget/SortedList;->mSize:I

    .line 53
    .line 54
    add-int/lit8 p1, p1, 0x1

    .line 55
    .line 56
    iput p1, p0, Landroidx/recyclerview/widget/SortedList;->mSize:I

    .line 57
    .line 58
    return-void

    .line 59
    :cond_3a
    const-string p2, "cannot add item to "

    .line 60
    .line 61
    const-string v0, " because size is "

    .line 62
    .line 63
    invoke-static {p1, p2, v0}, Lai/onnxruntime/a;->q(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    iget p2, p0, Landroidx/recyclerview/widget/SortedList;->mSize:I

    .line 68
    .line 69
    invoke-static {p1, p2}, Lkotlin/text/b;->a(Ljava/lang/StringBuilder;I)V

    .line 70
    .line 71
    .line 72
    return-void
.end method

.method private copyArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)[TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/SortedList;->mTClass:Ljava/lang/Class;

    .line 2
    .line 3
    array-length v1, p1

    .line 4
    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, [Ljava/lang/Object;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    array-length v2, p1

    .line 12
    invoke-static {p1, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 13
    .line 14
    .line 15
    return-object v0
.end method

.method private findIndexOf(Ljava/lang/Object;[Ljava/lang/Object;III)I
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[TT;III)I"
        }
    .end annotation

    .line 1
    :goto_0
    const/4 v0, -0x1

    .line 2
    const/4 v1, 0x1

    .line 3
    if-ge p3, p4, :cond_2d

    .line 4
    .line 5
    add-int v2, p3, p4

    .line 6
    .line 7
    div-int/lit8 v2, v2, 0x2

    .line 8
    .line 9
    aget-object v3, p2, v2

    .line 10
    .line 11
    iget-object v4, p0, Landroidx/recyclerview/widget/SortedList;->mCallback:Landroidx/recyclerview/widget/SortedList$Callback;

    .line 12
    .line 13
    invoke-virtual {v4, v3, p1}, Landroidx/recyclerview/widget/SortedList$Callback;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    .line 14
    .line 15
    .line 16
    move-result v4

    .line 17
    if-gez v4, :cond_16

    .line 18
    .line 19
    add-int/lit8 v2, v2, 0x1

    .line 20
    .line 21
    move p3, v2

    .line 22
    goto :goto_0

    .line 23
    :cond_16
    if-nez v4, :cond_2b

    .line 24
    .line 25
    iget-object p2, p0, Landroidx/recyclerview/widget/SortedList;->mCallback:Landroidx/recyclerview/widget/SortedList$Callback;

    .line 26
    .line 27
    invoke-virtual {p2, v3, p1}, Landroidx/recyclerview/widget/SortedList$Callback;->areItemsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result p2

    .line 31
    if-eqz p2, :cond_21

    .line 32
    .line 33
    goto :goto_29

    .line 34
    :cond_21
    invoke-direct {p0, p1, v2, p3, p4}, Landroidx/recyclerview/widget/SortedList;->linearEqualitySearch(Ljava/lang/Object;III)I

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    if-ne p5, v1, :cond_2a

    .line 39
    .line 40
    if-ne p1, v0, :cond_2a

    .line 41
    .line 42
    :goto_29
    return v2

    .line 43
    :cond_2a
    return p1

    .line 44
    :cond_2b
    move p4, v2

    .line 45
    goto :goto_0

    .line 46
    :cond_2d
    if-ne p5, v1, :cond_30

    .line 47
    .line 48
    return p3

    .line 49
    :cond_30
    return v0
.end method

.method private findSameItem(Ljava/lang/Object;[Ljava/lang/Object;II)I
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[TT;II)I"
        }
    .end annotation

    .line 1
    :goto_0
    if-ge p3, p4, :cond_10

    .line 2
    .line 3
    iget-object v0, p0, Landroidx/recyclerview/widget/SortedList;->mCallback:Landroidx/recyclerview/widget/SortedList$Callback;

    .line 4
    .line 5
    aget-object v1, p2, p3

    .line 6
    .line 7
    invoke-virtual {v0, v1, p1}, Landroidx/recyclerview/widget/SortedList$Callback;->areItemsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_d

    .line 12
    .line 13
    return p3

    .line 14
    :cond_d
    add-int/lit8 p3, p3, 0x1

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_10
    const/4 p1, -0x1

    .line 18
    return p1
.end method

.method private linearEqualitySearch(Ljava/lang/Object;III)I
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;III)I"
        }
    .end annotation

    .line 1
    add-int/lit8 v0, p2, -0x1

    .line 2
    .line 3
    :goto_2
    if-lt v0, p3, :cond_1d

    .line 4
    .line 5
    iget-object v1, p0, Landroidx/recyclerview/widget/SortedList;->mData:[Ljava/lang/Object;

    .line 6
    .line 7
    aget-object v1, v1, v0

    .line 8
    .line 9
    iget-object v2, p0, Landroidx/recyclerview/widget/SortedList;->mCallback:Landroidx/recyclerview/widget/SortedList$Callback;

    .line 10
    .line 11
    invoke-virtual {v2, v1, p1}, Landroidx/recyclerview/widget/SortedList$Callback;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    if-eqz v2, :cond_11

    .line 16
    .line 17
    goto :goto_1d

    .line 18
    :cond_11
    iget-object v2, p0, Landroidx/recyclerview/widget/SortedList;->mCallback:Landroidx/recyclerview/widget/SortedList$Callback;

    .line 19
    .line 20
    invoke-virtual {v2, v1, p1}, Landroidx/recyclerview/widget/SortedList$Callback;->areItemsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_1a

    .line 25
    .line 26
    return v0

    .line 27
    :cond_1a
    add-int/lit8 v0, v0, -0x1

    .line 28
    .line 29
    goto :goto_2

    .line 30
    :cond_1d
    :goto_1d
    add-int/lit8 p2, p2, 0x1

    .line 31
    .line 32
    if-ge p2, p4, :cond_37

    .line 33
    .line 34
    iget-object p3, p0, Landroidx/recyclerview/widget/SortedList;->mData:[Ljava/lang/Object;

    .line 35
    .line 36
    aget-object p3, p3, p2

    .line 37
    .line 38
    iget-object v0, p0, Landroidx/recyclerview/widget/SortedList;->mCallback:Landroidx/recyclerview/widget/SortedList$Callback;

    .line 39
    .line 40
    invoke-virtual {v0, p3, p1}, Landroidx/recyclerview/widget/SortedList$Callback;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-eqz v0, :cond_2e

    .line 45
    .line 46
    goto :goto_37

    .line 47
    :cond_2e
    iget-object v0, p0, Landroidx/recyclerview/widget/SortedList;->mCallback:Landroidx/recyclerview/widget/SortedList$Callback;

    .line 48
    .line 49
    invoke-virtual {v0, p3, p1}, Landroidx/recyclerview/widget/SortedList$Callback;->areItemsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result p3

    .line 53
    if-eqz p3, :cond_1d

    .line 54
    .line 55
    return p2

    .line 56
    :cond_37
    :goto_37
    const/4 p1, -0x1

    .line 57
    return p1
.end method

.method private merge([Ljava/lang/Object;I)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;I)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/SortedList;->mCallback:Landroidx/recyclerview/widget/SortedList$Callback;

    .line 2
    .line 3
    instance-of v0, v0, Landroidx/recyclerview/widget/SortedList$BatchedCallback;

    .line 4
    .line 5
    if-nez v0, :cond_9

    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/recyclerview/widget/SortedList;->beginBatchedUpdates()V

    .line 8
    .line 9
    .line 10
    :cond_9
    iget-object v1, p0, Landroidx/recyclerview/widget/SortedList;->mData:[Ljava/lang/Object;

    .line 11
    .line 12
    iput-object v1, p0, Landroidx/recyclerview/widget/SortedList;->mOldData:[Ljava/lang/Object;

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    iput v1, p0, Landroidx/recyclerview/widget/SortedList;->mOldDataStart:I

    .line 16
    .line 17
    iget v2, p0, Landroidx/recyclerview/widget/SortedList;->mSize:I

    .line 18
    .line 19
    iput v2, p0, Landroidx/recyclerview/widget/SortedList;->mOldDataSize:I

    .line 20
    .line 21
    add-int/2addr v2, p2

    .line 22
    add-int/lit8 v2, v2, 0xa

    .line 23
    .line 24
    iget-object v3, p0, Landroidx/recyclerview/widget/SortedList;->mTClass:Ljava/lang/Class;

    .line 25
    .line 26
    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    check-cast v2, [Ljava/lang/Object;

    .line 31
    .line 32
    iput-object v2, p0, Landroidx/recyclerview/widget/SortedList;->mData:[Ljava/lang/Object;

    .line 33
    .line 34
    iput v1, p0, Landroidx/recyclerview/widget/SortedList;->mNewDataStart:I

    .line 35
    .line 36
    :cond_23
    :goto_23
    iget v2, p0, Landroidx/recyclerview/widget/SortedList;->mOldDataStart:I

    .line 37
    .line 38
    iget v3, p0, Landroidx/recyclerview/widget/SortedList;->mOldDataSize:I

    .line 39
    .line 40
    if-lt v2, v3, :cond_2b

    .line 41
    .line 42
    if-ge v1, p2, :cond_57

    .line 43
    .line 44
    :cond_2b
    if-ne v2, v3, :cond_46

    .line 45
    .line 46
    sub-int/2addr p2, v1

    .line 47
    iget-object v2, p0, Landroidx/recyclerview/widget/SortedList;->mData:[Ljava/lang/Object;

    .line 48
    .line 49
    iget v3, p0, Landroidx/recyclerview/widget/SortedList;->mNewDataStart:I

    .line 50
    .line 51
    invoke-static {p1, v1, v2, v3, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 52
    .line 53
    .line 54
    iget p1, p0, Landroidx/recyclerview/widget/SortedList;->mNewDataStart:I

    .line 55
    .line 56
    add-int/2addr p1, p2

    .line 57
    iput p1, p0, Landroidx/recyclerview/widget/SortedList;->mNewDataStart:I

    .line 58
    .line 59
    iget v1, p0, Landroidx/recyclerview/widget/SortedList;->mSize:I

    .line 60
    .line 61
    add-int/2addr v1, p2

    .line 62
    iput v1, p0, Landroidx/recyclerview/widget/SortedList;->mSize:I

    .line 63
    .line 64
    iget-object v1, p0, Landroidx/recyclerview/widget/SortedList;->mCallback:Landroidx/recyclerview/widget/SortedList$Callback;

    .line 65
    .line 66
    sub-int/2addr p1, p2

    .line 67
    invoke-interface {v1, p1, p2}, Landroidx/recyclerview/widget/ListUpdateCallback;->onInserted(II)V

    .line 68
    .line 69
    .line 70
    goto :goto_57

    .line 71
    :cond_46
    iget-object v4, p0, Landroidx/recyclerview/widget/SortedList;->mOldData:[Ljava/lang/Object;

    .line 72
    .line 73
    if-ne v1, p2, :cond_60

    .line 74
    .line 75
    sub-int/2addr v3, v2

    .line 76
    iget-object p1, p0, Landroidx/recyclerview/widget/SortedList;->mData:[Ljava/lang/Object;

    .line 77
    .line 78
    iget p2, p0, Landroidx/recyclerview/widget/SortedList;->mNewDataStart:I

    .line 79
    .line 80
    invoke-static {v4, v2, p1, p2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 81
    .line 82
    .line 83
    iget p1, p0, Landroidx/recyclerview/widget/SortedList;->mNewDataStart:I

    .line 84
    .line 85
    add-int/2addr p1, v3

    .line 86
    iput p1, p0, Landroidx/recyclerview/widget/SortedList;->mNewDataStart:I

    .line 87
    .line 88
    :cond_57
    :goto_57
    const/4 p1, 0x0

    .line 89
    iput-object p1, p0, Landroidx/recyclerview/widget/SortedList;->mOldData:[Ljava/lang/Object;

    .line 90
    .line 91
    if-nez v0, :cond_5f

    .line 92
    .line 93
    invoke-virtual {p0}, Landroidx/recyclerview/widget/SortedList;->endBatchedUpdates()V

    .line 94
    .line 95
    .line 96
    :cond_5f
    return-void

    .line 97
    :cond_60
    aget-object v2, v4, v2

    .line 98
    .line 99
    aget-object v3, p1, v1

    .line 100
    .line 101
    iget-object v4, p0, Landroidx/recyclerview/widget/SortedList;->mCallback:Landroidx/recyclerview/widget/SortedList$Callback;

    .line 102
    .line 103
    invoke-virtual {v4, v2, v3}, Landroidx/recyclerview/widget/SortedList$Callback;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    .line 104
    .line 105
    .line 106
    move-result v4

    .line 107
    const/4 v5, 0x1

    .line 108
    if-lez v4, :cond_84

    .line 109
    .line 110
    iget-object v2, p0, Landroidx/recyclerview/widget/SortedList;->mData:[Ljava/lang/Object;

    .line 111
    .line 112
    iget v4, p0, Landroidx/recyclerview/widget/SortedList;->mNewDataStart:I

    .line 113
    .line 114
    add-int/lit8 v6, v4, 0x1

    .line 115
    .line 116
    iput v6, p0, Landroidx/recyclerview/widget/SortedList;->mNewDataStart:I

    .line 117
    .line 118
    aput-object v3, v2, v4

    .line 119
    .line 120
    iget v2, p0, Landroidx/recyclerview/widget/SortedList;->mSize:I

    .line 121
    .line 122
    add-int/2addr v2, v5

    .line 123
    iput v2, p0, Landroidx/recyclerview/widget/SortedList;->mSize:I

    .line 124
    .line 125
    add-int/lit8 v1, v1, 0x1

    .line 126
    .line 127
    iget-object v2, p0, Landroidx/recyclerview/widget/SortedList;->mCallback:Landroidx/recyclerview/widget/SortedList$Callback;

    .line 128
    .line 129
    invoke-interface {v2, v4, v5}, Landroidx/recyclerview/widget/ListUpdateCallback;->onInserted(II)V

    .line 130
    .line 131
    .line 132
    goto :goto_23

    .line 133
    :cond_84
    if-nez v4, :cond_b5

    .line 134
    .line 135
    iget-object v4, p0, Landroidx/recyclerview/widget/SortedList;->mCallback:Landroidx/recyclerview/widget/SortedList$Callback;

    .line 136
    .line 137
    invoke-virtual {v4, v2, v3}, Landroidx/recyclerview/widget/SortedList$Callback;->areItemsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 138
    .line 139
    .line 140
    move-result v4

    .line 141
    if-eqz v4, :cond_b5

    .line 142
    .line 143
    iget-object v4, p0, Landroidx/recyclerview/widget/SortedList;->mData:[Ljava/lang/Object;

    .line 144
    .line 145
    iget v6, p0, Landroidx/recyclerview/widget/SortedList;->mNewDataStart:I

    .line 146
    .line 147
    add-int/lit8 v7, v6, 0x1

    .line 148
    .line 149
    iput v7, p0, Landroidx/recyclerview/widget/SortedList;->mNewDataStart:I

    .line 150
    .line 151
    aput-object v3, v4, v6

    .line 152
    .line 153
    add-int/lit8 v1, v1, 0x1

    .line 154
    .line 155
    iget v4, p0, Landroidx/recyclerview/widget/SortedList;->mOldDataStart:I

    .line 156
    .line 157
    add-int/2addr v4, v5

    .line 158
    iput v4, p0, Landroidx/recyclerview/widget/SortedList;->mOldDataStart:I

    .line 159
    .line 160
    iget-object v4, p0, Landroidx/recyclerview/widget/SortedList;->mCallback:Landroidx/recyclerview/widget/SortedList$Callback;

    .line 161
    .line 162
    invoke-virtual {v4, v2, v3}, Landroidx/recyclerview/widget/SortedList$Callback;->areContentsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 163
    .line 164
    .line 165
    move-result v4

    .line 166
    if-nez v4, :cond_23

    .line 167
    .line 168
    iget-object v4, p0, Landroidx/recyclerview/widget/SortedList;->mCallback:Landroidx/recyclerview/widget/SortedList$Callback;

    .line 169
    .line 170
    iget v6, p0, Landroidx/recyclerview/widget/SortedList;->mNewDataStart:I

    .line 171
    .line 172
    sub-int/2addr v6, v5

    .line 173
    invoke-virtual {v4, v2, v3}, Landroidx/recyclerview/widget/SortedList$Callback;->getChangePayload(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    .line 175
    .line 176
    move-result-object v2

    .line 177
    invoke-virtual {v4, v6, v5, v2}, Landroidx/recyclerview/widget/SortedList$Callback;->onChanged(IILjava/lang/Object;)V

    .line 178
    .line 179
    .line 180
    goto/16 :goto_23

    .line 181
    .line 182
    :cond_b5
    iget-object v3, p0, Landroidx/recyclerview/widget/SortedList;->mData:[Ljava/lang/Object;

    .line 183
    .line 184
    iget v4, p0, Landroidx/recyclerview/widget/SortedList;->mNewDataStart:I

    .line 185
    .line 186
    add-int/lit8 v6, v4, 0x1

    .line 187
    .line 188
    iput v6, p0, Landroidx/recyclerview/widget/SortedList;->mNewDataStart:I

    .line 189
    .line 190
    aput-object v2, v3, v4

    .line 191
    .line 192
    iget v2, p0, Landroidx/recyclerview/widget/SortedList;->mOldDataStart:I

    .line 193
    .line 194
    add-int/2addr v2, v5

    .line 195
    iput v2, p0, Landroidx/recyclerview/widget/SortedList;->mOldDataStart:I

    .line 196
    .line 197
    goto/16 :goto_23
.end method

.method private remove(Ljava/lang/Object;Z)Z
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)Z"
        }
    .end annotation

    .line 1
    iget-object v2, p0, Landroidx/recyclerview/widget/SortedList;->mData:[Ljava/lang/Object;

    .line 2
    .line 3
    iget v4, p0, Landroidx/recyclerview/widget/SortedList;->mSize:I

    .line 4
    .line 5
    const/4 v5, 0x2

    .line 6
    const/4 v3, 0x0

    .line 7
    move-object v0, p0

    .line 8
    move-object v1, p1

    .line 9
    invoke-direct/range {v0 .. v5}, Landroidx/recyclerview/widget/SortedList;->findIndexOf(Ljava/lang/Object;[Ljava/lang/Object;III)I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    const/4 v1, -0x1

    .line 14
    if-ne p1, v1, :cond_11

    .line 15
    .line 16
    const/4 p1, 0x0

    .line 17
    return p1

    .line 18
    :cond_11
    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/SortedList;->removeItemAtIndex(IZ)V

    .line 19
    .line 20
    .line 21
    const/4 p1, 0x1

    .line 22
    return p1
.end method

.method private removeItemAtIndex(IZ)V
    .registers 7

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/SortedList;->mData:[Ljava/lang/Object;

    .line 2
    .line 3
    add-int/lit8 v1, p1, 0x1

    .line 4
    .line 5
    iget v2, p0, Landroidx/recyclerview/widget/SortedList;->mSize:I

    .line 6
    .line 7
    sub-int/2addr v2, p1

    .line 8
    const/4 v3, 0x1

    .line 9
    sub-int/2addr v2, v3

    .line 10
    invoke-static {v0, v1, v0, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 11
    .line 12
    .line 13
    iget v0, p0, Landroidx/recyclerview/widget/SortedList;->mSize:I

    .line 14
    .line 15
    sub-int/2addr v0, v3

    .line 16
    iput v0, p0, Landroidx/recyclerview/widget/SortedList;->mSize:I

    .line 17
    .line 18
    iget-object v1, p0, Landroidx/recyclerview/widget/SortedList;->mData:[Ljava/lang/Object;

    .line 19
    .line 20
    const/4 v2, 0x0

    .line 21
    aput-object v2, v1, v0

    .line 22
    .line 23
    if-eqz p2, :cond_1d

    .line 24
    .line 25
    iget-object p2, p0, Landroidx/recyclerview/widget/SortedList;->mCallback:Landroidx/recyclerview/widget/SortedList$Callback;

    .line 26
    .line 27
    invoke-interface {p2, p1, v3}, Landroidx/recyclerview/widget/ListUpdateCallback;->onRemoved(II)V

    .line 28
    .line 29
    .line 30
    :cond_1d
    return-void
.end method

.method private replaceAllInsert(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/SortedList;->mData:[Ljava/lang/Object;

    .line 2
    .line 3
    iget v1, p0, Landroidx/recyclerview/widget/SortedList;->mNewDataStart:I

    .line 4
    .line 5
    aput-object p1, v0, v1

    .line 6
    .line 7
    add-int/lit8 p1, v1, 0x1

    .line 8
    .line 9
    iput p1, p0, Landroidx/recyclerview/widget/SortedList;->mNewDataStart:I

    .line 10
    .line 11
    iget p1, p0, Landroidx/recyclerview/widget/SortedList;->mSize:I

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    add-int/2addr p1, v0

    .line 15
    iput p1, p0, Landroidx/recyclerview/widget/SortedList;->mSize:I

    .line 16
    .line 17
    iget-object p1, p0, Landroidx/recyclerview/widget/SortedList;->mCallback:Landroidx/recyclerview/widget/SortedList$Callback;

    .line 18
    .line 19
    invoke-interface {p1, v1, v0}, Landroidx/recyclerview/widget/ListUpdateCallback;->onInserted(II)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method private replaceAllInternal([Ljava/lang/Object;)V
    .registers 9
    .param p1    # [Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/SortedList;->mCallback:Landroidx/recyclerview/widget/SortedList$Callback;

    .line 2
    .line 3
    instance-of v0, v0, Landroidx/recyclerview/widget/SortedList$BatchedCallback;

    .line 4
    .line 5
    if-nez v0, :cond_9

    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/recyclerview/widget/SortedList;->beginBatchedUpdates()V

    .line 8
    .line 9
    .line 10
    :cond_9
    const/4 v1, 0x0

    .line 11
    iput v1, p0, Landroidx/recyclerview/widget/SortedList;->mOldDataStart:I

    .line 12
    .line 13
    iget v2, p0, Landroidx/recyclerview/widget/SortedList;->mSize:I

    .line 14
    .line 15
    iput v2, p0, Landroidx/recyclerview/widget/SortedList;->mOldDataSize:I

    .line 16
    .line 17
    iget-object v2, p0, Landroidx/recyclerview/widget/SortedList;->mData:[Ljava/lang/Object;

    .line 18
    .line 19
    iput-object v2, p0, Landroidx/recyclerview/widget/SortedList;->mOldData:[Ljava/lang/Object;

    .line 20
    .line 21
    iput v1, p0, Landroidx/recyclerview/widget/SortedList;->mNewDataStart:I

    .line 22
    .line 23
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/SortedList;->sortAndDedup([Ljava/lang/Object;)I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    iget-object v2, p0, Landroidx/recyclerview/widget/SortedList;->mTClass:Ljava/lang/Class;

    .line 28
    .line 29
    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    check-cast v2, [Ljava/lang/Object;

    .line 34
    .line 35
    iput-object v2, p0, Landroidx/recyclerview/widget/SortedList;->mData:[Ljava/lang/Object;

    .line 36
    .line 37
    :cond_24
    :goto_24
    iget v2, p0, Landroidx/recyclerview/widget/SortedList;->mNewDataStart:I

    .line 38
    .line 39
    if-lt v2, v1, :cond_2e

    .line 40
    .line 41
    iget v3, p0, Landroidx/recyclerview/widget/SortedList;->mOldDataStart:I

    .line 42
    .line 43
    iget v4, p0, Landroidx/recyclerview/widget/SortedList;->mOldDataSize:I

    .line 44
    .line 45
    if-ge v3, v4, :cond_57

    .line 46
    .line 47
    :cond_2e
    iget v3, p0, Landroidx/recyclerview/widget/SortedList;->mOldDataStart:I

    .line 48
    .line 49
    iget v4, p0, Landroidx/recyclerview/widget/SortedList;->mOldDataSize:I

    .line 50
    .line 51
    if-lt v3, v4, :cond_4a

    .line 52
    .line 53
    sub-int/2addr v1, v2

    .line 54
    iget-object v3, p0, Landroidx/recyclerview/widget/SortedList;->mData:[Ljava/lang/Object;

    .line 55
    .line 56
    invoke-static {p1, v2, v3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 57
    .line 58
    .line 59
    iget p1, p0, Landroidx/recyclerview/widget/SortedList;->mNewDataStart:I

    .line 60
    .line 61
    add-int/2addr p1, v1

    .line 62
    iput p1, p0, Landroidx/recyclerview/widget/SortedList;->mNewDataStart:I

    .line 63
    .line 64
    iget p1, p0, Landroidx/recyclerview/widget/SortedList;->mSize:I

    .line 65
    .line 66
    add-int/2addr p1, v1

    .line 67
    iput p1, p0, Landroidx/recyclerview/widget/SortedList;->mSize:I

    .line 68
    .line 69
    iget-object p1, p0, Landroidx/recyclerview/widget/SortedList;->mCallback:Landroidx/recyclerview/widget/SortedList$Callback;

    .line 70
    .line 71
    invoke-interface {p1, v2, v1}, Landroidx/recyclerview/widget/ListUpdateCallback;->onInserted(II)V

    .line 72
    .line 73
    .line 74
    goto :goto_57

    .line 75
    :cond_4a
    if-lt v2, v1, :cond_60

    .line 76
    .line 77
    sub-int/2addr v4, v3

    .line 78
    iget p1, p0, Landroidx/recyclerview/widget/SortedList;->mSize:I

    .line 79
    .line 80
    sub-int/2addr p1, v4

    .line 81
    iput p1, p0, Landroidx/recyclerview/widget/SortedList;->mSize:I

    .line 82
    .line 83
    iget-object p1, p0, Landroidx/recyclerview/widget/SortedList;->mCallback:Landroidx/recyclerview/widget/SortedList$Callback;

    .line 84
    .line 85
    invoke-interface {p1, v2, v4}, Landroidx/recyclerview/widget/ListUpdateCallback;->onRemoved(II)V

    .line 86
    .line 87
    .line 88
    :cond_57
    :goto_57
    const/4 p1, 0x0

    .line 89
    iput-object p1, p0, Landroidx/recyclerview/widget/SortedList;->mOldData:[Ljava/lang/Object;

    .line 90
    .line 91
    if-nez v0, :cond_5f

    .line 92
    .line 93
    invoke-virtual {p0}, Landroidx/recyclerview/widget/SortedList;->endBatchedUpdates()V

    .line 94
    .line 95
    .line 96
    :cond_5f
    return-void

    .line 97
    :cond_60
    iget-object v4, p0, Landroidx/recyclerview/widget/SortedList;->mOldData:[Ljava/lang/Object;

    .line 98
    .line 99
    aget-object v3, v4, v3

    .line 100
    .line 101
    aget-object v2, p1, v2

    .line 102
    .line 103
    iget-object v4, p0, Landroidx/recyclerview/widget/SortedList;->mCallback:Landroidx/recyclerview/widget/SortedList$Callback;

    .line 104
    .line 105
    invoke-virtual {v4, v3, v2}, Landroidx/recyclerview/widget/SortedList$Callback;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    .line 106
    .line 107
    .line 108
    move-result v4

    .line 109
    if-gez v4, :cond_72

    .line 110
    .line 111
    invoke-direct {p0}, Landroidx/recyclerview/widget/SortedList;->replaceAllRemove()V

    .line 112
    .line 113
    .line 114
    goto :goto_24

    .line 115
    :cond_72
    if-lez v4, :cond_78

    .line 116
    .line 117
    invoke-direct {p0, v2}, Landroidx/recyclerview/widget/SortedList;->replaceAllInsert(Ljava/lang/Object;)V

    .line 118
    .line 119
    .line 120
    goto :goto_24

    .line 121
    :cond_78
    iget-object v4, p0, Landroidx/recyclerview/widget/SortedList;->mCallback:Landroidx/recyclerview/widget/SortedList$Callback;

    .line 122
    .line 123
    invoke-virtual {v4, v3, v2}, Landroidx/recyclerview/widget/SortedList$Callback;->areItemsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 124
    .line 125
    .line 126
    move-result v4

    .line 127
    if-nez v4, :cond_87

    .line 128
    .line 129
    invoke-direct {p0}, Landroidx/recyclerview/widget/SortedList;->replaceAllRemove()V

    .line 130
    .line 131
    .line 132
    invoke-direct {p0, v2}, Landroidx/recyclerview/widget/SortedList;->replaceAllInsert(Ljava/lang/Object;)V

    .line 133
    .line 134
    .line 135
    goto :goto_24

    .line 136
    :cond_87
    iget-object v4, p0, Landroidx/recyclerview/widget/SortedList;->mData:[Ljava/lang/Object;

    .line 137
    .line 138
    iget v5, p0, Landroidx/recyclerview/widget/SortedList;->mNewDataStart:I

    .line 139
    .line 140
    aput-object v2, v4, v5

    .line 141
    .line 142
    iget v4, p0, Landroidx/recyclerview/widget/SortedList;->mOldDataStart:I

    .line 143
    .line 144
    const/4 v6, 0x1

    .line 145
    add-int/2addr v4, v6

    .line 146
    iput v4, p0, Landroidx/recyclerview/widget/SortedList;->mOldDataStart:I

    .line 147
    .line 148
    add-int/2addr v5, v6

    .line 149
    iput v5, p0, Landroidx/recyclerview/widget/SortedList;->mNewDataStart:I

    .line 150
    .line 151
    iget-object v4, p0, Landroidx/recyclerview/widget/SortedList;->mCallback:Landroidx/recyclerview/widget/SortedList$Callback;

    .line 152
    .line 153
    invoke-virtual {v4, v3, v2}, Landroidx/recyclerview/widget/SortedList$Callback;->areContentsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 154
    .line 155
    .line 156
    move-result v4

    .line 157
    if-nez v4, :cond_24

    .line 158
    .line 159
    iget-object v4, p0, Landroidx/recyclerview/widget/SortedList;->mCallback:Landroidx/recyclerview/widget/SortedList$Callback;

    .line 160
    .line 161
    iget v5, p0, Landroidx/recyclerview/widget/SortedList;->mNewDataStart:I

    .line 162
    .line 163
    sub-int/2addr v5, v6

    .line 164
    invoke-virtual {v4, v3, v2}, Landroidx/recyclerview/widget/SortedList$Callback;->getChangePayload(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    .line 166
    .line 167
    move-result-object v2

    .line 168
    invoke-virtual {v4, v5, v6, v2}, Landroidx/recyclerview/widget/SortedList$Callback;->onChanged(IILjava/lang/Object;)V

    .line 169
    .line 170
    .line 171
    goto/16 :goto_24
.end method

.method private replaceAllRemove()V
    .registers 4

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/SortedList;->mSize:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    sub-int/2addr v0, v1

    .line 5
    iput v0, p0, Landroidx/recyclerview/widget/SortedList;->mSize:I

    .line 6
    .line 7
    iget v0, p0, Landroidx/recyclerview/widget/SortedList;->mOldDataStart:I

    .line 8
    .line 9
    add-int/2addr v0, v1

    .line 10
    iput v0, p0, Landroidx/recyclerview/widget/SortedList;->mOldDataStart:I

    .line 11
    .line 12
    iget-object v0, p0, Landroidx/recyclerview/widget/SortedList;->mCallback:Landroidx/recyclerview/widget/SortedList$Callback;

    .line 13
    .line 14
    iget v2, p0, Landroidx/recyclerview/widget/SortedList;->mNewDataStart:I

    .line 15
    .line 16
    invoke-interface {v0, v2, v1}, Landroidx/recyclerview/widget/ListUpdateCallback;->onRemoved(II)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method private sortAndDedup([Ljava/lang/Object;)I
    .registers 9
    .param p1    # [Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)I"
        }
    .end annotation

    .line 1
    array-length v0, p1

    .line 2
    const/4 v1, 0x0

    .line 3
    if-nez v0, :cond_5

    .line 4
    .line 5
    return v1

    .line 6
    :cond_5
    iget-object v0, p0, Landroidx/recyclerview/widget/SortedList;->mCallback:Landroidx/recyclerview/widget/SortedList$Callback;

    .line 7
    .line 8
    invoke-static {p1, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    move v2, v1

    .line 13
    move v1, v0

    .line 14
    :goto_d
    array-length v3, p1

    .line 15
    if-ge v0, v3, :cond_39

    .line 16
    .line 17
    aget-object v3, p1, v0

    .line 18
    .line 19
    iget-object v4, p0, Landroidx/recyclerview/widget/SortedList;->mCallback:Landroidx/recyclerview/widget/SortedList$Callback;

    .line 20
    .line 21
    aget-object v5, p1, v2

    .line 22
    .line 23
    invoke-virtual {v4, v5, v3}, Landroidx/recyclerview/widget/SortedList$Callback;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    .line 24
    .line 25
    .line 26
    move-result v4

    .line 27
    if-nez v4, :cond_2d

    .line 28
    .line 29
    invoke-direct {p0, v3, p1, v2, v1}, Landroidx/recyclerview/widget/SortedList;->findSameItem(Ljava/lang/Object;[Ljava/lang/Object;II)I

    .line 30
    .line 31
    .line 32
    move-result v4

    .line 33
    const/4 v5, -0x1

    .line 34
    if-eq v4, v5, :cond_26

    .line 35
    .line 36
    aput-object v3, p1, v4

    .line 37
    .line 38
    goto :goto_36

    .line 39
    :cond_26
    if-eq v1, v0, :cond_2a

    .line 40
    .line 41
    aput-object v3, p1, v1

    .line 42
    .line 43
    :cond_2a
    add-int/lit8 v1, v1, 0x1

    .line 44
    .line 45
    goto :goto_36

    .line 46
    :cond_2d
    if-eq v1, v0, :cond_31

    .line 47
    .line 48
    aput-object v3, p1, v1

    .line 49
    .line 50
    :cond_31
    add-int/lit8 v2, v1, 0x1

    .line 51
    .line 52
    move v6, v2

    .line 53
    move v2, v1

    .line 54
    move v1, v6

    .line 55
    :goto_36
    add-int/lit8 v0, v0, 0x1

    .line 56
    .line 57
    goto :goto_d

    .line 58
    :cond_39
    return v1
.end method

.method private throwIfInMutationOperation()V
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/SortedList;->mOldData:[Ljava/lang/Object;

    .line 2
    .line 3
    if-nez v0, :cond_5

    .line 4
    .line 5
    return-void

    .line 6
    :cond_5
    const-string v0, "Data cannot be mutated in the middle of a batch update operation such as addAll or replaceAll."

    .line 7
    .line 8
    invoke-static {v0}, Lj1/i;->l(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .line 71
    invoke-direct {p0}, Landroidx/recyclerview/widget/SortedList;->throwIfInMutationOperation()V

    const/4 v0, 0x1

    .line 72
    invoke-direct {p0, p1, v0}, Landroidx/recyclerview/widget/SortedList;->add(Ljava/lang/Object;Z)I

    move-result p1

    return p1
.end method

.method public addAll(Ljava/util/Collection;)V
    .registers 4
    .param p1    # Ljava/util/Collection;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "TT;>;)V"
        }
    .end annotation

    .line 23
    iget-object v0, p0, Landroidx/recyclerview/widget/SortedList;->mTClass:Ljava/lang/Class;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    .line 24
    invoke-interface {p1, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroidx/recyclerview/widget/SortedList;->addAll([Ljava/lang/Object;Z)V

    return-void
.end method

.method public varargs addAll([Ljava/lang/Object;)V
    .registers 3
    .param p1    # [Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 22
    invoke-virtual {p0, p1, v0}, Landroidx/recyclerview/widget/SortedList;->addAll([Ljava/lang/Object;Z)V

    return-void
.end method

.method public addAll([Ljava/lang/Object;Z)V
    .registers 4
    .param p1    # [Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/SortedList;->throwIfInMutationOperation()V

    .line 2
    .line 3
    .line 4
    array-length v0, p1

    .line 5
    if-nez v0, :cond_7

    .line 6
    .line 7
    return-void

    .line 8
    :cond_7
    if-eqz p2, :cond_d

    .line 9
    .line 10
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/SortedList;->addAllInternal([Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :cond_d
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/SortedList;->copyArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/SortedList;->addAllInternal([Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public beginBatchedUpdates()V
    .registers 3

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/SortedList;->throwIfInMutationOperation()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/recyclerview/widget/SortedList;->mCallback:Landroidx/recyclerview/widget/SortedList$Callback;

    .line 5
    .line 6
    instance-of v1, v0, Landroidx/recyclerview/widget/SortedList$BatchedCallback;

    .line 7
    .line 8
    if-eqz v1, :cond_a

    .line 9
    .line 10
    return-void

    .line 11
    :cond_a
    iget-object v1, p0, Landroidx/recyclerview/widget/SortedList;->mBatchedCallback:Landroidx/recyclerview/widget/SortedList$BatchedCallback;

    .line 12
    .line 13
    if-nez v1, :cond_15

    .line 14
    .line 15
    new-instance v1, Landroidx/recyclerview/widget/SortedList$BatchedCallback;

    .line 16
    .line 17
    invoke-direct {v1, v0}, Landroidx/recyclerview/widget/SortedList$BatchedCallback;-><init>(Landroidx/recyclerview/widget/SortedList$Callback;)V

    .line 18
    .line 19
    .line 20
    iput-object v1, p0, Landroidx/recyclerview/widget/SortedList;->mBatchedCallback:Landroidx/recyclerview/widget/SortedList$BatchedCallback;

    .line 21
    .line 22
    :cond_15
    iget-object v0, p0, Landroidx/recyclerview/widget/SortedList;->mBatchedCallback:Landroidx/recyclerview/widget/SortedList$BatchedCallback;

    .line 23
    .line 24
    iput-object v0, p0, Landroidx/recyclerview/widget/SortedList;->mCallback:Landroidx/recyclerview/widget/SortedList$Callback;

    .line 25
    .line 26
    return-void
.end method

.method public clear()V
    .registers 5

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/SortedList;->throwIfInMutationOperation()V

    .line 2
    .line 3
    .line 4
    iget v0, p0, Landroidx/recyclerview/widget/SortedList;->mSize:I

    .line 5
    .line 6
    if-nez v0, :cond_8

    .line 7
    .line 8
    return-void

    .line 9
    :cond_8
    iget-object v1, p0, Landroidx/recyclerview/widget/SortedList;->mData:[Ljava/lang/Object;

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    const/4 v3, 0x0

    .line 13
    invoke-static {v1, v3, v0, v2}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    iput v3, p0, Landroidx/recyclerview/widget/SortedList;->mSize:I

    .line 17
    .line 18
    iget-object v1, p0, Landroidx/recyclerview/widget/SortedList;->mCallback:Landroidx/recyclerview/widget/SortedList$Callback;

    .line 19
    .line 20
    invoke-interface {v1, v3, v0}, Landroidx/recyclerview/widget/ListUpdateCallback;->onRemoved(II)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public endBatchedUpdates()V
    .registers 3

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/SortedList;->throwIfInMutationOperation()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/recyclerview/widget/SortedList;->mCallback:Landroidx/recyclerview/widget/SortedList$Callback;

    .line 5
    .line 6
    instance-of v1, v0, Landroidx/recyclerview/widget/SortedList$BatchedCallback;

    .line 7
    .line 8
    if-eqz v1, :cond_e

    .line 9
    .line 10
    check-cast v0, Landroidx/recyclerview/widget/SortedList$BatchedCallback;

    .line 11
    .line 12
    invoke-virtual {v0}, Landroidx/recyclerview/widget/SortedList$BatchedCallback;->dispatchLastEvent()V

    .line 13
    .line 14
    .line 15
    :cond_e
    iget-object v0, p0, Landroidx/recyclerview/widget/SortedList;->mCallback:Landroidx/recyclerview/widget/SortedList$Callback;

    .line 16
    .line 17
    iget-object v1, p0, Landroidx/recyclerview/widget/SortedList;->mBatchedCallback:Landroidx/recyclerview/widget/SortedList$BatchedCallback;

    .line 18
    .line 19
    if-ne v0, v1, :cond_18

    .line 20
    .line 21
    iget-object v0, v1, Landroidx/recyclerview/widget/SortedList$BatchedCallback;->mWrappedCallback:Landroidx/recyclerview/widget/SortedList$Callback;

    .line 22
    .line 23
    iput-object v0, p0, Landroidx/recyclerview/widget/SortedList;->mCallback:Landroidx/recyclerview/widget/SortedList$Callback;

    .line 24
    .line 25
    :cond_18
    return-void
.end method

.method public get(I)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/SortedList;->mSize:I

    .line 2
    .line 3
    if-ge p1, v0, :cond_1a

    .line 4
    .line 5
    if-ltz p1, :cond_1a

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/recyclerview/widget/SortedList;->mOldData:[Ljava/lang/Object;

    .line 8
    .line 9
    if-eqz v0, :cond_15

    .line 10
    .line 11
    iget v1, p0, Landroidx/recyclerview/widget/SortedList;->mNewDataStart:I

    .line 12
    .line 13
    if-lt p1, v1, :cond_15

    .line 14
    .line 15
    sub-int/2addr p1, v1

    .line 16
    iget v1, p0, Landroidx/recyclerview/widget/SortedList;->mOldDataStart:I

    .line 17
    .line 18
    add-int/2addr p1, v1

    .line 19
    aget-object p1, v0, p1

    .line 20
    .line 21
    return-object p1

    .line 22
    :cond_15
    iget-object v0, p0, Landroidx/recyclerview/widget/SortedList;->mData:[Ljava/lang/Object;

    .line 23
    .line 24
    aget-object p1, v0, p1

    .line 25
    .line 26
    return-object p1

    .line 27
    :cond_1a
    const-string v0, "Asked to get item at "

    .line 28
    .line 29
    const-string v1, " but size is "

    .line 30
    .line 31
    invoke-static {p1, v0, v1}, Lai/onnxruntime/a;->q(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    iget v0, p0, Landroidx/recyclerview/widget/SortedList;->mSize:I

    .line 36
    .line 37
    invoke-static {p1, v0}, Lkotlin/text/b;->a(Ljava/lang/StringBuilder;I)V

    .line 38
    .line 39
    .line 40
    const/4 p1, 0x0

    .line 41
    return-object p1
.end method

.method public indexOf(Ljava/lang/Object;)I
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/SortedList;->mOldData:[Ljava/lang/Object;

    .line 2
    .line 3
    iget-object v3, p0, Landroidx/recyclerview/widget/SortedList;->mData:[Ljava/lang/Object;

    .line 4
    .line 5
    if-eqz v0, :cond_2c

    .line 6
    .line 7
    iget v5, p0, Landroidx/recyclerview/widget/SortedList;->mNewDataStart:I

    .line 8
    .line 9
    const/4 v6, 0x4

    .line 10
    const/4 v4, 0x0

    .line 11
    move-object v1, p0

    .line 12
    move-object v2, p1

    .line 13
    invoke-direct/range {v1 .. v6}, Landroidx/recyclerview/widget/SortedList;->findIndexOf(Ljava/lang/Object;[Ljava/lang/Object;III)I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    const/4 v6, -0x1

    .line 18
    if-eq p1, v6, :cond_14

    .line 19
    .line 20
    return p1

    .line 21
    :cond_14
    move-object v0, v1

    .line 22
    move-object v1, v2

    .line 23
    iget-object v2, v0, Landroidx/recyclerview/widget/SortedList;->mOldData:[Ljava/lang/Object;

    .line 24
    .line 25
    iget v3, v0, Landroidx/recyclerview/widget/SortedList;->mOldDataStart:I

    .line 26
    .line 27
    iget v4, v0, Landroidx/recyclerview/widget/SortedList;->mOldDataSize:I

    .line 28
    .line 29
    const/4 v5, 0x4

    .line 30
    invoke-direct/range {v0 .. v5}, Landroidx/recyclerview/widget/SortedList;->findIndexOf(Ljava/lang/Object;[Ljava/lang/Object;III)I

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    move-object v1, v0

    .line 35
    if-eq p1, v6, :cond_2b

    .line 36
    .line 37
    iget v0, v1, Landroidx/recyclerview/widget/SortedList;->mOldDataStart:I

    .line 38
    .line 39
    sub-int/2addr p1, v0

    .line 40
    iget v0, v1, Landroidx/recyclerview/widget/SortedList;->mNewDataStart:I

    .line 41
    .line 42
    add-int/2addr p1, v0

    .line 43
    return p1

    .line 44
    :cond_2b
    return v6

    .line 45
    :cond_2c
    move-object v1, p0

    .line 46
    move-object v2, p1

    .line 47
    iget v5, v1, Landroidx/recyclerview/widget/SortedList;->mSize:I

    .line 48
    .line 49
    const/4 v6, 0x4

    .line 50
    const/4 v4, 0x0

    .line 51
    invoke-direct/range {v1 .. v6}, Landroidx/recyclerview/widget/SortedList;->findIndexOf(Ljava/lang/Object;[Ljava/lang/Object;III)I

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    return p1
.end method

.method public recalculatePositionOfItemAt(I)V
    .registers 4

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/SortedList;->throwIfInMutationOperation()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/SortedList;->get(I)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-direct {p0, p1, v1}, Landroidx/recyclerview/widget/SortedList;->removeItemAtIndex(IZ)V

    .line 10
    .line 11
    .line 12
    invoke-direct {p0, v0, v1}, Landroidx/recyclerview/widget/SortedList;->add(Ljava/lang/Object;Z)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eq p1, v0, :cond_16

    .line 17
    .line 18
    iget-object v1, p0, Landroidx/recyclerview/widget/SortedList;->mCallback:Landroidx/recyclerview/widget/SortedList$Callback;

    .line 19
    .line 20
    invoke-interface {v1, p1, v0}, Landroidx/recyclerview/widget/ListUpdateCallback;->onMoved(II)V

    .line 21
    .line 22
    .line 23
    :cond_16
    return-void
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 23
    invoke-direct {p0}, Landroidx/recyclerview/widget/SortedList;->throwIfInMutationOperation()V

    const/4 v0, 0x1

    .line 24
    invoke-direct {p0, p1, v0}, Landroidx/recyclerview/widget/SortedList;->remove(Ljava/lang/Object;Z)Z

    move-result p1

    return p1
.end method

.method public removeItemAt(I)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/SortedList;->throwIfInMutationOperation()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/SortedList;->get(I)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const/4 v1, 0x1

    .line 9
    invoke-direct {p0, p1, v1}, Landroidx/recyclerview/widget/SortedList;->removeItemAtIndex(IZ)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public replaceAll(Ljava/util/Collection;)V
    .registers 4
    .param p1    # Ljava/util/Collection;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/SortedList;->mTClass:Ljava/lang/Class;

    .line 2
    .line 3
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, [Ljava/lang/Object;

    .line 12
    .line 13
    invoke-interface {p1, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    const/4 v0, 0x1

    .line 18
    invoke-virtual {p0, p1, v0}, Landroidx/recyclerview/widget/SortedList;->replaceAll([Ljava/lang/Object;Z)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public varargs replaceAll([Ljava/lang/Object;)V
    .registers 3
    .param p1    # [Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 22
    invoke-virtual {p0, p1, v0}, Landroidx/recyclerview/widget/SortedList;->replaceAll([Ljava/lang/Object;Z)V

    return-void
.end method

.method public replaceAll([Ljava/lang/Object;Z)V
    .registers 3
    .param p1    # [Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;Z)V"
        }
    .end annotation

    .line 23
    invoke-direct {p0}, Landroidx/recyclerview/widget/SortedList;->throwIfInMutationOperation()V

    if-eqz p2, :cond_9

    .line 24
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/SortedList;->replaceAllInternal([Ljava/lang/Object;)V

    return-void

    .line 25
    :cond_9
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/SortedList;->copyArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/SortedList;->replaceAllInternal([Ljava/lang/Object;)V

    return-void
.end method

.method public size()I
    .registers 2

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/SortedList;->mSize:I

    .line 2
    .line 3
    return v0
.end method

.method public updateItemAt(ILjava/lang/Object;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/SortedList;->throwIfInMutationOperation()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/SortedList;->get(I)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const/4 v1, 0x1

    .line 9
    const/4 v2, 0x0

    .line 10
    if-eq v0, p2, :cond_16

    .line 11
    .line 12
    iget-object v3, p0, Landroidx/recyclerview/widget/SortedList;->mCallback:Landroidx/recyclerview/widget/SortedList$Callback;

    .line 13
    .line 14
    invoke-virtual {v3, v0, p2}, Landroidx/recyclerview/widget/SortedList$Callback;->areContentsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    if-nez v3, :cond_14

    .line 19
    .line 20
    goto :goto_16

    .line 21
    :cond_14
    move v3, v2

    .line 22
    goto :goto_17

    .line 23
    :cond_16
    :goto_16
    move v3, v1

    .line 24
    :goto_17
    if-eq v0, p2, :cond_31

    .line 25
    .line 26
    iget-object v4, p0, Landroidx/recyclerview/widget/SortedList;->mCallback:Landroidx/recyclerview/widget/SortedList$Callback;

    .line 27
    .line 28
    invoke-virtual {v4, v0, p2}, Landroidx/recyclerview/widget/SortedList$Callback;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    .line 29
    .line 30
    .line 31
    move-result v4

    .line 32
    if-nez v4, :cond_31

    .line 33
    .line 34
    iget-object v2, p0, Landroidx/recyclerview/widget/SortedList;->mData:[Ljava/lang/Object;

    .line 35
    .line 36
    aput-object p2, v2, p1

    .line 37
    .line 38
    if-eqz v3, :cond_4a

    .line 39
    .line 40
    iget-object v2, p0, Landroidx/recyclerview/widget/SortedList;->mCallback:Landroidx/recyclerview/widget/SortedList$Callback;

    .line 41
    .line 42
    invoke-virtual {v2, v0, p2}, Landroidx/recyclerview/widget/SortedList$Callback;->getChangePayload(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object p2

    .line 46
    invoke-virtual {v2, p1, v1, p2}, Landroidx/recyclerview/widget/SortedList$Callback;->onChanged(IILjava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    return-void

    .line 50
    :cond_31
    if-eqz v3, :cond_3c

    .line 51
    .line 52
    iget-object v3, p0, Landroidx/recyclerview/widget/SortedList;->mCallback:Landroidx/recyclerview/widget/SortedList$Callback;

    .line 53
    .line 54
    invoke-virtual {v3, v0, p2}, Landroidx/recyclerview/widget/SortedList$Callback;->getChangePayload(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-virtual {v3, p1, v1, v0}, Landroidx/recyclerview/widget/SortedList$Callback;->onChanged(IILjava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    :cond_3c
    invoke-direct {p0, p1, v2}, Landroidx/recyclerview/widget/SortedList;->removeItemAtIndex(IZ)V

    .line 62
    .line 63
    .line 64
    invoke-direct {p0, p2, v2}, Landroidx/recyclerview/widget/SortedList;->add(Ljava/lang/Object;Z)I

    .line 65
    .line 66
    .line 67
    move-result p2

    .line 68
    if-eq p1, p2, :cond_4a

    .line 69
    .line 70
    iget-object v0, p0, Landroidx/recyclerview/widget/SortedList;->mCallback:Landroidx/recyclerview/widget/SortedList$Callback;

    .line 71
    .line 72
    invoke-interface {v0, p1, p2}, Landroidx/recyclerview/widget/ListUpdateCallback;->onMoved(II)V

    .line 73
    .line 74
    .line 75
    :cond_4a
    return-void
.end method
