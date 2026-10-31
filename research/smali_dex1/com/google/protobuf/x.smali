.class public final Lcom/google/protobuf/x;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Lcom/google/protobuf/x0;


# static fields
.field public static final b:Lcom/google/protobuf/p;


# instance fields
.field public final a:Lcom/google/protobuf/y;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    invoke-static {}, Lcom/google/protobuf/p;->a()Lcom/google/protobuf/p;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sput-object v0, Lcom/google/protobuf/x;->b:Lcom/google/protobuf/p;

    .line 6
    .line 7
    return-void
.end method

.method public constructor <init>(Lcom/google/protobuf/y;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/protobuf/x;->a:Lcom/google/protobuf/y;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/protobuf/j;Lcom/google/protobuf/p;)Lcom/google/protobuf/y;
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/x;->a:Lcom/google/protobuf/y;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/protobuf/y;->k()Lcom/google/protobuf/y;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :try_start_6
    sget-object v1, Lcom/google/protobuf/y0;->c:Lcom/google/protobuf/y0;

    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    invoke-virtual {v1, v2}, Lcom/google/protobuf/y0;->a(Ljava/lang/Class;)Lcom/google/protobuf/b1;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    iget-object v2, p1, Lcom/google/protobuf/j;->c:Lc3/i;

    .line 21
    .line 22
    if-eqz v2, :cond_18

    .line 23
    .line 24
    goto :goto_1d

    .line 25
    :cond_18
    new-instance v2, Lc3/i;

    .line 26
    .line 27
    invoke-direct {v2, p1}, Lc3/i;-><init>(Lcom/google/protobuf/j;)V

    .line 28
    .line 29
    .line 30
    :goto_1d
    invoke-interface {v1, v0, v2, p2}, Lcom/google/protobuf/b1;->h(Ljava/lang/Object;Lc3/i;Lcom/google/protobuf/p;)V

    .line 31
    .line 32
    .line 33
    invoke-interface {v1, v0}, Lcom/google/protobuf/b1;->c(Ljava/lang/Object;)V
    :try_end_23
    .catch Lcom/google/protobuf/d0; {:try_start_6 .. :try_end_23} :catch_2a
    .catch Lcom/google/protobuf/i1; {:try_start_6 .. :try_end_23} :catch_28
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_23} :catch_26
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_23} :catch_24

    .line 34
    .line 35
    .line 36
    return-object v0

    .line 37
    :catch_24
    move-exception p1

    .line 38
    goto :goto_2c

    .line 39
    :catch_26
    move-exception p1

    .line 40
    goto :goto_3c

    .line 41
    :catch_28
    move-exception p1

    .line 42
    goto :goto_55

    .line 43
    :catch_2a
    move-exception p1

    .line 44
    goto :goto_5f

    .line 45
    :goto_2c
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 46
    .line 47
    .line 48
    move-result-object p2

    .line 49
    instance-of p2, p2, Lcom/google/protobuf/d0;

    .line 50
    .line 51
    if-eqz p2, :cond_3b

    .line 52
    .line 53
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    check-cast p1, Lcom/google/protobuf/d0;

    .line 58
    .line 59
    throw p1

    .line 60
    :cond_3b
    throw p1

    .line 61
    :goto_3c
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 62
    .line 63
    .line 64
    move-result-object p2

    .line 65
    instance-of p2, p2, Lcom/google/protobuf/d0;

    .line 66
    .line 67
    if-eqz p2, :cond_4b

    .line 68
    .line 69
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    check-cast p1, Lcom/google/protobuf/d0;

    .line 74
    .line 75
    throw p1

    .line 76
    :cond_4b
    new-instance p2, Lcom/google/protobuf/d0;

    .line 77
    .line 78
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    invoke-direct {p2, v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 83
    .line 84
    .line 85
    throw p2

    .line 86
    :goto_55
    new-instance p2, Lcom/google/protobuf/d0;

    .line 87
    .line 88
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    throw p2

    .line 96
    :goto_5f
    iget-boolean p2, p1, Lcom/google/protobuf/d0;->b:Z

    .line 97
    .line 98
    if-eqz p2, :cond_6d

    .line 99
    .line 100
    new-instance p2, Lcom/google/protobuf/d0;

    .line 101
    .line 102
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    invoke-direct {p2, v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 107
    .line 108
    .line 109
    move-object p1, p2

    .line 110
    :cond_6d
    throw p1
.end method
