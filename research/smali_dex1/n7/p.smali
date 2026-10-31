.class public final Ln7/p;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# instance fields
.field public final a:Ln7/h;

.field public final b:Z


# direct methods
.method public constructor <init>(Ln7/h;Z)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "decompressor"

    .line 5
    .line 6
    invoke-static {p1, v0}, Lo4/b;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Ln7/p;->a:Ln7/h;

    .line 10
    .line 11
    iput-boolean p2, p0, Ln7/p;->b:Z

    .line 12
    .line 13
    return-void
.end method
