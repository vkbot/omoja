.class public Lorg/apache/commons/io/output/FilterCollectionWriter;
.super Ljava/io/Writer;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# instance fields
.field protected final EMPTY_WRITERS:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/io/Writer;",
            ">;"
        }
    .end annotation
.end field

.field protected final writers:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/io/Writer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/io/Writer;",
            ">;)V"
        }
    .end annotation

    .line 18
    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    .line 19
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lorg/apache/commons/io/output/FilterCollectionWriter;->EMPTY_WRITERS:Ljava/util/Collection;

    if-nez p1, :cond_0

    move-object p1, v0

    .line 20
    :cond_0
    iput-object p1, p0, Lorg/apache/commons/io/output/FilterCollectionWriter;->writers:Ljava/util/Collection;

    return-void
.end method

.method public varargs constructor <init>([Ljava/io/Writer;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 5
    .line 6
    iput-object v0, p0, Lorg/apache/commons/io/output/FilterCollectionWriter;->EMPTY_WRITERS:Ljava/util/Collection;

    .line 7
    .line 8
    if-nez p1, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    :goto_0
    iput-object v0, p0, Lorg/apache/commons/io/output/FilterCollectionWriter;->writers:Ljava/util/Collection;

    .line 16
    .line 17
    return-void
.end method

.method public static synthetic S(ILjava/io/Writer;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lorg/apache/commons/io/output/FilterCollectionWriter;->lambda$write$5(ILjava/io/Writer;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic V(Ljava/lang/String;IILjava/io/Writer;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lorg/apache/commons/io/output/FilterCollectionWriter;->lambda$write$7(Ljava/lang/String;IILjava/io/Writer;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic b(Ljava/lang/String;Ljava/io/Writer;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lorg/apache/commons/io/output/FilterCollectionWriter;->lambda$write$6(Ljava/lang/String;Ljava/io/Writer;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic c([CLjava/io/Writer;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lorg/apache/commons/io/output/FilterCollectionWriter;->lambda$write$3([CLjava/io/Writer;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic c0(Ljava/lang/CharSequence;Ljava/io/Writer;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lorg/apache/commons/io/output/FilterCollectionWriter;->lambda$append$1(Ljava/lang/CharSequence;Ljava/io/Writer;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic d0([CIILjava/io/Writer;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lorg/apache/commons/io/output/FilterCollectionWriter;->lambda$write$4([CIILjava/io/Writer;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic e0(CLjava/io/Writer;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lorg/apache/commons/io/output/FilterCollectionWriter;->lambda$append$0(CLjava/io/Writer;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private forAllWriters(Lorg/apache/commons/io/function/IOConsumer;)Lorg/apache/commons/io/output/FilterCollectionWriter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/io/function/IOConsumer<",
            "Ljava/io/Writer;",
            ">;)",
            "Lorg/apache/commons/io/output/FilterCollectionWriter;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lorg/apache/commons/io/output/FilterCollectionWriter;->writers()Ljava/util/stream/Stream;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {p1, v0}, Lorg/apache/commons/io/function/IOConsumer;->forAll(Lorg/apache/commons/io/function/IOConsumer;Ljava/util/stream/Stream;)V

    .line 6
    .line 7
    .line 8
    return-object p0
.end method

.method private static synthetic lambda$append$0(CLjava/io/Writer;)V
    .locals 0

    .line 1
    invoke-virtual {p1, p0}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic lambda$append$1(Ljava/lang/CharSequence;Ljava/io/Writer;)V
    .locals 0

    .line 1
    invoke-virtual {p1, p0}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic lambda$append$2(Ljava/lang/CharSequence;IILjava/io/Writer;)V
    .locals 0

    .line 1
    invoke-virtual {p3, p0, p1, p2}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;II)Ljava/io/Writer;

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic lambda$write$3([CLjava/io/Writer;)V
    .locals 0

    .line 1
    invoke-virtual {p1, p0}, Ljava/io/Writer;->write([C)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic lambda$write$4([CIILjava/io/Writer;)V
    .locals 0

    .line 1
    invoke-virtual {p3, p0, p1, p2}, Ljava/io/Writer;->write([CII)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic lambda$write$5(ILjava/io/Writer;)V
    .locals 0

    .line 1
    invoke-virtual {p1, p0}, Ljava/io/Writer;->write(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic lambda$write$6(Ljava/lang/String;Ljava/io/Writer;)V
    .locals 0

    .line 1
    invoke-virtual {p1, p0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic lambda$write$7(Ljava/lang/String;IILjava/io/Writer;)V
    .locals 0

    .line 1
    invoke-virtual {p3, p0, p1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;II)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private writers()Ljava/util/stream/Stream;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/stream/Stream<",
            "Ljava/io/Writer;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/commons/io/output/FilterCollectionWriter;->writers:Ljava/util/Collection;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Li7/k;

    .line 8
    .line 9
    const/4 v2, 0x5

    .line 10
    invoke-direct {v1, v2}, Li7/k;-><init>(I)V

    .line 11
    .line 12
    .line 13
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    return-object v0
.end method

.method public static synthetic y(Ljava/lang/CharSequence;IILjava/io/Writer;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lorg/apache/commons/io/output/FilterCollectionWriter;->lambda$append$2(Ljava/lang/CharSequence;IILjava/io/Writer;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public append(C)Ljava/io/Writer;
    .locals 1

    .line 14
    new-instance v0, Lorg/apache/commons/io/output/b;

    invoke-direct {v0, p1}, Lorg/apache/commons/io/output/b;-><init>(C)V

    invoke-direct {p0, v0}, Lorg/apache/commons/io/output/FilterCollectionWriter;->forAllWriters(Lorg/apache/commons/io/function/IOConsumer;)Lorg/apache/commons/io/output/FilterCollectionWriter;

    move-result-object p1

    return-object p1
.end method

.method public append(Ljava/lang/CharSequence;)Ljava/io/Writer;
    .locals 2

    .line 1
    new-instance v0, Lorg/apache/commons/io/input/j;

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    invoke-direct {v0, v1, p1}, Lorg/apache/commons/io/input/j;-><init>(ILjava/lang/Object;)V

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, v0}, Lorg/apache/commons/io/output/FilterCollectionWriter;->forAllWriters(Lorg/apache/commons/io/function/IOConsumer;)Lorg/apache/commons/io/output/FilterCollectionWriter;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method

.method public append(Ljava/lang/CharSequence;II)Ljava/io/Writer;
    .locals 2

    .line 16
    new-instance v0, Lorg/apache/commons/io/input/i;

    const/4 v1, 0x1

    invoke-direct {v0, p1, p2, p3, v1}, Lorg/apache/commons/io/input/i;-><init>(Ljava/lang/Object;III)V

    invoke-direct {p0, v0}, Lorg/apache/commons/io/output/FilterCollectionWriter;->forAllWriters(Lorg/apache/commons/io/function/IOConsumer;)Lorg/apache/commons/io/output/FilterCollectionWriter;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic append(C)Ljava/lang/Appendable;
    .locals 0

    .line 15
    invoke-virtual {p0, p1}, Lorg/apache/commons/io/output/FilterCollectionWriter;->append(C)Ljava/io/Writer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    .locals 0

    .line 12
    invoke-virtual {p0, p1}, Lorg/apache/commons/io/output/FilterCollectionWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;
    .locals 0

    .line 13
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/io/output/FilterCollectionWriter;->append(Ljava/lang/CharSequence;II)Ljava/io/Writer;

    move-result-object p1

    return-object p1
.end method

.method public close()V
    .locals 2

    .line 1
    new-instance v0, Lorg/apache/commons/io/input/h;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    invoke-direct {v0, v1}, Lorg/apache/commons/io/input/h;-><init>(I)V

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, v0}, Lorg/apache/commons/io/output/FilterCollectionWriter;->forAllWriters(Lorg/apache/commons/io/function/IOConsumer;)Lorg/apache/commons/io/output/FilterCollectionWriter;

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public flush()V
    .locals 2

    .line 1
    new-instance v0, Lorg/apache/commons/io/input/h;

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    invoke-direct {v0, v1}, Lorg/apache/commons/io/input/h;-><init>(I)V

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, v0}, Lorg/apache/commons/io/output/FilterCollectionWriter;->forAllWriters(Lorg/apache/commons/io/function/IOConsumer;)Lorg/apache/commons/io/output/FilterCollectionWriter;

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public write(I)V
    .locals 2

    .line 12
    new-instance v0, Lorg/apache/commons/io/input/g;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lorg/apache/commons/io/input/g;-><init>(II)V

    invoke-direct {p0, v0}, Lorg/apache/commons/io/output/FilterCollectionWriter;->forAllWriters(Lorg/apache/commons/io/function/IOConsumer;)Lorg/apache/commons/io/output/FilterCollectionWriter;

    return-void
.end method

.method public write(Ljava/lang/String;)V
    .locals 2

    .line 13
    new-instance v0, Lorg/apache/commons/io/input/j;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p1}, Lorg/apache/commons/io/input/j;-><init>(ILjava/lang/Object;)V

    invoke-direct {p0, v0}, Lorg/apache/commons/io/output/FilterCollectionWriter;->forAllWriters(Lorg/apache/commons/io/function/IOConsumer;)Lorg/apache/commons/io/output/FilterCollectionWriter;

    return-void
.end method

.method public write(Ljava/lang/String;II)V
    .locals 2

    .line 14
    new-instance v0, Lorg/apache/commons/io/input/i;

    const/4 v1, 0x3

    invoke-direct {v0, p1, p2, p3, v1}, Lorg/apache/commons/io/input/i;-><init>(Ljava/lang/Object;III)V

    invoke-direct {p0, v0}, Lorg/apache/commons/io/output/FilterCollectionWriter;->forAllWriters(Lorg/apache/commons/io/function/IOConsumer;)Lorg/apache/commons/io/output/FilterCollectionWriter;

    return-void
.end method

.method public write([C)V
    .locals 2

    .line 1
    new-instance v0, Lorg/apache/commons/io/input/j;

    .line 2
    .line 3
    const/4 v1, 0x5

    .line 4
    invoke-direct {v0, v1, p1}, Lorg/apache/commons/io/input/j;-><init>(ILjava/lang/Object;)V

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, v0}, Lorg/apache/commons/io/output/FilterCollectionWriter;->forAllWriters(Lorg/apache/commons/io/function/IOConsumer;)Lorg/apache/commons/io/output/FilterCollectionWriter;

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public write([CII)V
    .locals 2

    .line 11
    new-instance v0, Lorg/apache/commons/io/input/i;

    const/4 v1, 0x2

    invoke-direct {v0, p1, p2, p3, v1}, Lorg/apache/commons/io/input/i;-><init>(Ljava/lang/Object;III)V

    invoke-direct {p0, v0}, Lorg/apache/commons/io/output/FilterCollectionWriter;->forAllWriters(Lorg/apache/commons/io/function/IOConsumer;)Lorg/apache/commons/io/output/FilterCollectionWriter;

    return-void
.end method
