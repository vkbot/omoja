.class public final synthetic Lj2/e;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Ll2/b;


# instance fields
.field public final synthetic b:Lj2/i;

.field public final synthetic c:Ld2/j;

.field public final synthetic d:I


# direct methods
.method public synthetic constructor <init>(Lj2/i;Ld2/j;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lj2/e;->b:Lj2/i;

    .line 5
    .line 6
    iput-object p2, p0, Lj2/e;->c:Ld2/j;

    .line 7
    .line 8
    iput p3, p0, Lj2/e;->d:I

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final execute()Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Lj2/e;->b:Lj2/i;

    .line 2
    .line 3
    iget-object v0, v0, Lj2/i;->d:La5/h;

    .line 4
    .line 5
    iget v1, p0, Lj2/e;->d:I

    .line 6
    .line 7
    add-int/lit8 v1, v1, 0x1

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    iget-object v3, p0, Lj2/e;->c:Ld2/j;

    .line 11
    .line 12
    invoke-virtual {v0, v3, v1, v2}, La5/h;->v(Ld2/q;IZ)V

    .line 13
    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    return-object v0
.end method
