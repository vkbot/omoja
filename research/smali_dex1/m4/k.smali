.class public final Lm4/k;
.super Lcom/bumptech/glide/c;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# static fields
.field public static final b:Lsun/misc/Unsafe;

.field public static final c:J

.field public static final d:J

.field public static final e:J

.field public static final f:J

.field public static final g:J


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 1
    const-string v0, "b"

    .line 2
    .line 3
    const-class v1, Lm4/l;

    .line 4
    .line 5
    :try_start_4
    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;

    .line 6
    .line 7
    .line 8
    move-result-object v2
    :try_end_8
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_8} :catch_9

    .line 9
    goto :goto_14

    .line 10
    :catch_9
    :try_start_9
    new-instance v2, Lm4/j;

    .line 11
    .line 12
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 13
    .line 14
    .line 15
    invoke-static {v2}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    check-cast v2, Lsun/misc/Unsafe;
    :try_end_14
    .catch Ljava/security/PrivilegedActionException; {:try_start_9 .. :try_end_14} :catch_58

    .line 20
    .line 21
    :goto_14
    :try_start_14
    const-class v3, Lm4/m;

    .line 22
    .line 23
    const-string v4, "d"

    .line 24
    .line 25
    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    invoke-virtual {v2, v4}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    .line 30
    .line 31
    .line 32
    move-result-wide v4

    .line 33
    sput-wide v4, Lm4/k;->d:J

    .line 34
    .line 35
    const-string v4, "c"

    .line 36
    .line 37
    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    invoke-virtual {v2, v4}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    .line 42
    .line 43
    .line 44
    move-result-wide v4

    .line 45
    sput-wide v4, Lm4/k;->c:J

    .line 46
    .line 47
    invoke-virtual {v3, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    invoke-virtual {v2, v3}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    .line 52
    .line 53
    .line 54
    move-result-wide v3

    .line 55
    sput-wide v3, Lm4/k;->e:J

    .line 56
    .line 57
    const-string v3, "a"

    .line 58
    .line 59
    invoke-virtual {v1, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    invoke-virtual {v2, v3}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    .line 64
    .line 65
    .line 66
    move-result-wide v3

    .line 67
    sput-wide v3, Lm4/k;->f:J

    .line 68
    .line 69
    invoke-virtual {v1, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    invoke-virtual {v2, v0}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    .line 74
    .line 75
    .line 76
    move-result-wide v0

    .line 77
    sput-wide v0, Lm4/k;->g:J

    .line 78
    .line 79
    sput-object v2, Lm4/k;->b:Lsun/misc/Unsafe;
    :try_end_50
    .catch Ljava/lang/NoSuchFieldException; {:try_start_14 .. :try_end_50} :catch_53
    .catch Ljava/lang/RuntimeException; {:try_start_14 .. :try_end_50} :catch_51

    .line 80
    .line 81
    return-void

    .line 82
    :catch_51
    move-exception v0

    .line 83
    throw v0

    .line 84
    :catch_53
    move-exception v0

    .line 85
    invoke-static {v0}, Ln0/b;->w(Ljava/lang/Throwable;)V

    .line 86
    .line 87
    .line 88
    return-void

    .line 89
    :catch_58
    move-exception v0

    .line 90
    const-string v1, "Could not initialize intrinsics"

    .line 91
    .line 92
    invoke-virtual {v0}, Ljava/security/PrivilegedActionException;->getCause()Ljava/lang/Throwable;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    invoke-static {v1, v0}, Lai/onnxruntime/b;->o(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 97
    .line 98
    .line 99
    return-void
.end method


# virtual methods
.method public final c(Lm4/m;Lm4/d;Lm4/d;)Z
    .registers 10

    .line 1
    sget-object v0, Lm4/k;->b:Lsun/misc/Unsafe;

    .line 2
    .line 3
    sget-wide v2, Lm4/k;->c:J

    .line 4
    .line 5
    move-object v1, p1

    .line 6
    move-object v4, p2

    .line 7
    move-object v5, p3

    .line 8
    invoke-static/range {v0 .. v5}, Lm4/h;->a(Lsun/misc/Unsafe;Lm4/m;JLm4/d;Lm4/d;)Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    return p1
.end method

.method public final d(Lm4/m;Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 10

    .line 1
    sget-object v0, Lm4/k;->b:Lsun/misc/Unsafe;

    .line 2
    .line 3
    sget-wide v2, Lm4/k;->e:J

    .line 4
    .line 5
    move-object v1, p1

    .line 6
    move-object v4, p2

    .line 7
    move-object v5, p3

    .line 8
    invoke-static/range {v0 .. v5}, Lm4/i;->a(Lsun/misc/Unsafe;Lm4/m;JLjava/lang/Object;Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    return p1
.end method

.method public final e(Lm4/m;Lm4/l;Lm4/l;)Z
    .registers 10

    .line 1
    sget-object v0, Lm4/k;->b:Lsun/misc/Unsafe;

    .line 2
    .line 3
    sget-wide v2, Lm4/k;->d:J

    .line 4
    .line 5
    move-object v1, p1

    .line 6
    move-object v4, p2

    .line 7
    move-object v5, p3

    .line 8
    invoke-static/range {v0 .. v5}, Lm4/g;->a(Lsun/misc/Unsafe;Lm4/m;JLm4/l;Lm4/l;)Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    return p1
.end method

.method public final k(Lm4/m;)Lm4/d;
    .registers 5

    .line 1
    sget-object v0, Lm4/d;->d:Lm4/d;

    .line 2
    .line 3
    :cond_2
    iget-object v1, p1, Lm4/m;->c:Lm4/d;

    .line 4
    .line 5
    if-ne v0, v1, :cond_7

    .line 6
    .line 7
    goto :goto_d

    .line 8
    :cond_7
    invoke-virtual {p0, p1, v1, v0}, Lm4/k;->c(Lm4/m;Lm4/d;Lm4/d;)Z

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    if-eqz v2, :cond_2

    .line 13
    .line 14
    :goto_d
    return-object v1
.end method

.method public final l(Lm4/m;)Lm4/l;
    .registers 5

    .line 1
    sget-object v0, Lm4/l;->c:Lm4/l;

    .line 2
    .line 3
    :cond_2
    iget-object v1, p1, Lm4/m;->d:Lm4/l;

    .line 4
    .line 5
    if-ne v0, v1, :cond_7

    .line 6
    .line 7
    goto :goto_d

    .line 8
    :cond_7
    invoke-virtual {p0, p1, v1, v0}, Lm4/k;->e(Lm4/m;Lm4/l;Lm4/l;)Z

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    if-eqz v2, :cond_2

    .line 13
    .line 14
    :goto_d
    return-object v1
.end method

.method public final q(Lm4/l;Lm4/l;)V
    .registers 6

    .line 1
    sget-object v0, Lm4/k;->b:Lsun/misc/Unsafe;

    .line 2
    .line 3
    sget-wide v1, Lm4/k;->g:J

    .line 4
    .line 5
    invoke-virtual {v0, p1, v1, v2, p2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final r(Lm4/l;Ljava/lang/Thread;)V
    .registers 6

    .line 1
    sget-object v0, Lm4/k;->b:Lsun/misc/Unsafe;

    .line 2
    .line 3
    sget-wide v1, Lm4/k;->f:J

    .line 4
    .line 5
    invoke-virtual {v0, p1, v1, v2, p2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
