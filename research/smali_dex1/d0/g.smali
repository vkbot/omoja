.class public abstract Ld0/g;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# static fields
.field public static final a:Lw7/c;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lw7/c;

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    invoke-direct {v0, v1}, Lw7/c;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Ld0/g;->a:Lw7/c;

    .line 8
    .line 9
    return-void
.end method

.method public static a(ILd0/c;)Ld0/d;
    .registers 4

    .line 1
    new-instance v0, Landroidx/core/util/Pools$SynchronizedPool;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Landroidx/core/util/Pools$SynchronizedPool;-><init>(I)V

    .line 4
    .line 5
    .line 6
    new-instance p0, Ld0/d;

    .line 7
    .line 8
    sget-object v1, Ld0/g;->a:Lw7/c;

    .line 9
    .line 10
    invoke-direct {p0, v0, p1, v1}, Ld0/d;-><init>(Landroidx/core/util/Pools$SynchronizedPool;Ld0/c;Ld0/f;)V

    .line 11
    .line 12
    .line 13
    return-object p0
.end method
