.class public Lorg/apache/poi/xssf/util/CTColComparator;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final BY_MAX:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;",
            ">;"
        }
    .end annotation
.end field

.field public static final BY_MIN_MAX:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ls0/i;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ls0/i;-><init>(I)V

    sput-object v0, Lorg/apache/poi/xssf/util/CTColComparator;->BY_MAX:Ljava/util/Comparator;

    new-instance v0, Lorg/apache/poi/extractor/f;

    invoke-direct {v0, v1}, Lorg/apache/poi/extractor/f;-><init>(I)V

    sput-object v0, Lorg/apache/poi/xssf/util/CTColComparator;->BY_MIN_MAX:Ljava/util/Comparator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;)I
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/poi/xssf/util/CTColComparator;->lambda$static$0(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;)I

    move-result p0

    return p0
.end method

.method public static synthetic b(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;)I
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/poi/xssf/util/CTColComparator;->lambda$static$1(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;)I

    move-result p0

    return p0
.end method

.method private static synthetic lambda$static$0(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;)I
    .locals 2

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->getMax()J

    move-result-wide v0

    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->getMax()J

    move-result-wide p0

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Long;->compare(JJ)I

    move-result p0

    return p0
.end method

.method private static synthetic lambda$static$1(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;)I
    .locals 4

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->getMin()J

    move-result-wide v0

    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->getMin()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    :cond_0
    if-lez v0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    sget-object v0, Lorg/apache/poi/xssf/util/CTColComparator;->BY_MAX:Ljava/util/Comparator;

    invoke-interface {v0, p0, p1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    :goto_0
    return p0
.end method
