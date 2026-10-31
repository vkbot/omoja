.class public Lb7/k;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Lz5/p;


# instance fields
.field public final a:Lz5/h;

.field public final b:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lz5/h;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lb7/k;->b:Ljava/util/ArrayList;

    .line 10
    .line 11
    iput-object p1, p0, Lb7/k;->a:Lz5/h;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final a(Lz5/o;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lb7/k;->b:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public b(Lz5/j;)Lz5/b;
    .locals 2

    .line 1
    new-instance v0, Lz5/b;

    .line 2
    .line 3
    new-instance v1, Lf6/e;

    .line 4
    .line 5
    invoke-direct {v1, p1}, Lf6/e;-><init>(Lz5/g;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1}, Lz5/b;-><init>(Lf6/e;)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method
