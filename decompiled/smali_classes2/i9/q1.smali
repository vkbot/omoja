.class public final Li9/q1;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Le9/b;


# static fields
.field public static final a:Li9/q1;

.field public static final b:Li9/j1;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Li9/q1;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Li9/q1;->a:Li9/q1;

    .line 7
    .line 8
    new-instance v0, Li9/j1;

    .line 9
    .line 10
    const-string v1, "kotlin.String"

    .line 11
    .line 12
    sget-object v2, Lg9/d;->l:Lg9/d;

    .line 13
    .line 14
    invoke-direct {v0, v1, v2}, Li9/j1;-><init>(Ljava/lang/String;Lg9/d;)V

    .line 15
    .line 16
    .line 17
    sput-object v0, Li9/q1;->b:Li9/j1;

    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method public final a()Lg9/e;
    .locals 1

    .line 1
    sget-object v0, Li9/q1;->b:Li9/j1;

    .line 2
    .line 3
    return-object v0
.end method

.method public final b(Lh9/b;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-interface {p1, p2}, Lh9/f;->encodeString(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final c(Landroidx/navigation/serialization/RouteDecoder;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-interface {p1}, Lh9/e;->decodeString()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method
