.class synthetic Lorg/apache/commons/io/RandomAccessFileMode$1;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/io/RandomAccessFileMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$java$nio$file$StandardOpenOption:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    invoke-static {}, Lorg/apache/commons/io/d;->y()[Ljava/nio/file/StandardOpenOption;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    array-length v0, v0

    .line 6
    new-array v0, v0, [I

    .line 7
    .line 8
    sput-object v0, Lorg/apache/commons/io/RandomAccessFileMode$1;->$SwitchMap$java$nio$file$StandardOpenOption:[I

    .line 9
    .line 10
    :try_start_0
    invoke-static {}, Lorg/apache/commons/io/d;->j()Ljava/nio/file/StandardOpenOption;

    .line 11
    .line 12
    .line 13
    invoke-static {}, Lorg/apache/commons/io/d;->a()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    const/4 v2, 0x1

    .line 18
    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    .line 20
    :catch_0
    :try_start_1
    sget-object v0, Lorg/apache/commons/io/RandomAccessFileMode$1;->$SwitchMap$java$nio$file$StandardOpenOption:[I

    .line 21
    .line 22
    invoke-static {}, Lorg/apache/commons/io/d;->A()Ljava/nio/file/StandardOpenOption;

    .line 23
    .line 24
    .line 25
    invoke-static {}, Lorg/apache/commons/io/d;->z()I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    const/4 v2, 0x2

    .line 30
    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    .line 31
    .line 32
    :catch_1
    :try_start_2
    sget-object v0, Lorg/apache/commons/io/RandomAccessFileMode$1;->$SwitchMap$java$nio$file$StandardOpenOption:[I

    .line 33
    .line 34
    invoke-static {}, Lorg/apache/commons/io/d;->D()Ljava/nio/file/StandardOpenOption;

    .line 35
    .line 36
    .line 37
    invoke-static {}, Lorg/apache/commons/io/d;->C()I

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    const/4 v2, 0x3

    .line 42
    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    .line 43
    .line 44
    :catch_2
    return-void
.end method
