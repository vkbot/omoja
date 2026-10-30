.class public abstract Ld8/b;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# static fields
.field public static final a:Lc5/e;

.field public static final b:Lb4/e;

.field public static final c:Lw7/c;

.field public static final d:Lz3/f;

.field public static final e:Lp2/e;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lc5/e;

    .line 2
    .line 3
    const/4 v1, 0x5

    .line 4
    invoke-direct {v0, v1}, Lc5/e;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Ld8/b;->a:Lc5/e;

    .line 8
    .line 9
    new-instance v0, Lb4/e;

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    invoke-direct {v0, v1}, Lb4/e;-><init>(I)V

    .line 13
    .line 14
    .line 15
    sput-object v0, Ld8/b;->b:Lb4/e;

    .line 16
    .line 17
    new-instance v0, Lw7/c;

    .line 18
    .line 19
    const/4 v1, 0x4

    .line 20
    invoke-direct {v0, v1}, Lw7/c;-><init>(I)V

    .line 21
    .line 22
    .line 23
    sput-object v0, Ld8/b;->c:Lw7/c;

    .line 24
    .line 25
    new-instance v0, Lz3/f;

    .line 26
    .line 27
    invoke-direct {v0, v1}, Lz3/f;-><init>(I)V

    .line 28
    .line 29
    .line 30
    sput-object v0, Ld8/b;->d:Lz3/f;

    .line 31
    .line 32
    new-instance v0, Lp2/e;

    .line 33
    .line 34
    const/4 v1, 0x5

    .line 35
    invoke-direct {v0, v1}, Lp2/e;-><init>(I)V

    .line 36
    .line 37
    .line 38
    sput-object v0, Ld8/b;->e:Lp2/e;

    .line 39
    .line 40
    return-void
.end method

.method public static a(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-static {p1}, Ln0/b;->n(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public static b(ILjava/lang/String;)V
    .locals 2

    .line 1
    if-lez p0, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 5
    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string p1, " > 0 required but it was "

    .line 15
    .line 16
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    throw v0
.end method
