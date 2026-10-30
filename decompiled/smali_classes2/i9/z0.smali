.class public final Li9/z0;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Le9/b;


# static fields
.field public static final a:Li9/z0;

.field public static final b:Li9/y0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Li9/z0;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Li9/z0;->a:Li9/z0;

    .line 7
    .line 8
    sget-object v0, Li9/y0;->a:Li9/y0;

    .line 9
    .line 10
    sput-object v0, Li9/z0;->b:Li9/y0;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final a()Lg9/e;
    .locals 1

    .line 1
    sget-object v0, Li9/z0;->b:Li9/y0;

    .line 2
    .line 3
    return-object v0
.end method

.method public final b(Lh9/b;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Ljava/lang/Void;

    .line 2
    .line 3
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    new-instance p1, Le9/g;

    .line 7
    .line 8
    const-string p2, "\'kotlin.Nothing\' cannot be serialized"

    .line 9
    .line 10
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    throw p1
.end method

.method public final c(Landroidx/navigation/serialization/RouteDecoder;)Ljava/lang/Object;
    .locals 1

    .line 1
    new-instance p1, Le9/g;

    .line 2
    .line 3
    const-string v0, "\'kotlin.Nothing\' does not have instances"

    .line 4
    .line 5
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    throw p1
.end method
