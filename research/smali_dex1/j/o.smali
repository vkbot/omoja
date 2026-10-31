.class public final Lj/o;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# instance fields
.field public final a:Lc0/h;

.field public final b:Ld0/d;

.field public c:I


# direct methods
.method public constructor <init>(Lc0/h;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lj/n;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lj/n;-><init>(Lj/o;)V

    .line 7
    .line 8
    .line 9
    const/16 v1, 0x96

    .line 10
    .line 11
    invoke-static {v1, v0}, Ld0/g;->a(ILd0/c;)Ld0/d;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lj/o;->b:Ld0/d;

    .line 16
    .line 17
    iput-object p1, p0, Lj/o;->a:Lc0/h;

    .line 18
    .line 19
    return-void
.end method
