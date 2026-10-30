.class public final Lorg/apache/commons/io/input/UncheckedBufferedReader;
.super Ljava/io/BufferedReader;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/io/input/UncheckedBufferedReader$Builder;
    }
.end annotation


# direct methods
.method private constructor <init>(Lorg/apache/commons/io/input/UncheckedBufferedReader$Builder;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lorg/apache/commons/io/build/AbstractStreamBuilder;->getReader()Ljava/io/Reader;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p1}, Lorg/apache/commons/io/build/AbstractStreamBuilder;->getBufferSize()I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    invoke-direct {p0, v0, p1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public synthetic constructor <init>(Lorg/apache/commons/io/input/UncheckedBufferedReader$Builder;Lorg/apache/commons/io/input/UncheckedBufferedReader$1;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lorg/apache/commons/io/input/UncheckedBufferedReader;-><init>(Lorg/apache/commons/io/input/UncheckedBufferedReader$Builder;)V

    return-void
.end method

.method public static synthetic S(Lorg/apache/commons/io/input/UncheckedBufferedReader;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/apache/commons/io/input/UncheckedBufferedReader;->lambda$mark$1(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic V(Lorg/apache/commons/io/input/UncheckedBufferedReader;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/apache/commons/io/input/UncheckedBufferedReader;->lambda$close$0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic b(Lorg/apache/commons/io/input/UncheckedBufferedReader;J)Ljava/lang/Long;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/io/input/UncheckedBufferedReader;->lambda$skip$9(J)Ljava/lang/Long;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static builder()Lorg/apache/commons/io/input/UncheckedBufferedReader$Builder;
    .locals 1

    .line 1
    new-instance v0, Lorg/apache/commons/io/input/UncheckedBufferedReader$Builder;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/apache/commons/io/input/UncheckedBufferedReader$Builder;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static synthetic c(Lorg/apache/commons/io/input/UncheckedBufferedReader;Ljava/nio/CharBuffer;)Ljava/lang/Integer;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/apache/commons/io/input/UncheckedBufferedReader;->lambda$read$5(Ljava/nio/CharBuffer;)Ljava/lang/Integer;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic c0(Lorg/apache/commons/io/input/UncheckedBufferedReader;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/apache/commons/io/input/UncheckedBufferedReader;->lambda$reset$8()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic d0(Lorg/apache/commons/io/input/UncheckedBufferedReader;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/apache/commons/io/input/UncheckedBufferedReader;->lambda$readLine$6()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic e0(Lorg/apache/commons/io/input/UncheckedBufferedReader;[CII)Ljava/lang/Integer;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/io/input/UncheckedBufferedReader;->lambda$read$4([CII)Ljava/lang/Integer;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic f0(Lorg/apache/commons/io/input/UncheckedBufferedReader;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/apache/commons/io/input/UncheckedBufferedReader;->lambda$ready$7()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic g0(Lorg/apache/commons/io/input/UncheckedBufferedReader;[C)Ljava/lang/Integer;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/apache/commons/io/input/UncheckedBufferedReader;->lambda$read$3([C)Ljava/lang/Integer;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private synthetic lambda$close$0()V
    .locals 0

    .line 1
    invoke-super {p0}, Ljava/io/BufferedReader;->close()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private synthetic lambda$mark$1(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Ljava/io/BufferedReader;->mark(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private synthetic lambda$read$2()I
    .locals 1

    .line 1
    invoke-super {p0}, Ljava/io/BufferedReader;->read()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method private synthetic lambda$read$3([C)Ljava/lang/Integer;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Ljava/io/Reader;->read([C)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method private synthetic lambda$read$4([CII)Ljava/lang/Integer;
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Ljava/io/BufferedReader;->read([CII)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method private synthetic lambda$read$5(Ljava/nio/CharBuffer;)Ljava/lang/Integer;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Ljava/io/Reader;->read(Ljava/nio/CharBuffer;)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method private synthetic lambda$readLine$6()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-super {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method private synthetic lambda$ready$7()Z
    .locals 1

    .line 1
    invoke-super {p0}, Ljava/io/BufferedReader;->ready()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method private synthetic lambda$reset$8()V
    .locals 0

    .line 1
    invoke-super {p0}, Ljava/io/BufferedReader;->reset()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private synthetic lambda$skip$9(J)Ljava/lang/Long;
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Ljava/io/BufferedReader;->skip(J)J

    .line 2
    .line 3
    .line 4
    move-result-wide p1

    .line 5
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public static synthetic y(Lorg/apache/commons/io/input/UncheckedBufferedReader;)I
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/apache/commons/io/input/UncheckedBufferedReader;->lambda$read$2()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 1
    new-instance v0, Lorg/apache/commons/io/input/n;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, p0, v1}, Lorg/apache/commons/io/input/n;-><init>(Lorg/apache/commons/io/input/UncheckedBufferedReader;I)V

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, Lorg/apache/commons/io/function/Uncheck;->run(Lorg/apache/commons/io/function/IORunnable;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public mark(I)V
    .locals 2

    .line 1
    new-instance v0, Lorg/apache/commons/io/input/m;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Lorg/apache/commons/io/input/m;-><init>(Ljava/io/Closeable;I)V

    .line 5
    .line 6
    .line 7
    invoke-static {v0, p1}, Lorg/apache/commons/io/function/Uncheck;->accept(Lorg/apache/commons/io/function/IOIntConsumer;I)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public read()I
    .locals 2

    .line 27
    new-instance v0, Lorg/apache/commons/io/input/l;

    const/4 v1, 0x5

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/io/input/l;-><init>(Lorg/apache/commons/io/input/UncheckedBufferedReader;I)V

    invoke-static {v0}, Lorg/apache/commons/io/function/Uncheck;->getAsInt(Lorg/apache/commons/io/function/IOIntSupplier;)I

    move-result v0

    return v0
.end method

.method public read(Ljava/nio/CharBuffer;)I
    .locals 2

    .line 28
    new-instance v0, Lorg/apache/commons/io/input/l;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/io/input/l;-><init>(Lorg/apache/commons/io/input/UncheckedBufferedReader;I)V

    invoke-static {v0, p1}, Lorg/apache/commons/io/function/Uncheck;->apply(Lorg/apache/commons/io/function/IOFunction;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public read([C)I
    .locals 2

    .line 26
    new-instance v0, Lorg/apache/commons/io/input/l;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/io/input/l;-><init>(Lorg/apache/commons/io/input/UncheckedBufferedReader;I)V

    invoke-static {v0, p1}, Lorg/apache/commons/io/function/Uncheck;->apply(Lorg/apache/commons/io/function/IOFunction;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public read([CII)I
    .locals 2

    .line 1
    new-instance v0, Lorg/apache/commons/io/input/l;

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    invoke-direct {v0, p0, v1}, Lorg/apache/commons/io/input/l;-><init>(Lorg/apache/commons/io/input/UncheckedBufferedReader;I)V

    .line 5
    .line 6
    .line 7
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 12
    .line 13
    .line 14
    move-result-object p3

    .line 15
    invoke-static {v0, p1, p2, p3}, Lorg/apache/commons/io/function/Uncheck;->apply(Lorg/apache/commons/io/function/IOTriFunction;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    check-cast p1, Ljava/lang/Integer;

    .line 20
    .line 21
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    return p1
.end method

.method public readLine()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Lorg/apache/commons/io/input/l;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, p0, v1}, Lorg/apache/commons/io/input/l;-><init>(Lorg/apache/commons/io/input/UncheckedBufferedReader;I)V

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, Lorg/apache/commons/io/function/Uncheck;->get(Lorg/apache/commons/io/function/IOSupplier;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Ljava/lang/String;

    .line 12
    .line 13
    return-object v0
.end method

.method public ready()Z
    .locals 2

    .line 1
    new-instance v0, Lorg/apache/commons/io/input/l;

    .line 2
    .line 3
    const/4 v1, 0x6

    .line 4
    invoke-direct {v0, p0, v1}, Lorg/apache/commons/io/input/l;-><init>(Lorg/apache/commons/io/input/UncheckedBufferedReader;I)V

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, Lorg/apache/commons/io/function/Uncheck;->getAsBoolean(Lorg/apache/commons/io/function/IOBooleanSupplier;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method public reset()V
    .locals 2

    .line 1
    new-instance v0, Lorg/apache/commons/io/input/n;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Lorg/apache/commons/io/input/n;-><init>(Lorg/apache/commons/io/input/UncheckedBufferedReader;I)V

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, Lorg/apache/commons/io/function/Uncheck;->run(Lorg/apache/commons/io/function/IORunnable;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public skip(J)J
    .locals 2

    .line 1
    new-instance v0, Lorg/apache/commons/io/input/l;

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    invoke-direct {v0, p0, v1}, Lorg/apache/commons/io/input/l;-><init>(Lorg/apache/commons/io/input/UncheckedBufferedReader;I)V

    .line 5
    .line 6
    .line 7
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-static {v0, p1}, Lorg/apache/commons/io/function/Uncheck;->apply(Lorg/apache/commons/io/function/IOFunction;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Ljava/lang/Long;

    .line 16
    .line 17
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 18
    .line 19
    .line 20
    move-result-wide p1

    .line 21
    return-wide p1
.end method
