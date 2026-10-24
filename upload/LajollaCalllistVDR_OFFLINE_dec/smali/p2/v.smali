.class public final Lp2/v;
.super Lkotlin/collections/e;
.source "SourceFile"

# interfaces
.implements Ljava/util/RandomAccess;


# instance fields
.field public final b:[Lokio/ByteString;

.field public final c:[I


# direct methods
.method public constructor <init>([Lokio/ByteString;[I)V
    .locals 0

    invoke-direct {p0}, Lkotlin/collections/e;-><init>()V

    iput-object p1, p0, Lp2/v;->b:[Lokio/ByteString;

    iput-object p2, p0, Lp2/v;->c:[I

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 0

    iget-object p0, p0, Lp2/v;->b:[Lokio/ByteString;

    array-length p0, p0

    return p0
.end method

.method public final bridge contains(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lokio/ByteString;

    if-eqz v0, :cond_0

    check-cast p1, Lokio/ByteString;

    invoke-super {p0, p1}, Lkotlin/collections/a;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final get(I)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lp2/v;->b:[Lokio/ByteString;

    aget-object p0, p0, p1

    return-object p0
.end method

.method public final bridge indexOf(Ljava/lang/Object;)I
    .locals 1

    instance-of v0, p1, Lokio/ByteString;

    if-eqz v0, :cond_0

    check-cast p1, Lokio/ByteString;

    invoke-super {p0, p1}, Lkotlin/collections/e;->indexOf(Ljava/lang/Object;)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public final bridge lastIndexOf(Ljava/lang/Object;)I
    .locals 1

    instance-of v0, p1, Lokio/ByteString;

    if-eqz v0, :cond_0

    check-cast p1, Lokio/ByteString;

    invoke-super {p0, p1}, Lkotlin/collections/e;->lastIndexOf(Ljava/lang/Object;)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method
