.class public final Li9/a1;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Le9/b;


# instance fields
.field public final a:Le9/b;

.field public final b:Li9/m1;


# direct methods
.method public constructor <init>(Le9/b;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Li9/a1;->a:Le9/b;

    .line 5
    .line 6
    new-instance v0, Li9/m1;

    .line 7
    .line 8
    invoke-interface {p1}, Le9/h;->a()Lg9/e;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-direct {v0, p1}, Li9/m1;-><init>(Lg9/e;)V

    .line 13
    .line 14
    .line 15
    iput-object v0, p0, Li9/a1;->b:Li9/m1;

    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public final a()Lg9/e;
    .locals 1

    .line 1
    iget-object v0, p0, Li9/a1;->b:Li9/m1;

    .line 2
    .line 3
    return-object v0
.end method

.method public final b(Lh9/b;Ljava/lang/Object;)V
    .locals 1

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    invoke-interface {p1}, Lh9/f;->encodeNotNullMark()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Li9/a1;->a:Le9/b;

    .line 7
    .line 8
    invoke-interface {p1, v0, p2}, Lh9/f;->encodeSerializableValue(Le9/h;Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    invoke-interface {p1}, Lh9/f;->encodeNull()V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final c(Landroidx/navigation/serialization/RouteDecoder;)Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-interface {p1}, Lh9/e;->decodeNotNullMark()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Li9/a1;->a:Le9/b;

    .line 8
    .line 9
    invoke-interface {p1, v0}, Lh9/e;->decodeSerializableValue(Le9/a;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1

    .line 14
    :cond_0
    invoke-interface {p1}, Lh9/e;->decodeNull()Ljava/lang/Void;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    return-object p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    if-ne p0, p1, :cond_0

    .line 2
    .line 3
    goto :goto_0

    .line 4
    :cond_0
    if-eqz p1, :cond_3

    .line 5
    .line 6
    const-class v0, Li9/a1;

    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    if-eq v0, v1, :cond_1

    .line 13
    .line 14
    goto :goto_1

    .line 15
    :cond_1
    check-cast p1, Li9/a1;

    .line 16
    .line 17
    iget-object v0, p0, Li9/a1;->a:Le9/b;

    .line 18
    .line 19
    iget-object p1, p1, Li9/a1;->a:Le9/b;

    .line 20
    .line 21
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    if-nez p1, :cond_2

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_2
    :goto_0
    const/4 p1, 0x1

    .line 29
    return p1

    .line 30
    :cond_3
    :goto_1
    const/4 p1, 0x0

    .line 31
    return p1
.end method

.method public final hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Li9/a1;->a:Le9/b;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method
