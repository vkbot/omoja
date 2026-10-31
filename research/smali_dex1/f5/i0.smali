.class public final Lf5/i0;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# instance fields
.field public final a:Lf5/y;

.field public final b:Li5/a;

.field public c:Lx7/e;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    sget v0, Lf5/f0;->LIMITS_FIELD_NUMBER:I

    .line 2
    .line 3
    return-void
.end method

.method public constructor <init>(Lf5/y;Li5/a;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Li8/d;->b:Li8/d;

    .line 5
    .line 6
    iput-object v0, p0, Lf5/i0;->c:Lx7/e;

    .line 7
    .line 8
    iput-object p1, p0, Lf5/i0;->a:Lf5/y;

    .line 9
    .line 10
    iput-object p2, p0, Lf5/i0;->b:Li5/a;

    .line 11
    .line 12
    return-void
.end method
