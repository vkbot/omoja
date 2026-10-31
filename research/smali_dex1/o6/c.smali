.class public final Lo6/c;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# instance fields
.field public final a:I

.field public final b:[I

.field public final c:[Lz5/o;


# direct methods
.method public constructor <init>(IIII[I)V
    .registers 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lo6/c;->a:I

    .line 5
    .line 6
    iput-object p5, p0, Lo6/c;->b:[I

    .line 7
    .line 8
    new-instance p1, Lz5/o;

    .line 9
    .line 10
    int-to-float p2, p2

    .line 11
    int-to-float p4, p4

    .line 12
    invoke-direct {p1, p2, p4}, Lz5/o;-><init>(FF)V

    .line 13
    .line 14
    .line 15
    new-instance p2, Lz5/o;

    .line 16
    .line 17
    int-to-float p3, p3

    .line 18
    invoke-direct {p2, p3, p4}, Lz5/o;-><init>(FF)V

    .line 19
    .line 20
    .line 21
    filled-new-array {p1, p2}, [Lz5/o;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    iput-object p1, p0, Lo6/c;->c:[Lz5/o;

    .line 26
    .line 27
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 4

    .line 1
    instance-of v0, p1, Lo6/c;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_6

    .line 5
    .line 6
    return v1

    .line 7
    :cond_6
    check-cast p1, Lo6/c;

    .line 8
    .line 9
    iget v0, p0, Lo6/c;->a:I

    .line 10
    .line 11
    iget p1, p1, Lo6/c;->a:I

    .line 12
    .line 13
    if-ne v0, p1, :cond_10

    .line 14
    .line 15
    const/4 p1, 0x1

    .line 16
    return p1

    .line 17
    :cond_10
    return v1
.end method

.method public final hashCode()I
    .registers 2

    .line 1
    iget v0, p0, Lo6/c;->a:I

    .line 2
    .line 3
    return v0
.end method
