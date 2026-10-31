.class public final Lc2/g;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Lx4/d;


# static fields
.field public static final a:Lc2/g;

.field public static final b:Lx4/c;

.field public static final c:Lx4/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lc2/g;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lc2/g;->a:Lc2/g;

    .line 7
    .line 8
    const-string v0, "networkType"

    .line 9
    .line 10
    invoke-static {v0}, Lx4/c;->a(Ljava/lang/String;)Lx4/c;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    sput-object v0, Lc2/g;->b:Lx4/c;

    .line 15
    .line 16
    const-string v0, "mobileSubtype"

    .line 17
    .line 18
    invoke-static {v0}, Lx4/c;->a(Ljava/lang/String;)Lx4/c;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    sput-object v0, Lc2/g;->c:Lx4/c;

    .line 23
    .line 24
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Lc2/w;

    .line 2
    .line 3
    check-cast p2, Lx4/e;

    .line 4
    .line 5
    check-cast p1, Lc2/o;

    .line 6
    .line 7
    iget-object v0, p1, Lc2/o;->a:Lc2/v;

    .line 8
    .line 9
    sget-object v1, Lc2/g;->b:Lx4/c;

    .line 10
    .line 11
    invoke-interface {p2, v1, v0}, Lx4/e;->d(Lx4/c;Ljava/lang/Object;)Lx4/e;

    .line 12
    .line 13
    .line 14
    sget-object v0, Lc2/g;->c:Lx4/c;

    .line 15
    .line 16
    iget-object p1, p1, Lc2/o;->b:Lc2/u;

    .line 17
    .line 18
    invoke-interface {p2, v0, p1}, Lx4/e;->d(Lx4/c;Ljava/lang/Object;)Lx4/e;

    .line 19
    .line 20
    .line 21
    return-void
.end method
