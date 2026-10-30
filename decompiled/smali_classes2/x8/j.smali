.class public abstract Lx8/j;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# static fields
.field public static final a:Lx8/i;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lx8/i;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lx8/j;->a:Lx8/i;

    .line 7
    .line 8
    return-void
.end method

.method public static a(II)Lx8/b;
    .locals 2

    .line 1
    const/4 v0, -0x2

    .line 2
    const/4 v1, 0x1

    .line 3
    if-eq p0, v0, :cond_6

    .line 4
    .line 5
    const/4 v0, -0x1

    .line 6
    if-eq p0, v0, :cond_4

    .line 7
    .line 8
    if-eqz p0, :cond_2

    .line 9
    .line 10
    const v0, 0x7fffffff

    .line 11
    .line 12
    .line 13
    if-eq p0, v0, :cond_1

    .line 14
    .line 15
    if-ne p1, v1, :cond_0

    .line 16
    .line 17
    new-instance p1, Lx8/b;

    .line 18
    .line 19
    invoke-direct {p1, p0}, Lx8/b;-><init>(I)V

    .line 20
    .line 21
    .line 22
    return-object p1

    .line 23
    :cond_0
    new-instance v0, Lx8/m;

    .line 24
    .line 25
    invoke-direct {v0, p0, p1}, Lx8/m;-><init>(II)V

    .line 26
    .line 27
    .line 28
    return-object v0

    .line 29
    :cond_1
    new-instance p0, Lx8/b;

    .line 30
    .line 31
    invoke-direct {p0, v0}, Lx8/b;-><init>(I)V

    .line 32
    .line 33
    .line 34
    return-object p0

    .line 35
    :cond_2
    if-ne p1, v1, :cond_3

    .line 36
    .line 37
    new-instance p0, Lx8/b;

    .line 38
    .line 39
    const/4 p1, 0x0

    .line 40
    invoke-direct {p0, p1}, Lx8/b;-><init>(I)V

    .line 41
    .line 42
    .line 43
    return-object p0

    .line 44
    :cond_3
    new-instance p0, Lx8/m;

    .line 45
    .line 46
    invoke-direct {p0, v1, p1}, Lx8/m;-><init>(II)V

    .line 47
    .line 48
    .line 49
    return-object p0

    .line 50
    :cond_4
    if-ne p1, v1, :cond_5

    .line 51
    .line 52
    new-instance p0, Lx8/m;

    .line 53
    .line 54
    const/4 p1, 0x2

    .line 55
    invoke-direct {p0, v1, p1}, Lx8/m;-><init>(II)V

    .line 56
    .line 57
    .line 58
    return-object p0

    .line 59
    :cond_5
    const-string p0, "CONFLATED capacity cannot be used with non-default onBufferOverflow"

    .line 60
    .line 61
    invoke-static {p0}, Lj1/i;->k(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    const/4 p0, 0x0

    .line 65
    return-object p0

    .line 66
    :cond_6
    if-ne p1, v1, :cond_7

    .line 67
    .line 68
    new-instance p0, Lx8/b;

    .line 69
    .line 70
    sget-object p1, Lx8/f;->a:Lx8/e;

    .line 71
    .line 72
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 73
    .line 74
    .line 75
    sget p1, Lx8/e;->b:I

    .line 76
    .line 77
    invoke-direct {p0, p1}, Lx8/b;-><init>(I)V

    .line 78
    .line 79
    .line 80
    return-object p0

    .line 81
    :cond_7
    new-instance p0, Lx8/m;

    .line 82
    .line 83
    invoke-direct {p0, v1, p1}, Lx8/m;-><init>(II)V

    .line 84
    .line 85
    .line 86
    return-object p0
.end method
