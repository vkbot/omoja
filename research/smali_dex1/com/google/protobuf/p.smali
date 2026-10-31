.class public final Lcom/google/protobuf/p;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# static fields
.field public static volatile b:Lcom/google/protobuf/p;

.field public static final c:Lcom/google/protobuf/p;


# instance fields
.field public final a:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lcom/google/protobuf/p;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/protobuf/p;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/protobuf/p;->c:Lcom/google/protobuf/p;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    .line 5
    .line 6
    iput-object v0, p0, Lcom/google/protobuf/p;->a:Ljava/util/Map;

    .line 7
    .line 8
    return-void
.end method

.method public static a()Lcom/google/protobuf/p;
    .registers 4

    .line 1
    sget-object v0, Lcom/google/protobuf/p;->b:Lcom/google/protobuf/p;

    .line 2
    .line 3
    if-nez v0, :cond_2d

    .line 4
    .line 5
    const-class v1, Lcom/google/protobuf/p;

    .line 6
    .line 7
    monitor-enter v1

    .line 8
    :try_start_7
    sget-object v0, Lcom/google/protobuf/p;->b:Lcom/google/protobuf/p;

    .line 9
    .line 10
    if-nez v0, :cond_29

    .line 11
    .line 12
    const-string v0, "getEmptyRegistry"

    .line 13
    .line 14
    sget-object v2, Lcom/google/protobuf/o;->a:Ljava/lang/Class;
    :try_end_f
    .catchall {:try_start_7 .. :try_end_f} :catchall_27

    .line 15
    .line 16
    const/4 v3, 0x0

    .line 17
    if-nez v2, :cond_13

    .line 18
    .line 19
    goto :goto_1e

    .line 20
    :cond_13
    :try_start_13
    invoke-virtual {v2, v0, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {v0, v3, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    check-cast v0, Lcom/google/protobuf/p;
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_1d} :catch_1e
    .catchall {:try_start_13 .. :try_end_1d} :catchall_27

    .line 29
    .line 30
    move-object v3, v0

    .line 31
    :catch_1e
    :goto_1e
    if-eqz v3, :cond_22

    .line 32
    .line 33
    move-object v0, v3

    .line 34
    goto :goto_24

    .line 35
    :cond_22
    :try_start_22
    sget-object v0, Lcom/google/protobuf/p;->c:Lcom/google/protobuf/p;

    .line 36
    .line 37
    :goto_24
    sput-object v0, Lcom/google/protobuf/p;->b:Lcom/google/protobuf/p;

    .line 38
    .line 39
    goto :goto_29

    .line 40
    :catchall_27
    move-exception v0

    .line 41
    goto :goto_2b

    .line 42
    :cond_29
    :goto_29
    monitor-exit v1

    .line 43
    return-object v0

    .line 44
    :goto_2b
    monitor-exit v1
    :try_end_2c
    .catchall {:try_start_22 .. :try_end_2c} :catchall_27

    .line 45
    throw v0

    .line 46
    :cond_2d
    return-object v0
.end method
