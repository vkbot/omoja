.class public abstract Lcom/google/protobuf/c;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# static fields
.field public static final a:Ljava/lang/Class;

.field public static final b:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    const-string v0, "libcore.io.Memory"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    :try_start_3
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    move-result-object v0
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_8

    .line 8
    goto :goto_9

    .line 9
    :catchall_8
    move-object v0, v1

    .line 10
    :goto_9
    sput-object v0, Lcom/google/protobuf/c;->a:Ljava/lang/Class;

    .line 11
    .line 12
    const-string v0, "org.robolectric.Robolectric"

    .line 13
    .line 14
    :try_start_d
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    move-result-object v1
    :try_end_11
    .catchall {:try_start_d .. :try_end_11} :catchall_11

    .line 18
    :catchall_11
    if-eqz v1, :cond_15

    .line 19
    .line 20
    const/4 v0, 0x1

    .line 21
    goto :goto_16

    .line 22
    :cond_15
    const/4 v0, 0x0

    .line 23
    :goto_16
    sput-boolean v0, Lcom/google/protobuf/c;->b:Z

    .line 24
    .line 25
    return-void
.end method

.method public static a()Z
    .registers 1

    .line 1
    sget-object v0, Lcom/google/protobuf/c;->a:Ljava/lang/Class;

    .line 2
    .line 3
    if-eqz v0, :cond_a

    .line 4
    .line 5
    sget-boolean v0, Lcom/google/protobuf/c;->b:Z

    .line 6
    .line 7
    if-nez v0, :cond_a

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    return v0

    .line 11
    :cond_a
    const/4 v0, 0x0

    .line 12
    return v0
.end method
