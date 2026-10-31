.class public final Lo/e;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Ln/r;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ln/r;

.field public final c:Ln/r;

.field public final d:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ln/r;Ln/r;Ljava/lang/Class;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iput-object p1, p0, Lo/e;->a:Landroid/content/Context;

    .line 9
    .line 10
    iput-object p2, p0, Lo/e;->b:Ln/r;

    .line 11
    .line 12
    iput-object p3, p0, Lo/e;->c:Ln/r;

    .line 13
    .line 14
    iput-object p4, p0, Lo/e;->d:Ljava/lang/Class;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Z
    .registers 4

    .line 1
    check-cast p1, Landroid/net/Uri;

    .line 2
    .line 3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 4
    .line 5
    const/16 v1, 0x1d

    .line 6
    .line 7
    if-lt v0, v1, :cond_10

    .line 8
    .line 9
    invoke-static {p1}, La/a;->n(Landroid/net/Uri;)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-eqz p1, :cond_10

    .line 14
    .line 15
    const/4 p1, 0x1

    .line 16
    return p1

    .line 17
    :cond_10
    const/4 p1, 0x0

    .line 18
    return p1
.end method

.method public final b(Ljava/lang/Object;IILh/h;)Ln/q;
    .registers 15

    .line 1
    move-object v4, p1

    .line 2
    check-cast v4, Landroid/net/Uri;

    .line 3
    .line 4
    new-instance p1, Ln/q;

    .line 5
    .line 6
    new-instance v9, Lb0/b;

    .line 7
    .line 8
    invoke-direct {v9, v4}, Lb0/b;-><init>(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Lo/d;

    .line 12
    .line 13
    iget-object v3, p0, Lo/e;->c:Ln/r;

    .line 14
    .line 15
    iget-object v8, p0, Lo/e;->d:Ljava/lang/Class;

    .line 16
    .line 17
    iget-object v1, p0, Lo/e;->a:Landroid/content/Context;

    .line 18
    .line 19
    iget-object v2, p0, Lo/e;->b:Ln/r;

    .line 20
    .line 21
    move v5, p2

    .line 22
    move v6, p3

    .line 23
    move-object v7, p4

    .line 24
    invoke-direct/range {v0 .. v8}, Lo/d;-><init>(Landroid/content/Context;Ln/r;Ln/r;Landroid/net/Uri;IILh/h;Ljava/lang/Class;)V

    .line 25
    .line 26
    .line 27
    invoke-direct {p1, v9, v0}, Ln/q;-><init>(Lh/e;Lcom/bumptech/glide/load/data/e;)V

    .line 28
    .line 29
    .line 30
    return-object p1
.end method
