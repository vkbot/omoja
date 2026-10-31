.class public final Lj8/d;
.super Lx7/l;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# instance fields
.field public final a:Lj8/c;

.field public final b:La9/w;


# direct methods
.method public constructor <init>(Lj8/c;La9/w;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lj8/d;->a:Lj8/c;

    .line 5
    .line 6
    iput-object p2, p0, Lj8/d;->b:La9/w;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final b(Lx7/m;)V
    .registers 5

    .line 1
    new-instance v0, Lj8/b;

    .line 2
    .line 3
    iget-object v1, p0, Lj8/d;->b:La9/w;

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    invoke-direct {v0, p1, v1, v2}, Lj8/b;-><init>(Ljava/lang/Object;La9/w;I)V

    .line 7
    .line 8
    .line 9
    iget-object p1, p0, Lj8/d;->a:Lj8/c;

    .line 10
    .line 11
    invoke-virtual {p1, v0}, Lx7/g;->c(Lx7/h;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method
