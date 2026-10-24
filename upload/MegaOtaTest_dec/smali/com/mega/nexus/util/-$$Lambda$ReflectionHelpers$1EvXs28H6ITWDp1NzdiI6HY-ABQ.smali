.class public final synthetic Lcom/mega/nexus/util/-$$Lambda$ReflectionHelpers$1EvXs28H6ITWDp1NzdiI6HY-ABQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# instance fields
.field public final synthetic f$0:Ljava/lang/Class;

.field public final synthetic f$1:Ljava/lang/Object;

.field public final synthetic f$2:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mega/nexus/util/-$$Lambda$ReflectionHelpers$1EvXs28H6ITWDp1NzdiI6HY-ABQ;->f$0:Ljava/lang/Class;

    iput-object p2, p0, Lcom/mega/nexus/util/-$$Lambda$ReflectionHelpers$1EvXs28H6ITWDp1NzdiI6HY-ABQ;->f$1:Ljava/lang/Object;

    iput-object p3, p0, Lcom/mega/nexus/util/-$$Lambda$ReflectionHelpers$1EvXs28H6ITWDp1NzdiI6HY-ABQ;->f$2:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    iget-object v0, p0, Lcom/mega/nexus/util/-$$Lambda$ReflectionHelpers$1EvXs28H6ITWDp1NzdiI6HY-ABQ;->f$0:Ljava/lang/Class;

    iget-object v1, p0, Lcom/mega/nexus/util/-$$Lambda$ReflectionHelpers$1EvXs28H6ITWDp1NzdiI6HY-ABQ;->f$1:Ljava/lang/Object;

    iget-object v2, p0, Lcom/mega/nexus/util/-$$Lambda$ReflectionHelpers$1EvXs28H6ITWDp1NzdiI6HY-ABQ;->f$2:Ljava/lang/Object;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/mega/nexus/util/ReflectionHelpers;->lambda$createPassThroughProxy$0(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
