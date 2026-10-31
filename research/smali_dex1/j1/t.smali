.class public final Lj1/t;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:I

.field public final d:I

.field public final e:Lj1/u;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IILj1/u;)V
    .registers 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lj1/t;->a:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Lj1/t;->b:Ljava/lang/String;

    .line 7
    .line 8
    iput p3, p0, Lj1/t;->c:I

    .line 9
    .line 10
    iput p4, p0, Lj1/t;->d:I

    .line 11
    .line 12
    iput-object p5, p0, Lj1/t;->e:Lj1/u;

    .line 13
    .line 14
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lj1/u;)V
    .registers 10

    const v4, 0x7f07011e

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    .line 15
    invoke-direct/range {v0 .. v5}, Lj1/t;-><init>(Ljava/lang/String;Ljava/lang/String;IILj1/u;)V

    return-void
.end method


# virtual methods
.method public final a()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lj1/t;->a:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz v0, :cond_14

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_14

    .line 14
    .line 15
    iget-object v0, p0, Lj1/t;->e:Lj1/u;

    .line 16
    .line 17
    if-eqz v0, :cond_14

    .line 18
    .line 19
    const/4 v0, 0x1

    .line 20
    return v0

    .line 21
    :cond_14
    const/4 v0, 0x0

    .line 22
    return v0
.end method
