.class public final Lorg/apache/commons/io/output/UncheckedFilterOutputStream;
.super Ljava/io/FilterOutputStream;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/io/output/UncheckedFilterOutputStream$Builder;
    }
.end annotation


# direct methods
.method private constructor <init>(Lorg/apache/commons/io/output/UncheckedFilterOutputStream$Builder;)V
    .registers 2

    .line 1
    invoke-virtual {p1}, Lorg/apache/commons/io/build/AbstractStreamBuilder;->getOutputStream()Ljava/io/OutputStream;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public synthetic constructor <init>(Lorg/apache/commons/io/output/UncheckedFilterOutputStream$Builder;Lorg/apache/commons/io/output/UncheckedFilterOutputStream$1;)V
    .registers 3

    .line 9
    invoke-direct {p0, p1}, Lorg/apache/commons/io/output/UncheckedFilterOutputStream;-><init>(Lorg/apache/commons/io/output/UncheckedFilterOutputStream$Builder;)V

    return-void
.end method

.method public static synthetic S(Lorg/apache/commons/io/output/UncheckedFilterOutputStream;I)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lorg/apache/commons/io/output/UncheckedFilterOutputStream;->lambda$write$4(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic V(Lorg/apache/commons/io/output/UncheckedFilterOutputStream;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lorg/apache/commons/io/output/UncheckedFilterOutputStream;->lambda$flush$1()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic b(Lorg/apache/commons/io/output/UncheckedFilterOutputStream;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lorg/apache/commons/io/output/UncheckedFilterOutputStream;->lambda$close$0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static builder()Lorg/apache/commons/io/output/UncheckedFilterOutputStream$Builder;
    .registers 1

    .line 1
    new-instance v0, Lorg/apache/commons/io/output/UncheckedFilterOutputStream$Builder;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/apache/commons/io/output/UncheckedFilterOutputStream$Builder;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static synthetic c(Lorg/apache/commons/io/output/UncheckedFilterOutputStream;[B)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lorg/apache/commons/io/output/UncheckedFilterOutputStream;->lambda$write$2([B)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private synthetic lambda$close$0()V
    .registers 1

    .line 1
    invoke-super {p0}, Ljava/io/FilterOutputStream;->close()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private synthetic lambda$flush$1()V
    .registers 1

    .line 1
    invoke-super {p0}, Ljava/io/FilterOutputStream;->flush()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private synthetic lambda$write$2([B)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Ljava/io/FilterOutputStream;->write([B)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private synthetic lambda$write$3([BII)V
    .registers 4

    .line 1
    invoke-super {p0, p1, p2, p3}, Ljava/io/FilterOutputStream;->write([BII)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private synthetic lambda$write$4(I)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Ljava/io/FilterOutputStream;->write(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic y(Lorg/apache/commons/io/output/UncheckedFilterOutputStream;[BII)V
    .registers 4

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/io/output/UncheckedFilterOutputStream;->lambda$write$3([BII)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public close()V
    .registers 3

    .line 1
    new-instance v0, Lorg/apache/commons/io/output/d;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, p0, v1}, Lorg/apache/commons/io/output/d;-><init>(Lorg/apache/commons/io/output/UncheckedFilterOutputStream;I)V

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, Lorg/apache/commons/io/function/Uncheck;->run(Lorg/apache/commons/io/function/IORunnable;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public flush()V
    .registers 3

    .line 1
    new-instance v0, Lorg/apache/commons/io/output/d;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Lorg/apache/commons/io/output/d;-><init>(Lorg/apache/commons/io/output/UncheckedFilterOutputStream;I)V

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, Lorg/apache/commons/io/function/Uncheck;->run(Lorg/apache/commons/io/function/IORunnable;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public write(I)V
    .registers 4

    .line 21
    new-instance v0, Lorg/apache/commons/io/input/m;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/io/input/m;-><init>(Ljava/io/Closeable;I)V

    invoke-static {v0, p1}, Lorg/apache/commons/io/function/Uncheck;->accept(Lorg/apache/commons/io/function/IOIntConsumer;I)V

    return-void
.end method

.method public write([B)V
    .registers 4

    .line 20
    new-instance v0, Lorg/apache/commons/io/input/j;

    const/16 v1, 0x8

    invoke-direct {v0, v1, p0}, Lorg/apache/commons/io/input/j;-><init>(ILjava/lang/Object;)V

    invoke-static {v0, p1}, Lorg/apache/commons/io/function/Uncheck;->accept(Lorg/apache/commons/io/function/IOConsumer;Ljava/lang/Object;)V

    return-void
.end method

.method public write([BII)V
    .registers 6

    .line 1
    new-instance v0, Landroidx/fragment/app/h;

    .line 2
    .line 3
    const/16 v1, 0x1c

    .line 4
    .line 5
    invoke-direct {v0, v1, p0}, Landroidx/fragment/app/h;-><init>(ILjava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 9
    .line 10
    .line 11
    move-result-object p2

    .line 12
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 13
    .line 14
    .line 15
    move-result-object p3

    .line 16
    invoke-static {v0, p1, p2, p3}, Lorg/apache/commons/io/function/Uncheck;->accept(Lorg/apache/commons/io/function/IOTriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method
