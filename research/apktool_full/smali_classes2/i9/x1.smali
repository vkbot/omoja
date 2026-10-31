.class public final Li9/x1;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Le9/b;


# static fields
.field public static final a:Li9/x1;

.field public static final b:Li9/h0;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Li9/x1;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Li9/x1;->a:Li9/x1;

    .line 7
    .line 8
    sget-object v0, Lkotlin/jvm/internal/IntCompanionObject;->INSTANCE:Lkotlin/jvm/internal/IntCompanionObject;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    sget-object v0, Li9/l0;->a:Li9/l0;

    .line 14
    .line 15
    const-string v1, "kotlin.UInt"

    .line 16
    .line 17
    invoke-static {v1, v0}, Li9/d1;->a(Ljava/lang/String;Le9/b;)Li9/h0;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    sput-object v0, Li9/x1;->b:Li9/h0;

    .line 22
    .line 23
    return-void
.end method


# virtual methods
.method public final a()Lg9/e;
    .locals 1

    .line 1
    sget-object v0, Li9/x1;->b:Li9/h0;

    .line 2
    .line 3
    return-object v0
.end method

.method public final b(Lh9/b;Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p2, Lkotlin/UInt;

    .line 2
    .line 3
    invoke-virtual {p2}, Lkotlin/UInt;->unbox-impl()I

    .line 4
    .line 5
    .line 6
    move-result p2

    .line 7
    sget-object v0, Li9/x1;->b:Li9/h0;

    .line 8
    .line 9
    invoke-interface {p1, v0}, Lh9/f;->encodeInline(Lg9/e;)Lh9/f;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-interface {p1, p2}, Lh9/f;->encodeInt(I)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final c(Landroidx/navigation/serialization/RouteDecoder;)Ljava/lang/Object;
    .locals 1

    .line 1
    sget-object v0, Li9/x1;->b:Li9/h0;

    .line 2
    .line 3
    invoke-interface {p1, v0}, Lh9/e;->decodeInline(Lg9/e;)Lh9/e;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-interface {p1}, Lh9/e;->decodeInt()I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    invoke-static {p1}, Lkotlin/UInt;->constructor-impl(I)I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    invoke-static {p1}, Lkotlin/UInt;->box-impl(I)Lkotlin/UInt;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    return-object p1
.end method
