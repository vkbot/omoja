.class public final Lorg/apache/commons/io/output/UncheckedFilterWriter;
.super Ljava/io/FilterWriter;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/io/output/UncheckedFilterWriter$Builder;
    }
.end annotation


# direct methods
.method private constructor <init>(Lorg/apache/commons/io/output/UncheckedFilterWriter$Builder;)V
    .registers 2

    .line 1
    invoke-virtual {p1}, Lorg/apache/commons/io/build/AbstractStreamBuilder;->getWriter()Ljava/io/Writer;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-direct {p0, p1}, Ljava/io/FilterWriter;-><init>(Ljava/io/Writer;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public synthetic constructor <init>(Lorg/apache/commons/io/output/UncheckedFilterWriter$Builder;Lorg/apache/commons/io/output/UncheckedFilterWriter$1;)V
    .registers 3

    .line 9
    invoke-direct {p0, p1}, Lorg/apache/commons/io/output/UncheckedFilterWriter;-><init>(Lorg/apache/commons/io/output/UncheckedFilterWriter$Builder;)V

    return-void
.end method

.method public static synthetic S(Lorg/apache/commons/io/output/UncheckedFilterWriter;[C)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lorg/apache/commons/io/output/UncheckedFilterWriter;->lambda$write$5([C)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic V(Lorg/apache/commons/io/output/UncheckedFilterWriter;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lorg/apache/commons/io/output/UncheckedFilterWriter;->lambda$close$3()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic b(Lorg/apache/commons/io/output/UncheckedFilterWriter;Ljava/lang/String;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lorg/apache/commons/io/output/UncheckedFilterWriter;->lambda$write$8(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static builder()Lorg/apache/commons/io/output/UncheckedFilterWriter$Builder;
    .registers 1

    .line 1
    new-instance v0, Lorg/apache/commons/io/output/UncheckedFilterWriter$Builder;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/apache/commons/io/output/UncheckedFilterWriter$Builder;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static synthetic c(Lorg/apache/commons/io/output/UncheckedFilterWriter;[CII)V
    .registers 4

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/io/output/UncheckedFilterWriter;->lambda$write$6([CII)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic c0(Lorg/apache/commons/io/output/UncheckedFilterWriter;Ljava/lang/CharSequence;II)Ljava/io/Writer;
    .registers 4

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/io/output/UncheckedFilterWriter;->lambda$append$2(Ljava/lang/CharSequence;II)Ljava/io/Writer;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic d0(Lorg/apache/commons/io/output/UncheckedFilterWriter;Ljava/lang/CharSequence;)Ljava/io/Writer;
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lorg/apache/commons/io/output/UncheckedFilterWriter;->lambda$append$1(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic e0(Lorg/apache/commons/io/output/UncheckedFilterWriter;C)Ljava/io/Writer;
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lorg/apache/commons/io/output/UncheckedFilterWriter;->lambda$append$0(C)Ljava/io/Writer;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic f0(Lorg/apache/commons/io/output/UncheckedFilterWriter;I)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lorg/apache/commons/io/output/UncheckedFilterWriter;->lambda$write$7(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic g0(Lorg/apache/commons/io/output/UncheckedFilterWriter;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lorg/apache/commons/io/output/UncheckedFilterWriter;->lambda$flush$4()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private synthetic lambda$append$0(C)Ljava/io/Writer;
    .registers 2

    .line 1
    invoke-super {p0, p1}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method private synthetic lambda$append$1(Ljava/lang/CharSequence;)Ljava/io/Writer;
    .registers 2

    .line 1
    invoke-super {p0, p1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method private synthetic lambda$append$2(Ljava/lang/CharSequence;II)Ljava/io/Writer;
    .registers 4

    .line 1
    invoke-super {p0, p1, p2, p3}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;II)Ljava/io/Writer;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method private synthetic lambda$close$3()V
    .registers 1

    .line 1
    invoke-super {p0}, Ljava/io/FilterWriter;->close()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private synthetic lambda$flush$4()V
    .registers 1

    .line 1
    invoke-super {p0}, Ljava/io/FilterWriter;->flush()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private synthetic lambda$write$5([C)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Ljava/io/Writer;->write([C)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private synthetic lambda$write$6([CII)V
    .registers 4

    .line 1
    invoke-super {p0, p1, p2, p3}, Ljava/io/FilterWriter;->write([CII)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private synthetic lambda$write$7(I)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Ljava/io/FilterWriter;->write(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private synthetic lambda$write$8(Ljava/lang/String;)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private synthetic lambda$write$9(Ljava/lang/String;II)V
    .registers 4

    .line 1
    invoke-super {p0, p1, p2, p3}, Ljava/io/FilterWriter;->write(Ljava/lang/String;II)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic y(Lorg/apache/commons/io/output/UncheckedFilterWriter;Ljava/lang/String;II)V
    .registers 4

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/io/output/UncheckedFilterWriter;->lambda$write$9(Ljava/lang/String;II)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public append(C)Ljava/io/Writer;
    .registers 4

    .line 24
    new-instance v0, Lorg/apache/commons/io/output/e;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/io/output/e;-><init>(Lorg/apache/commons/io/output/UncheckedFilterWriter;I)V

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p1

    invoke-static {v0, p1}, Lorg/apache/commons/io/function/Uncheck;->apply(Lorg/apache/commons/io/function/IOFunction;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/io/Writer;

    return-object p1
.end method

.method public append(Ljava/lang/CharSequence;)Ljava/io/Writer;
    .registers 4

    .line 25
    new-instance v0, Lorg/apache/commons/io/output/e;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/io/output/e;-><init>(Lorg/apache/commons/io/output/UncheckedFilterWriter;I)V

    invoke-static {v0, p1}, Lorg/apache/commons/io/function/Uncheck;->apply(Lorg/apache/commons/io/function/IOFunction;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/io/Writer;

    return-object p1
.end method

.method public append(Ljava/lang/CharSequence;II)Ljava/io/Writer;
    .registers 6

    .line 1
    new-instance v0, Lorg/apache/commons/io/output/e;

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    invoke-direct {v0, p0, v1}, Lorg/apache/commons/io/output/e;-><init>(Lorg/apache/commons/io/output/UncheckedFilterWriter;I)V

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
    check-cast p1, Ljava/io/Writer;

    .line 20
    .line 21
    return-object p1
.end method

.method public bridge synthetic append(C)Ljava/lang/Appendable;
    .registers 2

    .line 26
    invoke-virtual {p0, p1}, Lorg/apache/commons/io/output/UncheckedFilterWriter;->append(C)Ljava/io/Writer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    .registers 2

    .line 22
    invoke-virtual {p0, p1}, Lorg/apache/commons/io/output/UncheckedFilterWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;
    .registers 4

    .line 23
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/io/output/UncheckedFilterWriter;->append(Ljava/lang/CharSequence;II)Ljava/io/Writer;

    move-result-object p1

    return-object p1
.end method

.method public close()V
    .registers 3

    .line 1
    new-instance v0, Lorg/apache/commons/io/output/f;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, p0, v1}, Lorg/apache/commons/io/output/f;-><init>(Lorg/apache/commons/io/output/UncheckedFilterWriter;I)V

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
    new-instance v0, Lorg/apache/commons/io/output/f;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Lorg/apache/commons/io/output/f;-><init>(Lorg/apache/commons/io/output/UncheckedFilterWriter;I)V

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

    .line 20
    new-instance v0, Lorg/apache/commons/io/input/m;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/io/input/m;-><init>(Ljava/io/Closeable;I)V

    invoke-static {v0, p1}, Lorg/apache/commons/io/function/Uncheck;->accept(Lorg/apache/commons/io/function/IOIntConsumer;I)V

    return-void
.end method

.method public write(Ljava/lang/String;)V
    .registers 4

    .line 21
    new-instance v0, Lorg/apache/commons/io/output/g;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/io/output/g;-><init>(Lorg/apache/commons/io/output/UncheckedFilterWriter;I)V

    invoke-static {v0, p1}, Lorg/apache/commons/io/function/Uncheck;->accept(Lorg/apache/commons/io/function/IOConsumer;Ljava/lang/Object;)V

    return-void
.end method

.method public write(Ljava/lang/String;II)V
    .registers 6

    .line 22
    new-instance v0, Lorg/apache/commons/io/output/e;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/io/output/e;-><init>(Lorg/apache/commons/io/output/UncheckedFilterWriter;I)V

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-static {v0, p1, p2, p3}, Lorg/apache/commons/io/function/Uncheck;->accept(Lorg/apache/commons/io/function/IOTriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public write([C)V
    .registers 4

    .line 19
    new-instance v0, Lorg/apache/commons/io/output/g;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/io/output/g;-><init>(Lorg/apache/commons/io/output/UncheckedFilterWriter;I)V

    invoke-static {v0, p1}, Lorg/apache/commons/io/function/Uncheck;->accept(Lorg/apache/commons/io/function/IOConsumer;Ljava/lang/Object;)V

    return-void
.end method

.method public write([CII)V
    .registers 6

    .line 1
    new-instance v0, Lorg/apache/commons/io/output/e;

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    invoke-direct {v0, p0, v1}, Lorg/apache/commons/io/output/e;-><init>(Lorg/apache/commons/io/output/UncheckedFilterWriter;I)V

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
    invoke-static {v0, p1, p2, p3}, Lorg/apache/commons/io/function/Uncheck;->accept(Lorg/apache/commons/io/function/IOTriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method
