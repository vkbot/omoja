.class public abstract Lo/b;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Ln/s;


# instance fields
.field public final b:Ljava/lang/Object;

.field public final c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/Class;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lo/b;->b:Ljava/lang/Object;

    .line 16
    iput-object p2, p0, Lo/b;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lf6/a;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lo/b;->b:Ljava/lang/Object;

    .line 5
    .line 6
    new-instance v0, La5/h;

    .line 7
    .line 8
    invoke-direct {v0, p1}, La5/h;-><init>(Lf6/a;)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lo/b;->c:Ljava/lang/Object;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public abstract a()Ljava/lang/String;
.end method

.method public j(Ln/z;)Ln/r;
    .locals 5

    .line 1
    new-instance v0, Lo/e;

    .line 2
    .line 3
    iget-object v1, p0, Lo/b;->b:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v1, Landroid/content/Context;

    .line 6
    .line 7
    iget-object v2, p0, Lo/b;->c:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v2, Ljava/lang/Class;

    .line 10
    .line 11
    const-class v3, Ljava/io/File;

    .line 12
    .line 13
    invoke-virtual {p1, v3, v2}, Ln/z;->b(Ljava/lang/Class;Ljava/lang/Class;)Ln/r;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    const-class v4, Landroid/net/Uri;

    .line 18
    .line 19
    invoke-virtual {p1, v4, v2}, Ln/z;->b(Ljava/lang/Class;Ljava/lang/Class;)Ln/r;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-direct {v0, v1, v3, p1, v2}, Lo/e;-><init>(Landroid/content/Context;Ln/r;Ln/r;Ljava/lang/Class;)V

    .line 24
    .line 25
    .line 26
    return-object v0
.end method
