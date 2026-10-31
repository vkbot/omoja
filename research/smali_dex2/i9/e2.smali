.class public final Li9/e2;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Le9/b;


# static fields
.field public static final b:Li9/e2;


# instance fields
.field public final synthetic a:Li9/b1;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Li9/e2;

    .line 2
    .line 3
    invoke-direct {v0}, Li9/e2;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Li9/e2;->b:Li9/e2;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Li9/b1;

    .line 5
    .line 6
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 7
    .line 8
    invoke-direct {v0, v1}, Li9/b1;-><init>(Lkotlin/Unit;)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Li9/e2;->a:Li9/b1;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final a()Lg9/e;
    .registers 2

    .line 1
    iget-object v0, p0, Li9/e2;->a:Li9/b1;

    .line 2
    .line 3
    invoke-virtual {v0}, Li9/b1;->a()Lg9/e;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final b(Lh9/b;Ljava/lang/Object;)V
    .registers 4

    .line 1
    check-cast p2, Lkotlin/Unit;

    .line 2
    .line 3
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Li9/e2;->a:Li9/b1;

    .line 7
    .line 8
    invoke-virtual {v0, p1, p2}, Li9/b1;->b(Lh9/b;Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final c(Landroidx/navigation/serialization/RouteDecoder;)Ljava/lang/Object;
    .registers 3

    .line 1
    iget-object v0, p0, Li9/e2;->a:Li9/b1;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Li9/b1;->c(Landroidx/navigation/serialization/RouteDecoder;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 7
    .line 8
    return-object p1
.end method
