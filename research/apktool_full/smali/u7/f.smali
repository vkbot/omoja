.class public final Lu7/f;
.super Ln7/s;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# instance fields
.field public final d:Ln7/t;

.field public final synthetic e:Lu7/g;


# direct methods
.method public constructor <init>(Lu7/g;Ln7/t;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lu7/f;->e:Lu7/g;

    .line 5
    .line 6
    iput-object p2, p0, Lu7/f;->d:Ln7/t;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final o(Ln7/e;Ln7/v0;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lu7/f;->e:Lu7/g;

    .line 2
    .line 3
    iget-object v0, v0, Lu7/g;->a:Ln7/v0;

    .line 4
    .line 5
    invoke-virtual {p2, v0}, Ln7/v0;->d(Ln7/v0;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lu7/f;->d:Ln7/t;

    .line 9
    .line 10
    invoke-virtual {v0, p1, p2}, Ln7/t;->o(Ln7/e;Ln7/v0;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final r()Ln7/t;
    .locals 1

    .line 1
    iget-object v0, p0, Lu7/f;->d:Ln7/t;

    .line 2
    .line 3
    return-object v0
.end method
