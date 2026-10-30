.class final Lorg/apache/commons/io/function/Constants;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# static fields
.field static final IO_BI_CONSUMER:Lorg/apache/commons/io/function/IOBiConsumer;

.field static final IO_BI_FUNCTION:Lorg/apache/commons/io/function/IOBiFunction;

.field static final IO_FUNCTION_ID:Lorg/apache/commons/io/function/IOFunction;

.field static final IO_PREDICATE_FALSE:Lorg/apache/commons/io/function/IOPredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/io/function/IOPredicate<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field static final IO_PREDICATE_TRUE:Lorg/apache/commons/io/function/IOPredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/io/function/IOPredicate<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field static final IO_RUNNABLE:Lorg/apache/commons/io/function/IORunnable;

.field static final IO_TRI_CONSUMER:Lorg/apache/commons/io/function/IOTriConsumer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lorg/apache/commons/io/function/a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lorg/apache/commons/io/function/a;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lorg/apache/commons/io/function/Constants;->IO_BI_CONSUMER:Lorg/apache/commons/io/function/IOBiConsumer;

    .line 8
    .line 9
    new-instance v0, Lorg/apache/commons/io/function/b;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    sput-object v0, Lorg/apache/commons/io/function/Constants;->IO_RUNNABLE:Lorg/apache/commons/io/function/IORunnable;

    .line 15
    .line 16
    new-instance v0, Lorg/apache/commons/io/function/c;

    .line 17
    .line 18
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 19
    .line 20
    .line 21
    sput-object v0, Lorg/apache/commons/io/function/Constants;->IO_BI_FUNCTION:Lorg/apache/commons/io/function/IOBiFunction;

    .line 22
    .line 23
    new-instance v0, Lorg/apache/commons/io/function/a;

    .line 24
    .line 25
    const/4 v1, 0x1

    .line 26
    invoke-direct {v0, v1}, Lorg/apache/commons/io/function/a;-><init>(I)V

    .line 27
    .line 28
    .line 29
    sput-object v0, Lorg/apache/commons/io/function/Constants;->IO_FUNCTION_ID:Lorg/apache/commons/io/function/IOFunction;

    .line 30
    .line 31
    new-instance v0, Lorg/apache/commons/io/function/a;

    .line 32
    .line 33
    const/4 v1, 0x2

    .line 34
    invoke-direct {v0, v1}, Lorg/apache/commons/io/function/a;-><init>(I)V

    .line 35
    .line 36
    .line 37
    sput-object v0, Lorg/apache/commons/io/function/Constants;->IO_PREDICATE_FALSE:Lorg/apache/commons/io/function/IOPredicate;

    .line 38
    .line 39
    new-instance v0, Lorg/apache/commons/io/function/a;

    .line 40
    .line 41
    const/4 v1, 0x3

    .line 42
    invoke-direct {v0, v1}, Lorg/apache/commons/io/function/a;-><init>(I)V

    .line 43
    .line 44
    .line 45
    sput-object v0, Lorg/apache/commons/io/function/Constants;->IO_PREDICATE_TRUE:Lorg/apache/commons/io/function/IOPredicate;

    .line 46
    .line 47
    new-instance v0, Lorg/apache/commons/io/function/a;

    .line 48
    .line 49
    const/4 v1, 0x4

    .line 50
    invoke-direct {v0, v1}, Lorg/apache/commons/io/function/a;-><init>(I)V

    .line 51
    .line 52
    .line 53
    sput-object v0, Lorg/apache/commons/io/function/Constants;->IO_TRI_CONSUMER:Lorg/apache/commons/io/function/IOTriConsumer;

    .line 54
    .line 55
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic a(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lorg/apache/commons/io/function/Constants;->lambda$static$5(Ljava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0}, Lorg/apache/commons/io/function/Constants;->lambda$static$3(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic c(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lorg/apache/commons/io/function/Constants;->lambda$static$0(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lorg/apache/commons/io/function/Constants;->lambda$static$6(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic e(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lorg/apache/commons/io/function/Constants;->lambda$static$2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic f(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lorg/apache/commons/io/function/Constants;->lambda$static$4(Ljava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic g()V
    .locals 0

    .line 1
    invoke-static {}, Lorg/apache/commons/io/function/Constants;->lambda$static$1()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic lambda$static$0(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    return-void
.end method

.method private static synthetic lambda$static$1()V
    .locals 0

    .line 1
    return-void
.end method

.method private static synthetic lambda$static$2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method private static synthetic lambda$static$3(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    return-object p0
.end method

.method private static synthetic lambda$static$4(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method private static synthetic lambda$static$5(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method

.method private static synthetic lambda$static$6(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    return-void
.end method
