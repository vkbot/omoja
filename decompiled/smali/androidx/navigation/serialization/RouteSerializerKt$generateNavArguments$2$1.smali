.class final Landroidx/navigation/serialization/RouteSerializerKt$generateNavArguments$2$1;
.super Lkotlin/jvm/internal/Lambda;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/navigation/serialization/RouteSerializerKt;->generateNavArguments(Le9/b;Ljava/util/Map;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroidx/navigation/NavArgumentBuilder;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001\"\u0004\u0008\u0000\u0010\u0002*\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "T",
        "Landroidx/navigation/NavArgumentBuilder;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $index:I

.field final synthetic $name:Ljava/lang/String;

.field final synthetic $this_generateNavArguments:Le9/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le9/b;"
        }
    .end annotation
.end field

.field final synthetic $typeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lkotlin/reflect/KType;",
            "Landroidx/navigation/NavType<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Le9/b;ILjava/util/Map;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le9/b;",
            "I",
            "Ljava/util/Map<",
            "Lkotlin/reflect/KType;",
            "+",
            "Landroidx/navigation/NavType<",
            "*>;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/navigation/serialization/RouteSerializerKt$generateNavArguments$2$1;->$this_generateNavArguments:Le9/b;

    .line 2
    .line 3
    iput p2, p0, Landroidx/navigation/serialization/RouteSerializerKt$generateNavArguments$2$1;->$index:I

    .line 4
    .line 5
    iput-object p3, p0, Landroidx/navigation/serialization/RouteSerializerKt$generateNavArguments$2$1;->$typeMap:Ljava/util/Map;

    .line 6
    .line 7
    iput-object p4, p0, Landroidx/navigation/serialization/RouteSerializerKt$generateNavArguments$2$1;->$name:Ljava/lang/String;

    .line 8
    .line 9
    const/4 p1, 0x1

    .line 10
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 11
    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 83
    check-cast p1, Landroidx/navigation/NavArgumentBuilder;

    invoke-virtual {p0, p1}, Landroidx/navigation/serialization/RouteSerializerKt$generateNavArguments$2$1;->invoke(Landroidx/navigation/NavArgumentBuilder;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroidx/navigation/NavArgumentBuilder;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/navigation/serialization/RouteSerializerKt$generateNavArguments$2$1;->$this_generateNavArguments:Le9/b;

    .line 5
    .line 6
    invoke-interface {v0}, Le9/h;->a()Lg9/e;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iget v1, p0, Landroidx/navigation/serialization/RouteSerializerKt$generateNavArguments$2$1;->$index:I

    .line 11
    .line 12
    invoke-interface {v0, v1}, Lg9/e;->f(I)Lg9/e;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-interface {v0}, Lg9/e;->c()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    iget-object v2, p0, Landroidx/navigation/serialization/RouteSerializerKt$generateNavArguments$2$1;->$typeMap:Ljava/util/Map;

    .line 21
    .line 22
    invoke-static {v0, v2}, Landroidx/navigation/serialization/RouteSerializerKt;->access$computeNavType(Lg9/e;Ljava/util/Map;)Landroidx/navigation/NavType;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    if-eqz v2, :cond_1

    .line 27
    .line 28
    invoke-virtual {p1, v2}, Landroidx/navigation/NavArgumentBuilder;->setType(Landroidx/navigation/NavType;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, v1}, Landroidx/navigation/NavArgumentBuilder;->setNullable(Z)V

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Landroidx/navigation/serialization/RouteSerializerKt$generateNavArguments$2$1;->$this_generateNavArguments:Le9/b;

    .line 35
    .line 36
    invoke-interface {v0}, Le9/h;->a()Lg9/e;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    iget v1, p0, Landroidx/navigation/serialization/RouteSerializerKt$generateNavArguments$2$1;->$index:I

    .line 41
    .line 42
    invoke-interface {v0, v1}, Lg9/e;->g(I)Z

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    if-eqz v0, :cond_0

    .line 47
    .line 48
    const/4 v0, 0x1

    .line 49
    invoke-virtual {p1, v0}, Landroidx/navigation/NavArgumentBuilder;->setUnknownDefaultValuePresent$navigation_common_release(Z)V

    .line 50
    .line 51
    .line 52
    :cond_0
    return-void

    .line 53
    :cond_1
    iget-object p1, p0, Landroidx/navigation/serialization/RouteSerializerKt$generateNavArguments$2$1;->$name:Ljava/lang/String;

    .line 54
    .line 55
    invoke-interface {v0}, Lg9/e;->a()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    iget-object v1, p0, Landroidx/navigation/serialization/RouteSerializerKt$generateNavArguments$2$1;->$this_generateNavArguments:Le9/b;

    .line 60
    .line 61
    invoke-interface {v1}, Le9/h;->a()Lg9/e;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    invoke-interface {v1}, Lg9/e;->a()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    iget-object v2, p0, Landroidx/navigation/serialization/RouteSerializerKt$generateNavArguments$2$1;->$typeMap:Ljava/util/Map;

    .line 70
    .line 71
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    invoke-static {p1, v0, v1, v2}, Landroidx/navigation/serialization/RouteSerializerKt;->access$unknownNavTypeErrorMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    invoke-static {p1}, Lj1/i;->k(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    return-void
.end method
