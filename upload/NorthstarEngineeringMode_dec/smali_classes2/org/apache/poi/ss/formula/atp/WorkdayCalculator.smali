.class public Lorg/apache/poi/ss/formula/atp/WorkdayCalculator;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final friSatWeekend:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final friWeekend:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final instance:Lorg/apache/poi/ss/formula/atp/WorkdayCalculator;

.field private static final monTuesWeekend:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final monWeekend:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final satWeekend:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final standardWeekend:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final sunMonWeekend:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final sunWeekend:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final thursFriWeekend:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final thursWeekend:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final tuesWedsWeekend:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final tuesWeekend:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final wedsThursWeekend:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final wedsWeekend:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final weekendTypeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 22

    new-instance v0, Lorg/apache/poi/ss/formula/atp/WorkdayCalculator;

    invoke-direct {v0}, Lorg/apache/poi/ss/formula/atp/WorkdayCalculator;-><init>()V

    sput-object v0, Lorg/apache/poi/ss/formula/atp/WorkdayCalculator;->instance:Lorg/apache/poi/ss/formula/atp/WorkdayCalculator;

    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Integer;

    const/4 v4, 0x7

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v3, v6

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lorg/apache/poi/ss/formula/atp/WorkdayCalculator;->standardWeekend:Ljava/util/Set;

    new-instance v3, Ljava/util/HashSet;

    new-array v8, v1, [Ljava/lang/Integer;

    aput-object v7, v8, v5

    aput-object v2, v8, v6

    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-direct {v3, v8}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v3, Lorg/apache/poi/ss/formula/atp/WorkdayCalculator;->sunMonWeekend:Ljava/util/Set;

    new-instance v8, Ljava/util/HashSet;

    new-array v9, v1, [Ljava/lang/Integer;

    aput-object v2, v9, v5

    const/4 v10, 0x3

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v6

    invoke-static {v9}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v8, Lorg/apache/poi/ss/formula/atp/WorkdayCalculator;->monTuesWeekend:Ljava/util/Set;

    new-instance v9, Ljava/util/HashSet;

    new-array v11, v1, [Ljava/lang/Integer;

    aput-object v10, v11, v5

    const/4 v12, 0x4

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v6

    invoke-static {v11}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    invoke-direct {v9, v11}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v9, Lorg/apache/poi/ss/formula/atp/WorkdayCalculator;->tuesWedsWeekend:Ljava/util/Set;

    new-instance v11, Ljava/util/HashSet;

    new-array v13, v1, [Ljava/lang/Integer;

    aput-object v12, v13, v5

    const/4 v14, 0x5

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v13, v6

    invoke-static {v13}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v13

    invoke-direct {v11, v13}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v11, Lorg/apache/poi/ss/formula/atp/WorkdayCalculator;->wedsThursWeekend:Ljava/util/Set;

    new-instance v13, Ljava/util/HashSet;

    new-array v15, v1, [Ljava/lang/Integer;

    aput-object v14, v15, v5

    const/16 v16, 0x6

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v15, v6

    invoke-static {v15}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v15

    invoke-direct {v13, v15}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v13, Lorg/apache/poi/ss/formula/atp/WorkdayCalculator;->thursFriWeekend:Ljava/util/Set;

    new-instance v15, Ljava/util/HashSet;

    new-array v1, v1, [Ljava/lang/Integer;

    const/16 v16, 0x0

    aput-object v5, v1, v16

    aput-object v4, v1, v6

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v15, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v15, Lorg/apache/poi/ss/formula/atp/WorkdayCalculator;->friSatWeekend:Ljava/util/Set;

    invoke-static {v2}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    sput-object v1, Lorg/apache/poi/ss/formula/atp/WorkdayCalculator;->monWeekend:Ljava/util/Set;

    invoke-static {v10}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v6

    sput-object v6, Lorg/apache/poi/ss/formula/atp/WorkdayCalculator;->tuesWeekend:Ljava/util/Set;

    move-object/from16 v16, v6

    invoke-static {v12}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v6

    sput-object v6, Lorg/apache/poi/ss/formula/atp/WorkdayCalculator;->wedsWeekend:Ljava/util/Set;

    move-object/from16 v17, v6

    invoke-static {v14}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v6

    sput-object v6, Lorg/apache/poi/ss/formula/atp/WorkdayCalculator;->thursWeekend:Ljava/util/Set;

    move-object/from16 v18, v6

    invoke-static {v5}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v6

    sput-object v6, Lorg/apache/poi/ss/formula/atp/WorkdayCalculator;->friWeekend:Ljava/util/Set;

    move-object/from16 v19, v6

    invoke-static {v4}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v6

    sput-object v6, Lorg/apache/poi/ss/formula/atp/WorkdayCalculator;->satWeekend:Ljava/util/Set;

    move-object/from16 v20, v6

    invoke-static {v7}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v6

    sput-object v6, Lorg/apache/poi/ss/formula/atp/WorkdayCalculator;->sunWeekend:Ljava/util/Set;

    move-object/from16 v21, v1

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lorg/apache/poi/ss/formula/atp/WorkdayCalculator;->weekendTypeMap:Ljava/util/Map;

    invoke-interface {v1, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v1, v10, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v1, v12, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v1, v14, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v1, v5, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v1, v4, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0xb

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0xc

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object/from16 v2, v21

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0xd

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object/from16 v2, v16

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0xe

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object/from16 v2, v17

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0xf

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object/from16 v2, v18

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x10

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object/from16 v2, v19

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x11

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object/from16 v2, v20

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private isWeekend(Ljava/util/Calendar;)Z
    .locals 1

    sget-object v0, Lorg/apache/poi/ss/formula/atp/WorkdayCalculator;->standardWeekend:Ljava/util/Set;

    .line 4
    invoke-direct {p0, p1, v0}, Lorg/apache/poi/ss/formula/atp/WorkdayCalculator;->isWeekend(Ljava/util/Calendar;Ljava/util/Set;)Z

    move-result p0

    return p0
.end method

.method private isWeekend(Ljava/util/Calendar;Ljava/util/Set;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Calendar;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    const/4 p0, 0x7

    .line 5
    invoke-virtual {p1, p0}, Ljava/util/Calendar;->get(I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p2, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public calculateNonWeekendHolidays(DD[D)I
    .locals 20

    move-wide/from16 v0, p1

    move-wide/from16 v2, p3

    move-object/from16 v4, p5

    invoke-static/range {p1 .. p4}, Ljava/lang/Math;->min(DD)D

    move-result-wide v12

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v14

    array-length v10, v4

    const/4 v5, 0x0

    move v8, v5

    move v11, v8

    :goto_0
    if-ge v11, v10, :cond_2

    aget-wide v6, v4, v11

    move-object/from16 v5, p0

    move-wide/from16 v16, v6

    move-wide v6, v12

    move v4, v8

    move-wide v8, v14

    move/from16 v18, v10

    move/from16 v19, v11

    move-wide/from16 v10, v16

    invoke-virtual/range {v5 .. v11}, Lorg/apache/poi/ss/formula/atp/WorkdayCalculator;->isInARange(DDD)Z

    move-result v5

    if-eqz v5, :cond_0

    move-object/from16 v5, p0

    move-wide/from16 v6, v16

    invoke-virtual {v5, v6, v7}, Lorg/apache/poi/ss/formula/atp/WorkdayCalculator;->isWeekend(D)Z

    move-result v6

    if-nez v6, :cond_1

    add-int/lit8 v8, v4, 0x1

    goto :goto_1

    :cond_0
    move-object/from16 v5, p0

    :cond_1
    move v8, v4

    :goto_1
    add-int/lit8 v11, v19, 0x1

    move-object/from16 v4, p5

    move/from16 v10, v18

    goto :goto_0

    :cond_2
    move v4, v8

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_3

    move v8, v4

    goto :goto_2

    :cond_3
    neg-int v8, v4

    :goto_2
    return v8
.end method

.method public calculateWorkdays(DD[D)I
    .locals 9

    sget-object v0, Lorg/apache/poi/ss/formula/atp/WorkdayCalculator;->standardWeekend:Ljava/util/Set;

    .line 1
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/Integer;

    .line 2
    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Integer;

    .line 3
    array-length v1, v0

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    aget-object v1, v0, v2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v8

    move-object v3, p0

    move-wide v4, p1

    move-wide v6, p3

    invoke-virtual/range {v3 .. v8}, Lorg/apache/poi/ss/formula/atp/WorkdayCalculator;->pastDaysOfWeek(DDI)I

    move-result v1

    .line 4
    :goto_0
    array-length v3, v0

    const/4 v4, 0x1

    if-gt v3, v4, :cond_1

    goto :goto_1

    :cond_1
    aget-object v0, v0, v4

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v7

    move-object v2, p0

    move-wide v3, p1

    move-wide v5, p3

    invoke-virtual/range {v2 .. v7}, Lorg/apache/poi/ss/formula/atp/WorkdayCalculator;->pastDaysOfWeek(DDI)I

    move-result v2

    .line 5
    :goto_1
    invoke-virtual/range {p0 .. p5}, Lorg/apache/poi/ss/formula/atp/WorkdayCalculator;->calculateNonWeekendHolidays(DD[D)I

    move-result p0

    sub-double/2addr p3, p1

    const-wide/high16 p1, 0x3ff0000000000000L    # 1.0

    add-double/2addr p3, p1

    double-to-int p1, p3

    sub-int/2addr p1, v1

    sub-int/2addr p1, v2

    sub-int/2addr p1, p0

    return p1
.end method

.method public calculateWorkdays(DII[D)Ljava/util/Date;
    .locals 5

    sget-object v0, Lorg/apache/poi/ss/formula/atp/WorkdayCalculator;->weekendTypeMap:Ljava/util/Map;

    .line 7
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    sget-object v1, Lorg/apache/poi/ss/formula/atp/WorkdayCalculator;->standardWeekend:Ljava/util/Set;

    invoke-interface {v0, p4, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/util/Set;

    .line 8
    invoke-static {p1, p2}, Lorg/apache/poi/ss/usermodel/DateUtil;->getJavaDate(D)Ljava/util/Date;

    move-result-object p1

    if-gez p3, :cond_0

    const/4 p2, -0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x1

    .line 9
    :goto_0
    invoke-static {}, Lorg/apache/poi/util/LocaleUtil;->getLocaleCalendar()Ljava/util/Calendar;

    move-result-object v0

    .line 10
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 11
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/poi/ss/usermodel/DateUtil;->getExcelDate(Ljava/util/Date;)D

    move-result-wide v1

    :cond_1
    :goto_1
    if-eqz p3, :cond_2

    const/4 p1, 0x6

    .line 12
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->add(II)V

    int-to-double v3, p2

    add-double/2addr v1, v3

    .line 13
    invoke-direct {p0, v0, p4}, Lorg/apache/poi/ss/formula/atp/WorkdayCalculator;->isWeekend(Ljava/util/Calendar;Ljava/util/Set;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0, v1, v2, p5}, Lorg/apache/poi/ss/formula/atp/WorkdayCalculator;->isHoliday(D[D)Z

    move-result p1

    if-nez p1, :cond_1

    sub-int/2addr p3, p2

    goto :goto_1

    .line 14
    :cond_2
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method public calculateWorkdays(DI[D)Ljava/util/Date;
    .locals 6

    const/4 v4, 0x1

    move-object v0, p0

    move-wide v1, p1

    move v3, p3

    move-object v5, p4

    .line 6
    invoke-virtual/range {v0 .. v5}, Lorg/apache/poi/ss/formula/atp/WorkdayCalculator;->calculateWorkdays(DII[D)Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method public getValidWeekendTypes()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    sget-object p0, Lorg/apache/poi/ss/formula/atp/WorkdayCalculator;->weekendTypeMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public isHoliday(D[D)Z
    .locals 6

    array-length p0, p3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p0, :cond_1

    aget-wide v2, p3, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    invoke-static {p1, p2}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public isInARange(DDD)Z
    .locals 0

    cmpl-double p0, p5, p1

    if-ltz p0, :cond_0

    cmpg-double p0, p5, p3

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isWeekend(D)Z
    .locals 1

    .line 1
    invoke-static {}, Lorg/apache/poi/util/LocaleUtil;->getLocaleCalendar()Ljava/util/Calendar;

    move-result-object v0

    .line 2
    invoke-static {p1, p2}, Lorg/apache/poi/ss/usermodel/DateUtil;->getJavaDate(D)Ljava/util/Date;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 3
    invoke-direct {p0, v0}, Lorg/apache/poi/ss/formula/atp/WorkdayCalculator;->isWeekend(Ljava/util/Calendar;)Z

    move-result p0

    return p0
.end method

.method public pastDaysOfWeek(DDI)I
    .locals 5

    invoke-static {p1, p2, p3, p4}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int p0, v0

    invoke-static {p3, p4, p1, p2}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    const/4 v1, 0x0

    :goto_0
    if-gt p0, v0, :cond_1

    invoke-static {}, Lorg/apache/poi/util/LocaleUtil;->getLocaleCalendar()Ljava/util/Calendar;

    move-result-object v2

    int-to-double v3, p0

    invoke-static {v3, v4}, Lorg/apache/poi/ss/usermodel/DateUtil;->getJavaDate(D)Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 v3, 0x7

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v2, p5, :cond_0

    add-int/lit8 v1, v1, 0x1

    :cond_0
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    cmpg-double p0, p1, p3

    if-gtz p0, :cond_2

    goto :goto_1

    :cond_2
    neg-int v1, v1

    :goto_1
    return v1
.end method
