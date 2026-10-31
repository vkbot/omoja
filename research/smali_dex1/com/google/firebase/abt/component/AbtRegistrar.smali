.class public Lcom/google/firebase/abt/component/AbtRegistrar;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Lcom/google/firebase/components/ComponentRegistrar;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# static fields
.field private static final LIBRARY_NAME:Ljava/lang/String; = "fire-abt"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic a(Ld2/h;)Lq4/a;
    .registers 1

    .line 1
    invoke-static {p0}, Lcom/google/firebase/abt/component/AbtRegistrar;->lambda$getComponents$0(Lt4/b;)Lq4/a;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static synthetic lambda$getComponents$0(Lt4/b;)Lq4/a;
    .registers 4

    .line 1
    new-instance v0, Lq4/a;

    .line 2
    .line 3
    const-class v1, Landroid/content/Context;

    .line 4
    .line 5
    invoke-interface {p0, v1}, Lt4/b;->b(Ljava/lang/Class;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    check-cast v1, Landroid/content/Context;

    .line 10
    .line 11
    const-class v2, Lf5/b0;

    .line 12
    .line 13
    invoke-interface {p0, v2}, Lt4/b;->c(Ljava/lang/Class;)Lk5/b;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-direct {v0, v1, p0}, Lq4/a;-><init>(Landroid/content/Context;Lk5/b;)V

    .line 18
    .line 19
    .line 20
    return-object v0
.end method


# virtual methods
.method public getComponents()Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lt4/a;",
            ">;"
        }
    .end annotation

    .line 1
    const-class v0, Lq4/a;

    .line 2
    .line 3
    invoke-static {v0}, Lt4/a;->a(Ljava/lang/Class;)Lf6/d;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "fire-abt"

    .line 8
    .line 9
    iput-object v1, v0, Lf6/d;->a:Ljava/lang/String;

    .line 10
    .line 11
    const-class v2, Landroid/content/Context;

    .line 12
    .line 13
    invoke-static {v2}, Lt4/h;->a(Ljava/lang/Class;)Lt4/h;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-virtual {v0, v2}, Lf6/d;->a(Lt4/h;)V

    .line 18
    .line 19
    .line 20
    new-instance v2, Lt4/h;

    .line 21
    .line 22
    const/4 v3, 0x0

    .line 23
    const/4 v4, 0x1

    .line 24
    const-class v5, Lf5/b0;

    .line 25
    .line 26
    invoke-direct {v2, v3, v4, v5}, Lt4/h;-><init>(IILjava/lang/Class;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v2}, Lf6/d;->a(Lt4/h;)V

    .line 30
    .line 31
    .line 32
    new-instance v2, Lorg/apache/commons/net/ftp/a;

    .line 33
    .line 34
    const/4 v3, 0x4

    .line 35
    invoke-direct {v2, v3}, Lorg/apache/commons/net/ftp/a;-><init>(I)V

    .line 36
    .line 37
    .line 38
    iput-object v2, v0, Lf6/d;->f:Ljava/lang/Object;

    .line 39
    .line 40
    invoke-virtual {v0}, Lf6/d;->b()Lt4/a;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    const-string v2, "21.1.1"

    .line 45
    .line 46
    invoke-static {v1, v2}, Lb1/u;->d(Ljava/lang/String;Ljava/lang/String;)Lt4/a;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    filled-new-array {v0, v1}, [Lt4/a;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    return-object v0
.end method
