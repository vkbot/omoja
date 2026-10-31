.class public final Li9/z1;
.super Li9/i1;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# static fields
.field public static final c:Li9/z1;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Li9/z1;

    .line 2
    .line 3
    sget-object v1, Lkotlin/ULong;->Companion:Lkotlin/ULong$Companion;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    sget-object v1, Li9/a2;->a:Li9/a2;

    .line 9
    .line 10
    invoke-direct {v0, v1}, Li9/i1;-><init>(Le9/b;)V

    .line 11
    .line 12
    .line 13
    sput-object v0, Li9/z1;->c:Li9/z1;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final h(Ljava/lang/Object;)I
    .registers 2

    .line 1
    check-cast p1, Lkotlin/ULongArray;

    .line 2
    .line 3
    invoke-virtual {p1}, Lkotlin/ULongArray;->unbox-impl()[J

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-static {p1}, Lkotlin/ULongArray;->getSize-impl([J)I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    return p1
.end method

.method public final k(Lh9/c;ILjava/lang/Object;)V
    .registers 7

    .line 1
    check-cast p3, Li9/y1;

    .line 2
    .line 3
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Li9/i1;->b:Li9/h1;

    .line 7
    .line 8
    invoke-interface {p1, v0, p2}, Lh9/c;->decodeInlineElement(Lg9/e;I)Lh9/e;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-interface {p1}, Lh9/e;->decodeLong()J

    .line 13
    .line 14
    .line 15
    move-result-wide p1

    .line 16
    invoke-static {p1, p2}, Lkotlin/ULong;->constructor-impl(J)J

    .line 17
    .line 18
    .line 19
    move-result-wide p1

    .line 20
    invoke-static {p3}, Li9/g1;->c(Li9/g1;)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p3, Li9/y1;->a:[J

    .line 24
    .line 25
    iget v1, p3, Li9/y1;->b:I

    .line 26
    .line 27
    add-int/lit8 v2, v1, 0x1

    .line 28
    .line 29
    iput v2, p3, Li9/y1;->b:I

    .line 30
    .line 31
    invoke-static {v0, v1, p1, p2}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public final l(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 1
    check-cast p1, Lkotlin/ULongArray;

    .line 2
    .line 3
    invoke-virtual {p1}, Lkotlin/ULongArray;->unbox-impl()[J

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    new-instance v0, Li9/y1;

    .line 11
    .line 12
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 13
    .line 14
    .line 15
    iput-object p1, v0, Li9/y1;->a:[J

    .line 16
    .line 17
    invoke-static {p1}, Lkotlin/ULongArray;->getSize-impl([J)I

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    iput p1, v0, Li9/y1;->b:I

    .line 22
    .line 23
    const/16 p1, 0xa

    .line 24
    .line 25
    invoke-virtual {v0, p1}, Li9/y1;->b(I)V

    .line 26
    .line 27
    .line 28
    return-object v0
.end method

.method public final o()Ljava/lang/Object;
    .registers 2

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Lkotlin/ULongArray;->constructor-impl(I)[J

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    invoke-static {v0}, Lkotlin/ULongArray;->box-impl([J)Lkotlin/ULongArray;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    return-object v0
.end method

.method public final p(Lh9/d;Ljava/lang/Object;I)V
    .registers 8

    .line 1
    check-cast p2, Lkotlin/ULongArray;

    .line 2
    .line 3
    invoke-virtual {p2}, Lkotlin/ULongArray;->unbox-impl()[J

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    :goto_d
    if-ge v0, p3, :cond_1f

    .line 15
    .line 16
    iget-object v1, p0, Li9/i1;->b:Li9/h1;

    .line 17
    .line 18
    invoke-interface {p1, v1, v0}, Lh9/d;->encodeInlineElement(Lg9/e;I)Lh9/f;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-static {p2, v0}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    .line 23
    .line 24
    .line 25
    move-result-wide v2

    .line 26
    invoke-interface {v1, v2, v3}, Lh9/f;->encodeLong(J)V

    .line 27
    .line 28
    .line 29
    add-int/lit8 v0, v0, 0x1

    .line 30
    .line 31
    goto :goto_d

    .line 32
    :cond_1f
    return-void
.end method
