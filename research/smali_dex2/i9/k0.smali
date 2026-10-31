.class public final Li9/k0;
.super Li9/i1;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# static fields
.field public static final c:Li9/k0;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Li9/k0;

    .line 2
    .line 3
    sget-object v1, Lkotlin/jvm/internal/IntCompanionObject;->INSTANCE:Lkotlin/jvm/internal/IntCompanionObject;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    sget-object v1, Li9/l0;->a:Li9/l0;

    .line 9
    .line 10
    invoke-direct {v0, v1}, Li9/i1;-><init>(Le9/b;)V

    .line 11
    .line 12
    .line 13
    sput-object v0, Li9/k0;->c:Li9/k0;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final h(Ljava/lang/Object;)I
    .registers 2

    .line 1
    check-cast p1, [I

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    array-length p1, p1

    .line 7
    return p1
.end method

.method public final k(Lh9/c;ILjava/lang/Object;)V
    .registers 6

    .line 1
    check-cast p3, Li9/j0;

    .line 2
    .line 3
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Li9/i1;->b:Li9/h1;

    .line 7
    .line 8
    invoke-interface {p1, v0, p2}, Lh9/c;->decodeIntElement(Lg9/e;I)I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    invoke-static {p3}, Li9/g1;->c(Li9/g1;)V

    .line 13
    .line 14
    .line 15
    iget-object p2, p3, Li9/j0;->a:[I

    .line 16
    .line 17
    iget v0, p3, Li9/j0;->b:I

    .line 18
    .line 19
    add-int/lit8 v1, v0, 0x1

    .line 20
    .line 21
    iput v1, p3, Li9/j0;->b:I

    .line 22
    .line 23
    aput p1, p2, v0

    .line 24
    .line 25
    return-void
.end method

.method public final l(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 1
    check-cast p1, [I

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    new-instance v0, Li9/j0;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, v0, Li9/j0;->a:[I

    .line 12
    .line 13
    array-length p1, p1

    .line 14
    iput p1, v0, Li9/j0;->b:I

    .line 15
    .line 16
    const/16 p1, 0xa

    .line 17
    .line 18
    invoke-virtual {v0, p1}, Li9/j0;->b(I)V

    .line 19
    .line 20
    .line 21
    return-object v0
.end method

.method public final o()Ljava/lang/Object;
    .registers 2

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [I

    .line 3
    .line 4
    return-object v0
.end method

.method public final p(Lh9/d;Ljava/lang/Object;I)V
    .registers 7

    .line 1
    check-cast p2, [I

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    :goto_9
    if-ge v0, p3, :cond_15

    .line 11
    .line 12
    iget-object v1, p0, Li9/i1;->b:Li9/h1;

    .line 13
    .line 14
    aget v2, p2, v0

    .line 15
    .line 16
    invoke-interface {p1, v1, v0, v2}, Lh9/d;->encodeIntElement(Lg9/e;II)V

    .line 17
    .line 18
    .line 19
    add-int/lit8 v0, v0, 0x1

    .line 20
    .line 21
    goto :goto_9

    .line 22
    :cond_15
    return-void
.end method
