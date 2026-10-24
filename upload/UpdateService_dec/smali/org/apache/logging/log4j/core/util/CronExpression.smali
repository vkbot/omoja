.class public final Lorg/apache/logging/log4j/core/util/CronExpression;
.super Ljava/lang/Object;
.source "CronExpression.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/logging/log4j/core/util/CronExpression$ValueSet;
    }
.end annotation


# static fields
.field protected static final ALL_SPEC:Ljava/lang/Integer;

.field protected static final ALL_SPEC_INT:I = 0x63

.field protected static final DAY_OF_MONTH:I = 0x3

.field protected static final DAY_OF_WEEK:I = 0x5

.field protected static final HOUR:I = 0x2

.field public static final MAX_YEAR:I

.field protected static final MINUTE:I = 0x1

.field public static final MIN_CAL:Ljava/util/Calendar;

.field public static final MIN_DATE:Ljava/util/Date;

.field protected static final MONTH:I = 0x4

.field protected static final NO_SPEC:Ljava/lang/Integer;

.field protected static final NO_SPEC_INT:I = 0x62

.field protected static final SECOND:I = 0x0

.field protected static final YEAR:I = 0x6

.field protected static final dayMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected static final monthMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final cronExpression:Ljava/lang/String;

.field protected transient daysOfMonth:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected transient daysOfWeek:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected transient expressionParsed:Z

.field protected transient hours:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected transient lastdayOfMonth:Z

.field protected transient lastdayOfWeek:Z

.field protected transient lastdayOffset:I

.field protected transient minutes:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected transient months:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected transient nearestWeekday:Z

.field protected transient nthdayOfWeek:I

.field protected transient seconds:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private timeZone:Ljava/util/TimeZone;

.field protected transient years:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 208
    const/16 v0, 0x63

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lorg/apache/logging/log4j/core/util/CronExpression;->ALL_SPEC:Ljava/lang/Integer;

    .line 209
    const/16 v0, 0x62

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lorg/apache/logging/log4j/core/util/CronExpression;->NO_SPEC:Ljava/lang/Integer;

    .line 211
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lorg/apache/logging/log4j/core/util/CronExpression;->monthMap:Ljava/util/Map;

    .line 212
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x3c

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lorg/apache/logging/log4j/core/util/CronExpression;->dayMap:Ljava/util/Map;

    .line 215
    sget-object v0, Lorg/apache/logging/log4j/core/util/CronExpression;->monthMap:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "JAN"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    sget-object v0, Lorg/apache/logging/log4j/core/util/CronExpression;->monthMap:Ljava/util/Map;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "FEB"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    sget-object v0, Lorg/apache/logging/log4j/core/util/CronExpression;->monthMap:Ljava/util/Map;

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "MAR"

    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    sget-object v0, Lorg/apache/logging/log4j/core/util/CronExpression;->monthMap:Ljava/util/Map;

    const/4 v5, 0x3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "APR"

    invoke-interface {v0, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    sget-object v0, Lorg/apache/logging/log4j/core/util/CronExpression;->monthMap:Ljava/util/Map;

    const/4 v6, 0x4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "MAY"

    invoke-interface {v0, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    sget-object v0, Lorg/apache/logging/log4j/core/util/CronExpression;->monthMap:Ljava/util/Map;

    const/4 v7, 0x5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, "JUN"

    invoke-interface {v0, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    sget-object v0, Lorg/apache/logging/log4j/core/util/CronExpression;->monthMap:Ljava/util/Map;

    const/4 v8, 0x6

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v9, "JUL"

    invoke-interface {v0, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    sget-object v0, Lorg/apache/logging/log4j/core/util/CronExpression;->monthMap:Ljava/util/Map;

    const/4 v9, 0x7

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const-string v10, "AUG"

    invoke-interface {v0, v10, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    sget-object v0, Lorg/apache/logging/log4j/core/util/CronExpression;->monthMap:Ljava/util/Map;

    const/16 v10, 0x8

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const-string v11, "SEP"

    invoke-interface {v0, v11, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    sget-object v0, Lorg/apache/logging/log4j/core/util/CronExpression;->monthMap:Ljava/util/Map;

    const/16 v10, 0x9

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const-string v11, "OCT"

    invoke-interface {v0, v11, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    sget-object v0, Lorg/apache/logging/log4j/core/util/CronExpression;->monthMap:Ljava/util/Map;

    const/16 v10, 0xa

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const-string v11, "NOV"

    invoke-interface {v0, v11, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    sget-object v0, Lorg/apache/logging/log4j/core/util/CronExpression;->monthMap:Ljava/util/Map;

    const/16 v10, 0xb

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const-string v11, "DEC"

    invoke-interface {v0, v11, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    sget-object v0, Lorg/apache/logging/log4j/core/util/CronExpression;->dayMap:Ljava/util/Map;

    const-string v10, "SUN"

    invoke-interface {v0, v10, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    sget-object v0, Lorg/apache/logging/log4j/core/util/CronExpression;->dayMap:Ljava/util/Map;

    const-string v3, "MON"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    sget-object v0, Lorg/apache/logging/log4j/core/util/CronExpression;->dayMap:Ljava/util/Map;

    const-string v3, "TUE"

    invoke-interface {v0, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    sget-object v0, Lorg/apache/logging/log4j/core/util/CronExpression;->dayMap:Ljava/util/Map;

    const-string v3, "WED"

    invoke-interface {v0, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    sget-object v0, Lorg/apache/logging/log4j/core/util/CronExpression;->dayMap:Ljava/util/Map;

    const-string v3, "THU"

    invoke-interface {v0, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    sget-object v0, Lorg/apache/logging/log4j/core/util/CronExpression;->dayMap:Ljava/util/Map;

    const-string v3, "FRI"

    invoke-interface {v0, v3, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    sget-object v0, Lorg/apache/logging/log4j/core/util/CronExpression;->dayMap:Ljava/util/Map;

    const-string v3, "SAT"

    invoke-interface {v0, v3, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x64

    sput v0, Lorg/apache/logging/log4j/core/util/CronExpression;->MAX_YEAR:I

    .line 255
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    sput-object v0, Lorg/apache/logging/log4j/core/util/CronExpression;->MIN_CAL:Ljava/util/Calendar;

    .line 257
    const/16 v3, 0x7b2

    invoke-virtual {v0, v3, v1, v2}, Ljava/util/Calendar;->set(III)V

    .line 259
    sget-object v0, Lorg/apache/logging/log4j/core/util/CronExpression;->MIN_CAL:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    sput-object v0, Lorg/apache/logging/log4j/core/util/CronExpression;->MIN_DATE:Ljava/util/Date;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "cronExpression"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "cronExpression"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 270
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 238
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/logging/log4j/core/util/CronExpression;->timeZone:Ljava/util/TimeZone;

    .line 247
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/logging/log4j/core/util/CronExpression;->lastdayOfWeek:Z

    .line 248
    iput v0, p0, Lorg/apache/logging/log4j/core/util/CronExpression;->nthdayOfWeek:I

    .line 249
    iput-boolean v0, p0, Lorg/apache/logging/log4j/core/util/CronExpression;->lastdayOfMonth:Z

    .line 250
    iput-boolean v0, p0, Lorg/apache/logging/log4j/core/util/CronExpression;->nearestWeekday:Z

    .line 251
    iput v0, p0, Lorg/apache/logging/log4j/core/util/CronExpression;->lastdayOffset:I

    .line 252
    iput-boolean v0, p0, Lorg/apache/logging/log4j/core/util/CronExpression;->expressionParsed:Z

    .line 271
    if-eqz p1, :cond_0

    .line 275
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/logging/log4j/core/util/CronExpression;->cronExpression:Ljava/lang/String;

    .line 277
    invoke-virtual {p0, v0}, Lorg/apache/logging/log4j/core/util/CronExpression;->buildExpression(Ljava/lang/String;)V

    .line 278
    return-void

    .line 272
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "cronExpression cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private findMinIncrement()J
    .locals 3

    .line 1620
    iget-object v0, p0, Lorg/apache/logging/log4j/core/util/CronExpression;->seconds:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->size()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 1621
    iget-object v0, p0, Lorg/apache/logging/log4j/core/util/CronExpression;->seconds:Ljava/util/TreeSet;

    invoke-direct {p0, v0}, Lorg/apache/logging/log4j/core/util/CronExpression;->minInSet(Ljava/util/TreeSet;)I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    return-wide v0

    .line 1622
    :cond_0
    iget-object v0, p0, Lorg/apache/logging/log4j/core/util/CronExpression;->seconds:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v2, 0x63

    if-ne v0, v2, :cond_1

    .line 1623
    const-wide/16 v0, 0x3e8

    return-wide v0

    .line 1625
    :cond_1
    iget-object v0, p0, Lorg/apache/logging/log4j/core/util/CronExpression;->minutes:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->size()I

    move-result v0

    if-eq v0, v1, :cond_2

    .line 1626
    iget-object v0, p0, Lorg/apache/logging/log4j/core/util/CronExpression;->minutes:Ljava/util/TreeSet;

    invoke-direct {p0, v0}, Lorg/apache/logging/log4j/core/util/CronExpression;->minInSet(Ljava/util/TreeSet;)I

    move-result v0

    const v1, 0xea60

    mul-int/2addr v0, v1

    int-to-long v0, v0

    return-wide v0

    .line 1627
    :cond_2
    iget-object v0, p0, Lorg/apache/logging/log4j/core/util/CronExpression;->minutes:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v2, :cond_3

    .line 1628
    const-wide/32 v0, 0xea60

    return-wide v0

    .line 1630
    :cond_3
    iget-object v0, p0, Lorg/apache/logging/log4j/core/util/CronExpression;->hours:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->size()I

    move-result v0

    if-eq v0, v1, :cond_4

    .line 1631
    iget-object v0, p0, Lorg/apache/logging/log4j/core/util/CronExpression;->hours:Ljava/util/TreeSet;

    invoke-direct {p0, v0}, Lorg/apache/logging/log4j/core/util/CronExpression;->minInSet(Ljava/util/TreeSet;)I

    move-result v0

    const v1, 0x36ee80

    mul-int/2addr v0, v1

    int-to-long v0, v0

    return-wide v0

    .line 1632
    :cond_4
    iget-object v0, p0, Lorg/apache/logging/log4j/core/util/CronExpression;->hours:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v2, :cond_5

    .line 1633
    const-wide/32 v0, 0x36ee80

    return-wide v0

    .line 1635
    :cond_5
    const-wide/32 v0, 0x5265c00

    return-wide v0
.end method

.method public static isValidExpression(Ljava/lang/String;)Z
    .locals 2
    .param p0, "cronExpression"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "cronExpression"
        }
    .end annotation

    .line 395
    :try_start_0
    new-instance v0, Lorg/apache/logging/log4j/core/util/CronExpression;

    invoke-direct {v0, p0}, Lorg/apache/logging/log4j/core/util/CronExpression;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 398
    nop

    .line 400
    const/4 v0, 0x1

    return v0

    .line 396
    :catch_0
    move-exception v0

    .line 397
    .local v0, "pe":Ljava/text/ParseException;
    const/4 v1, 0x0

    return v1
.end method

.method private minInSet(Ljava/util/TreeSet;)I
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "set"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeSet<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .line 1639
    .local p1, "set":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .line 1640
    .local v0, "previous":I
    const v1, 0x7fffffff

    .line 1641
    .local v1, "min":I
    const/4 v2, 0x1

    .line 1642
    .local v2, "first":Z
    invoke-virtual {p1}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 1643
    .local v4, "value":I
    if-eqz v2, :cond_0

    .line 1644
    move v0, v4

    .line 1645
    const/4 v2, 0x0

    .line 1646
    goto :goto_0

    .line 1648
    :cond_0
    sub-int v5, v4, v0

    .line 1649
    .local v5, "diff":I
    if-ge v5, v1, :cond_1

    .line 1650
    move v1, v5

    .line 1653
    .end local v4    # "value":I
    .end local v5    # "diff":I
    :cond_1
    goto :goto_0

    .line 1654
    :cond_2
    return v1
.end method

.method public static validateExpression(Ljava/lang/String;)V
    .locals 1
    .param p0, "cronExpression"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "cronExpression"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 405
    new-instance v0, Lorg/apache/logging/log4j/core/util/CronExpression;

    invoke-direct {v0, p0}, Lorg/apache/logging/log4j/core/util/CronExpression;-><init>(Ljava/lang/String;)V

    .line 406
    return-void
.end method


# virtual methods
.method protected addToSet(IIII)V
    .locals 11
    .param p1, "val"    # I
    .param p2, "end"    # I
    .param p3, "incr"    # I
    .param p4, "type"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x0,
            0x10
        }
        names = {
            "val",
            "end",
            "incr",
            "type"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 944
    invoke-virtual {p0, p4}, Lorg/apache/logging/log4j/core/util/CronExpression;->getSet(I)Ljava/util/TreeSet;

    move-result-object v0

    .line 946
    .local v0, "set":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    const/4 v1, 0x5

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/16 v4, 0x63

    const/4 v5, -0x1

    if-eqz p4, :cond_e

    const/4 v6, 0x1

    if-eq p4, v6, :cond_e

    const/4 v7, 0x2

    if-eq p4, v7, :cond_a

    const/16 v7, 0x62

    if-eq p4, v3, :cond_7

    if-eq p4, v2, :cond_3

    if-eq p4, v1, :cond_0

    goto :goto_0

    .line 975
    :cond_0
    if-eqz p1, :cond_1

    const/4 v6, 0x7

    if-gt p1, v6, :cond_1

    if-le p2, v6, :cond_10

    :cond_1
    if-eq p1, v4, :cond_10

    if-ne p1, v7, :cond_2

    goto :goto_0

    .line 977
    :cond_2
    new-instance v1, Ljava/text/ParseException;

    const-string v2, "Day-of-Week values must be between 1 and 7"

    invoke-direct {v1, v2, v5}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v1

    .line 969
    :cond_3
    if-lt p1, v6, :cond_4

    const/16 v6, 0xc

    if-gt p1, v6, :cond_4

    if-le p2, v6, :cond_5

    :cond_4
    if-ne p1, v4, :cond_6

    :cond_5
    goto :goto_0

    .line 970
    :cond_6
    new-instance v1, Ljava/text/ParseException;

    const-string v2, "Month values must be between 1 and 12"

    invoke-direct {v1, v2, v5}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v1

    .line 962
    :cond_7
    if-lt p1, v6, :cond_8

    const/16 v6, 0x1f

    if-gt p1, v6, :cond_8

    if-le p2, v6, :cond_10

    :cond_8
    if-eq p1, v4, :cond_10

    if-ne p1, v7, :cond_9

    goto :goto_0

    .line 964
    :cond_9
    new-instance v1, Ljava/text/ParseException;

    const-string v2, "Day of month values must be between 1 and 31"

    invoke-direct {v1, v2, v5}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v1

    .line 956
    :cond_a
    if-ltz p1, :cond_b

    const/16 v6, 0x17

    if-gt p1, v6, :cond_b

    if-le p2, v6, :cond_c

    :cond_b
    if-ne p1, v4, :cond_d

    :cond_c
    goto :goto_0

    .line 957
    :cond_d
    new-instance v1, Ljava/text/ParseException;

    const-string v2, "Hour values must be between 0 and 23"

    invoke-direct {v1, v2, v5}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v1

    .line 949
    :cond_e
    if-ltz p1, :cond_f

    const/16 v6, 0x3b

    if-gt p1, v6, :cond_f

    if-le p2, v6, :cond_10

    :cond_f
    if-ne p1, v4, :cond_27

    .line 985
    :cond_10
    :goto_0
    if-eqz p3, :cond_11

    if-ne p3, v5, :cond_13

    :cond_11
    if-eq p1, v4, :cond_13

    .line 986
    if-eq p1, v5, :cond_12

    .line 987
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 989
    :cond_12
    sget-object v1, Lorg/apache/logging/log4j/core/util/CronExpression;->NO_SPEC:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 992
    :goto_1
    return-void

    .line 995
    :cond_13
    move v6, p1

    .line 996
    .local v6, "startAt":I
    move v7, p2

    .line 998
    .local v7, "stopAt":I
    if-ne p1, v4, :cond_14

    if-gtz p3, :cond_14

    .line 999
    const/4 p3, 0x1

    .line 1000
    sget-object v8, Lorg/apache/logging/log4j/core/util/CronExpression;->ALL_SPEC:Ljava/lang/Integer;

    invoke-virtual {v0, v8}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 1003
    :cond_14
    packed-switch p4, :pswitch_data_0

    goto :goto_2

    .line 1046
    :pswitch_0
    if-ne v7, v5, :cond_15

    .line 1047
    sget v7, Lorg/apache/logging/log4j/core/util/CronExpression;->MAX_YEAR:I

    .line 1049
    :cond_15
    if-eq v6, v5, :cond_16

    if-ne v6, v4, :cond_21

    .line 1050
    :cond_16
    const/16 v6, 0x7b2

    goto :goto_2

    .line 1038
    :pswitch_1
    if-ne v7, v5, :cond_17

    .line 1039
    const/4 v7, 0x7

    .line 1041
    :cond_17
    if-eq v6, v5, :cond_18

    if-ne v6, v4, :cond_21

    .line 1042
    :cond_18
    const/4 v6, 0x1

    goto :goto_2

    .line 1030
    :pswitch_2
    if-ne v7, v5, :cond_19

    .line 1031
    const/16 v7, 0xc

    .line 1033
    :cond_19
    if-eq v6, v5, :cond_1a

    if-ne v6, v4, :cond_21

    .line 1034
    :cond_1a
    const/4 v6, 0x1

    goto :goto_2

    .line 1022
    :pswitch_3
    if-ne v7, v5, :cond_1b

    .line 1023
    const/16 v7, 0x1f

    .line 1025
    :cond_1b
    if-eq v6, v5, :cond_1c

    if-ne v6, v4, :cond_21

    .line 1026
    :cond_1c
    const/4 v6, 0x1

    goto :goto_2

    .line 1014
    :pswitch_4
    if-ne v7, v5, :cond_1d

    .line 1015
    const/16 v7, 0x17

    .line 1017
    :cond_1d
    if-eq v6, v5, :cond_1e

    if-ne v6, v4, :cond_21

    .line 1018
    :cond_1e
    const/4 v6, 0x0

    goto :goto_2

    .line 1006
    :pswitch_5
    if-ne v7, v5, :cond_1f

    .line 1007
    const/16 v7, 0x3b

    .line 1009
    :cond_1f
    if-eq v6, v5, :cond_20

    if-ne v6, v4, :cond_21

    .line 1010
    :cond_20
    const/4 v6, 0x0

    .line 1060
    :cond_21
    :goto_2
    const/4 v4, -0x1

    .line 1061
    .local v4, "max":I
    if-ge v7, v6, :cond_22

    .line 1062
    packed-switch p4, :pswitch_data_1

    .line 1084
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Unexpected type encountered"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1082
    :pswitch_6
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Start year must be less than stop year"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1076
    :pswitch_7
    const/4 v4, 0x7

    .line 1077
    goto :goto_3

    .line 1073
    :pswitch_8
    const/16 v4, 0xc

    .line 1074
    goto :goto_3

    .line 1079
    :pswitch_9
    const/16 v4, 0x1f

    .line 1080
    goto :goto_3

    .line 1070
    :pswitch_a
    const/16 v4, 0x18

    .line 1071
    goto :goto_3

    .line 1067
    :pswitch_b
    const/16 v4, 0x3c

    .line 1068
    goto :goto_3

    .line 1064
    :pswitch_c
    const/16 v4, 0x3c

    .line 1065
    nop

    .line 1086
    :goto_3
    add-int/2addr v7, v4

    .line 1089
    :cond_22
    move v8, v6

    .local v8, "i":I
    :goto_4
    if-gt v8, v7, :cond_26

    .line 1090
    if-ne v4, v5, :cond_23

    .line 1092
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 1095
    :cond_23
    rem-int v9, v8, v4

    .line 1098
    .local v9, "i2":I
    if-nez v9, :cond_25

    if-eq p4, v2, :cond_24

    if-eq p4, v1, :cond_24

    if-ne p4, v3, :cond_25

    .line 1099
    :cond_24
    move v9, v4

    .line 1102
    :cond_25
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 1089
    .end local v9    # "i2":I
    :goto_5
    add-int/2addr v8, p3

    goto :goto_4

    .line 1105
    .end local v8    # "i":I
    :cond_26
    return-void

    .line 950
    .end local v4    # "max":I
    .end local v6    # "startAt":I
    .end local v7    # "stopAt":I
    :cond_27
    new-instance v1, Ljava/text/ParseException;

    const-string v2, "Minute and Second values must be between 0 and 59"

    invoke-direct {v1, v2, v5}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch
.end method

.method protected buildExpression(Ljava/lang/String;)V
    .locals 10
    .param p1, "expression"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "expression"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 416
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/logging/log4j/core/util/CronExpression;->expressionParsed:Z

    .line 420
    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lorg/apache/logging/log4j/core/util/CronExpression;->seconds:Ljava/util/TreeSet;

    if-nez v2, :cond_0

    .line 421
    new-instance v2, Ljava/util/TreeSet;

    invoke-direct {v2}, Ljava/util/TreeSet;-><init>()V

    iput-object v2, p0, Lorg/apache/logging/log4j/core/util/CronExpression;->seconds:Ljava/util/TreeSet;

    .line 423
    :cond_0
    iget-object v2, p0, Lorg/apache/logging/log4j/core/util/CronExpression;->minutes:Ljava/util/TreeSet;

    if-nez v2, :cond_1

    .line 424
    new-instance v2, Ljava/util/TreeSet;

    invoke-direct {v2}, Ljava/util/TreeSet;-><init>()V

    iput-object v2, p0, Lorg/apache/logging/log4j/core/util/CronExpression;->minutes:Ljava/util/TreeSet;

    .line 426
    :cond_1
    iget-object v2, p0, Lorg/apache/logging/log4j/core/util/CronExpression;->hours:Ljava/util/TreeSet;

    if-nez v2, :cond_2

    .line 427
    new-instance v2, Ljava/util/TreeSet;

    invoke-direct {v2}, Ljava/util/TreeSet;-><init>()V

    iput-object v2, p0, Lorg/apache/logging/log4j/core/util/CronExpression;->hours:Ljava/util/TreeSet;

    .line 429
    :cond_2
    iget-object v2, p0, Lorg/apache/logging/log4j/core/util/CronExpression;->daysOfMonth:Ljava/util/TreeSet;

    if-nez v2, :cond_3

    .line 430
    new-instance v2, Ljava/util/TreeSet;

    invoke-direct {v2}, Ljava/util/TreeSet;-><init>()V

    iput-object v2, p0, Lorg/apache/logging/log4j/core/util/CronExpression;->daysOfMonth:Ljava/util/TreeSet;

    .line 432
    :cond_3
    iget-object v2, p0, Lorg/apache/logging/log4j/core/util/CronExpression;->months:Ljava/util/TreeSet;

    if-nez v2, :cond_4

    .line 433
    new-instance v2, Ljava/util/TreeSet;

    invoke-direct {v2}, Ljava/util/TreeSet;-><init>()V

    iput-object v2, p0, Lorg/apache/logging/log4j/core/util/CronExpression;->months:Ljava/util/TreeSet;

    .line 435
    :cond_4
    iget-object v2, p0, Lorg/apache/logging/log4j/core/util/CronExpression;->daysOfWeek:Ljava/util/TreeSet;

    if-nez v2, :cond_5

    .line 436
    new-instance v2, Ljava/util/TreeSet;

    invoke-direct {v2}, Ljava/util/TreeSet;-><init>()V

    iput-object v2, p0, Lorg/apache/logging/log4j/core/util/CronExpression;->daysOfWeek:Ljava/util/TreeSet;

    .line 438
    :cond_5
    iget-object v2, p0, Lorg/apache/logging/log4j/core/util/CronExpression;->years:Ljava/util/TreeSet;

    if-nez v2, :cond_6

    .line 439
    new-instance v2, Ljava/util/TreeSet;

    invoke-direct {v2}, Ljava/util/TreeSet;-><init>()V

    iput-object v2, p0, Lorg/apache/logging/log4j/core/util/CronExpression;->years:Ljava/util/TreeSet;

    .line 442
    :cond_6
    const/4 v2, 0x0

    .line 444
    .local v2, "exprOn":I
    new-instance v3, Ljava/util/StringTokenizer;

    const-string v4, " \t"

    invoke-direct {v3, p1, v4, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 447
    .local v3, "exprsTok":Ljava/util/StringTokenizer;
    :goto_0
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v4

    const/4 v5, 0x3

    const/4 v6, 0x6

    const/4 v7, 0x5

    if-eqz v4, :cond_e

    if-gt v2, v6, :cond_e

    .line 448
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 451
    .local v4, "expr":Ljava/lang/String;
    const/16 v6, 0x4c

    const-string v8, ","

    const/4 v9, -0x1

    if-ne v2, v5, :cond_8

    :try_start_1
    invoke-virtual {v4, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-eq v5, v9, :cond_8

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-le v5, v0, :cond_8

    invoke-virtual {v4, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_7

    goto :goto_1

    .line 452
    :cond_7
    new-instance v0, Ljava/text/ParseException;

    const-string v5, "Support for specifying \'L\' and \'LW\' with other days of the month is not implemented"

    invoke-direct {v0, v5, v9}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    .end local p0    # "this":Lorg/apache/logging/log4j/core/util/CronExpression;
    .end local p1    # "expression":Ljava/lang/String;
    throw v0

    .line 455
    .restart local p0    # "this":Lorg/apache/logging/log4j/core/util/CronExpression;
    .restart local p1    # "expression":Ljava/lang/String;
    :cond_8
    :goto_1
    if-ne v2, v7, :cond_a

    invoke-virtual {v4, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-eq v5, v9, :cond_a

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-le v5, v0, :cond_a

    invoke-virtual {v4, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_9

    goto :goto_2

    .line 456
    :cond_9
    new-instance v0, Ljava/text/ParseException;

    const-string v5, "Support for specifying \'L\' with other days of the week is not implemented"

    invoke-direct {v0, v5, v9}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    .end local p0    # "this":Lorg/apache/logging/log4j/core/util/CronExpression;
    .end local p1    # "expression":Ljava/lang/String;
    throw v0

    .line 458
    .restart local p0    # "this":Lorg/apache/logging/log4j/core/util/CronExpression;
    .restart local p1    # "expression":Ljava/lang/String;
    :cond_a
    :goto_2
    if-ne v2, v7, :cond_c

    const/16 v5, 0x23

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-eq v6, v9, :cond_c

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    add-int/2addr v6, v0

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    if-ne v5, v9, :cond_b

    goto :goto_3

    .line 459
    :cond_b
    new-instance v0, Ljava/text/ParseException;

    const-string v5, "Support for specifying multiple \"nth\" days is not implemented."

    invoke-direct {v0, v5, v9}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    .end local p0    # "this":Lorg/apache/logging/log4j/core/util/CronExpression;
    .end local p1    # "expression":Ljava/lang/String;
    throw v0

    .line 462
    .restart local p0    # "this":Lorg/apache/logging/log4j/core/util/CronExpression;
    .restart local p1    # "expression":Ljava/lang/String;
    :cond_c
    :goto_3
    new-instance v5, Ljava/util/StringTokenizer;

    invoke-direct {v5, v4, v8}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    .local v5, "vTok":Ljava/util/StringTokenizer;
    :goto_4
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v6

    if-eqz v6, :cond_d

    .line 464
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v6

    .line 465
    .local v6, "v":Ljava/lang/String;
    invoke-virtual {p0, v1, v6, v2}, Lorg/apache/logging/log4j/core/util/CronExpression;->storeExpressionVals(ILjava/lang/String;I)I

    .line 466
    nop

    .end local v6    # "v":Ljava/lang/String;
    goto :goto_4

    .line 468
    :cond_d
    nop

    .end local v4    # "expr":Ljava/lang/String;
    .end local v5    # "vTok":Ljava/util/StringTokenizer;
    add-int/lit8 v2, v2, 0x1

    .line 469
    goto/16 :goto_0

    .line 471
    :cond_e
    if-le v2, v7, :cond_14

    .line 476
    if-gt v2, v6, :cond_f

    .line 477
    const-string v4, "*"

    invoke-virtual {p0, v1, v4, v6}, Lorg/apache/logging/log4j/core/util/CronExpression;->storeExpressionVals(ILjava/lang/String;I)I

    .line 480
    :cond_f
    invoke-virtual {p0, v7}, Lorg/apache/logging/log4j/core/util/CronExpression;->getSet(I)Ljava/util/TreeSet;

    move-result-object v4

    .line 481
    .local v4, "dow":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    invoke-virtual {p0, v5}, Lorg/apache/logging/log4j/core/util/CronExpression;->getSet(I)Ljava/util/TreeSet;

    move-result-object v5

    .line 484
    .local v5, "dom":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    sget-object v6, Lorg/apache/logging/log4j/core/util/CronExpression;->NO_SPEC:Ljava/lang/Integer;

    invoke-virtual {v5, v6}, Ljava/util/TreeSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_10

    move v6, v0

    goto :goto_5

    :cond_10
    move v6, v1

    .line 485
    .local v6, "dayOfMSpec":Z
    :goto_5
    sget-object v7, Lorg/apache/logging/log4j/core/util/CronExpression;->NO_SPEC:Ljava/lang/Integer;

    invoke-virtual {v4, v7}, Ljava/util/TreeSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    xor-int/2addr v0, v7

    .line 487
    .local v0, "dayOfWSpec":Z
    if-eqz v6, :cond_11

    if-eqz v0, :cond_12

    .line 488
    :cond_11
    if-eqz v0, :cond_13

    if-nez v6, :cond_13

    .line 498
    .end local v0    # "dayOfWSpec":Z
    .end local v2    # "exprOn":I
    .end local v3    # "exprsTok":Ljava/util/StringTokenizer;
    .end local v4    # "dow":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    .end local v5    # "dom":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    .end local v6    # "dayOfMSpec":Z
    :cond_12
    nop

    .line 499
    return-void

    .line 489
    .restart local v0    # "dayOfWSpec":Z
    .restart local v2    # "exprOn":I
    .restart local v3    # "exprsTok":Ljava/util/StringTokenizer;
    .restart local v4    # "dow":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    .restart local v5    # "dom":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    .restart local v6    # "dayOfMSpec":Z
    :cond_13
    new-instance v7, Ljava/text/ParseException;

    const-string v8, "Support for specifying both a day-of-week AND a day-of-month parameter is not implemented."

    invoke-direct {v7, v8, v1}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    .end local p0    # "this":Lorg/apache/logging/log4j/core/util/CronExpression;
    .end local p1    # "expression":Ljava/lang/String;
    throw v7

    .line 472
    .end local v0    # "dayOfWSpec":Z
    .end local v4    # "dow":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    .end local v5    # "dom":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    .end local v6    # "dayOfMSpec":Z
    .restart local p0    # "this":Lorg/apache/logging/log4j/core/util/CronExpression;
    .restart local p1    # "expression":Ljava/lang/String;
    :cond_14
    new-instance v0, Ljava/text/ParseException;

    const-string v4, "Unexpected end of expression."

    .line 473
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    invoke-direct {v0, v4, v5}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    .end local p0    # "this":Lorg/apache/logging/log4j/core/util/CronExpression;
    .end local p1    # "expression":Ljava/lang/String;
    throw v0
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 495
    .end local v2    # "exprOn":I
    .end local v3    # "exprsTok":Ljava/util/StringTokenizer;
    .restart local p0    # "this":Lorg/apache/logging/log4j/core/util/CronExpression;
    .restart local p1    # "expression":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 496
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/text/ParseException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Illegal cron expression format ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 497
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v2

    .line 493
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 494
    .local v0, "pe":Ljava/text/ParseException;
    throw v0
.end method

.method protected checkNext(ILjava/lang/String;II)I
    .locals 9
    .param p1, "pos"    # I
    .param p2, "s"    # Ljava/lang/String;
    .param p3, "val"    # I
    .param p4, "type"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "pos",
            "s",
            "val",
            "type"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 702
    const/4 v0, -0x1

    .line 703
    .local v0, "end":I
    move v1, p1

    .line 705
    .local v1, "i":I
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, -0x1

    if-lt v1, v2, :cond_0

    .line 706
    invoke-virtual {p0, p3, v0, v3, p4}, Lorg/apache/logging/log4j/core/util/CronExpression;->addToSet(IIII)V

    .line 707
    return v1

    .line 710
    :cond_0
    invoke-virtual {p2, p1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 712
    .local v2, "c":C
    const/16 v4, 0x4c

    const-string v5, ")"

    const/4 v6, 0x5

    const/4 v7, 0x1

    if-ne v2, v4, :cond_3

    .line 713
    if-ne p4, v6, :cond_2

    .line 714
    if-lt p3, v7, :cond_1

    const/4 v4, 0x7

    if-gt p3, v4, :cond_1

    .line 717
    iput-boolean v7, p0, Lorg/apache/logging/log4j/core/util/CronExpression;->lastdayOfWeek:Z

    .line 721
    invoke-virtual {p0, p4}, Lorg/apache/logging/log4j/core/util/CronExpression;->getSet(I)Ljava/util/TreeSet;

    move-result-object v3

    .line 722
    .local v3, "set":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 723
    add-int/2addr v1, v7

    .line 724
    return v1

    .line 715
    .end local v3    # "set":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    :cond_1
    new-instance v4, Ljava/text/ParseException;

    const-string v5, "Day-of-Week values must be between 1 and 7"

    invoke-direct {v4, v5, v3}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v4

    .line 719
    :cond_2
    new-instance v3, Ljava/text/ParseException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\'L\' option is not valid here. (pos="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v3

    .line 727
    :cond_3
    const/16 v3, 0x57

    if-ne v2, v3, :cond_6

    .line 728
    const/4 v3, 0x3

    if-ne p4, v3, :cond_5

    .line 729
    iput-boolean v7, p0, Lorg/apache/logging/log4j/core/util/CronExpression;->nearestWeekday:Z

    .line 733
    const/16 v3, 0x1f

    if-gt p3, v3, :cond_4

    .line 736
    invoke-virtual {p0, p4}, Lorg/apache/logging/log4j/core/util/CronExpression;->getSet(I)Ljava/util/TreeSet;

    move-result-object v3

    .line 737
    .restart local v3    # "set":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 738
    add-int/2addr v1, v7

    .line 739
    return v1

    .line 734
    .end local v3    # "set":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    :cond_4
    new-instance v3, Ljava/text/ParseException;

    const-string v4, "The \'W\' option does not make sense with values larger than 31 (max number of days in a month)"

    invoke-direct {v3, v4, v1}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v3

    .line 731
    :cond_5
    new-instance v3, Ljava/text/ParseException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\'W\' option is not valid here. (pos="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v3

    .line 742
    :cond_6
    const/16 v3, 0x23

    if-eq v2, v3, :cond_10

    const/16 v3, 0x2d

    const/16 v4, 0x2f

    const/16 v5, 0x39

    const/16 v6, 0x30

    if-eq v2, v3, :cond_a

    if-eq v2, v4, :cond_7

    .line 824
    const/4 v3, 0x0

    invoke-virtual {p0, p3, v0, v3, p4}, Lorg/apache/logging/log4j/core/util/CronExpression;->addToSet(IIII)V

    .line 825
    add-int/2addr v1, v7

    .line 826
    return v1

    .line 802
    :cond_7
    add-int/2addr v1, v7

    .line 803
    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 804
    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 805
    .local v3, "v2":I
    add-int/2addr v1, v7

    .line 806
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v1, v4, :cond_8

    .line 807
    invoke-virtual {p0, p3, v0, v3, p4}, Lorg/apache/logging/log4j/core/util/CronExpression;->addToSet(IIII)V

    .line 808
    return v1

    .line 810
    :cond_8
    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 811
    if-lt v2, v6, :cond_9

    if-gt v2, v5, :cond_9

    .line 812
    invoke-virtual {p0, v3, p2, v1}, Lorg/apache/logging/log4j/core/util/CronExpression;->getValue(ILjava/lang/String;I)Lorg/apache/logging/log4j/core/util/CronExpression$ValueSet;

    move-result-object v4

    .line 813
    .local v4, "vs":Lorg/apache/logging/log4j/core/util/CronExpression$ValueSet;
    iget v5, v4, Lorg/apache/logging/log4j/core/util/CronExpression$ValueSet;->value:I

    .line 814
    .local v5, "v3":I
    invoke-virtual {p0, p3, v0, v5, p4}, Lorg/apache/logging/log4j/core/util/CronExpression;->addToSet(IIII)V

    .line 815
    iget v1, v4, Lorg/apache/logging/log4j/core/util/CronExpression$ValueSet;->pos:I

    .line 816
    return v1

    .line 818
    .end local v4    # "vs":Lorg/apache/logging/log4j/core/util/CronExpression$ValueSet;
    .end local v5    # "v3":I
    :cond_9
    new-instance v4, Ljava/text/ParseException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unexpected character \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v6, "\' after \'/\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v1}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v4

    .line 763
    .end local v3    # "v2":I
    :cond_a
    add-int/2addr v1, v7

    .line 764
    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 765
    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 766
    .local v3, "v":I
    move v0, v3

    .line 767
    add-int/2addr v1, v7

    .line 768
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v8

    if-lt v1, v8, :cond_b

    .line 769
    invoke-virtual {p0, p3, v0, v7, p4}, Lorg/apache/logging/log4j/core/util/CronExpression;->addToSet(IIII)V

    .line 770
    return v1

    .line 772
    :cond_b
    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 773
    if-lt v2, v6, :cond_c

    if-gt v2, v5, :cond_c

    .line 774
    invoke-virtual {p0, v3, p2, v1}, Lorg/apache/logging/log4j/core/util/CronExpression;->getValue(ILjava/lang/String;I)Lorg/apache/logging/log4j/core/util/CronExpression$ValueSet;

    move-result-object v8

    .line 775
    .local v8, "vs":Lorg/apache/logging/log4j/core/util/CronExpression$ValueSet;
    iget v0, v8, Lorg/apache/logging/log4j/core/util/CronExpression$ValueSet;->value:I

    .line 776
    iget v1, v8, Lorg/apache/logging/log4j/core/util/CronExpression$ValueSet;->pos:I

    .line 778
    .end local v8    # "vs":Lorg/apache/logging/log4j/core/util/CronExpression$ValueSet;
    :cond_c
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v1, v8, :cond_f

    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v8

    move v2, v8

    if-ne v8, v4, :cond_f

    .line 779
    add-int/2addr v1, v7

    .line 780
    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 781
    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 782
    .local v4, "v2":I
    add-int/2addr v1, v7

    .line 783
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v7

    if-lt v1, v7, :cond_d

    .line 784
    invoke-virtual {p0, p3, v0, v4, p4}, Lorg/apache/logging/log4j/core/util/CronExpression;->addToSet(IIII)V

    .line 785
    return v1

    .line 787
    :cond_d
    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 788
    if-lt v2, v6, :cond_e

    if-gt v2, v5, :cond_e

    .line 789
    invoke-virtual {p0, v4, p2, v1}, Lorg/apache/logging/log4j/core/util/CronExpression;->getValue(ILjava/lang/String;I)Lorg/apache/logging/log4j/core/util/CronExpression$ValueSet;

    move-result-object v5

    .line 790
    .local v5, "vs":Lorg/apache/logging/log4j/core/util/CronExpression$ValueSet;
    iget v6, v5, Lorg/apache/logging/log4j/core/util/CronExpression$ValueSet;->value:I

    .line 791
    .local v6, "v3":I
    invoke-virtual {p0, p3, v0, v6, p4}, Lorg/apache/logging/log4j/core/util/CronExpression;->addToSet(IIII)V

    .line 792
    iget v1, v5, Lorg/apache/logging/log4j/core/util/CronExpression$ValueSet;->pos:I

    .line 793
    .end local v5    # "vs":Lorg/apache/logging/log4j/core/util/CronExpression$ValueSet;
    .end local v6    # "v3":I
    goto :goto_0

    .line 794
    :cond_e
    invoke-virtual {p0, p3, v0, v4, p4}, Lorg/apache/logging/log4j/core/util/CronExpression;->addToSet(IIII)V

    .line 796
    :goto_0
    return v1

    .line 798
    .end local v4    # "v2":I
    :cond_f
    invoke-virtual {p0, p3, v0, v7, p4}, Lorg/apache/logging/log4j/core/util/CronExpression;->addToSet(IIII)V

    .line 799
    return v1

    .line 744
    .end local v3    # "v":I
    :cond_10
    if-ne p4, v6, :cond_12

    .line 747
    add-int/2addr v1, v7

    .line 749
    :try_start_0
    invoke-virtual {p2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/logging/log4j/core/util/Integers;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lorg/apache/logging/log4j/core/util/CronExpression;->nthdayOfWeek:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 750
    if-lt v3, v7, :cond_11

    if-gt v3, v6, :cond_11

    .line 757
    nop

    .line 758
    invoke-virtual {p0, p4}, Lorg/apache/logging/log4j/core/util/CronExpression;->getSet(I)Ljava/util/TreeSet;

    move-result-object v3

    .line 759
    .local v3, "set":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 760
    add-int/2addr v1, v7

    .line 761
    return v1

    .line 751
    .end local v3    # "set":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    :cond_11
    :try_start_1
    new-instance v3, Ljava/lang/Exception;

    invoke-direct {v3}, Ljava/lang/Exception;-><init>()V

    .end local v0    # "end":I
    .end local v1    # "i":I
    .end local v2    # "c":C
    .end local p0    # "this":Lorg/apache/logging/log4j/core/util/CronExpression;
    .end local p1    # "pos":I
    .end local p2    # "s":Ljava/lang/String;
    .end local p3    # "val":I
    .end local p4    # "type":I
    throw v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 753
    .restart local v0    # "end":I
    .restart local v1    # "i":I
    .restart local v2    # "c":C
    .restart local p0    # "this":Lorg/apache/logging/log4j/core/util/CronExpression;
    .restart local p1    # "pos":I
    .restart local p2    # "s":Ljava/lang/String;
    .restart local p3    # "val":I
    .restart local p4    # "type":I
    :catch_0
    move-exception v3

    .line 754
    .local v3, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/text/ParseException;

    const-string v5, "A numeric value between 1 and 5 must follow the \'#\' option"

    invoke-direct {v4, v5, v1}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v4

    .line 745
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_12
    new-instance v3, Ljava/text/ParseException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\'#\' option is not valid here. (pos="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v3
.end method

.method protected findNextWhiteSpace(ILjava/lang/String;)I
    .locals 2
    .param p1, "i"    # I
    .param p2, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10
        }
        names = {
            "i",
            "s"
        }
    .end annotation

    .line 934
    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p1, v0, :cond_1

    invoke-virtual {p2, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    invoke-virtual {p2, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 938
    :cond_1
    return p1
.end method

.method public getCronExpression()Ljava/lang/String;
    .locals 1

    .line 830
    iget-object v0, p0, Lorg/apache/logging/log4j/core/util/CronExpression;->cronExpression:Ljava/lang/String;

    return-object v0
.end method

.method protected getDayOfWeekNumber(Ljava/lang/String;)I
    .locals 2
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "s"
        }
    .end annotation

    .line 1163
    sget-object v0, Lorg/apache/logging/log4j/core/util/CronExpression;->dayMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1165
    .local v0, "integer":Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 1166
    const/4 v1, -0x1

    return v1

    .line 1169
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1
.end method

.method protected getExpressionSetSummary(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "list"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 901
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    sget-object v0, Lorg/apache/logging/log4j/core/util/CronExpression;->NO_SPEC:Ljava/lang/Integer;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 902
    const-string v0, "?"

    return-object v0

    .line 904
    :cond_0
    sget-object v0, Lorg/apache/logging/log4j/core/util/CronExpression;->ALL_SPEC:Ljava/lang/Integer;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 905
    const-string v0, "*"

    return-object v0

    .line 908
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 910
    .local v0, "buf":Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 911
    .local v1, "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    const/4 v2, 0x1

    .line 912
    .local v2, "first":Z
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 913
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 914
    .local v3, "iVal":Ljava/lang/Integer;
    invoke-virtual {v3}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v4

    .line 915
    .local v4, "val":Ljava/lang/String;
    if-nez v2, :cond_2

    .line 916
    const-string v5, ","

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 918
    :cond_2
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 919
    const/4 v2, 0x0

    .line 920
    .end local v3    # "iVal":Ljava/lang/Integer;
    .end local v4    # "val":Ljava/lang/String;
    goto :goto_0

    .line 922
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method protected getExpressionSetSummary(Ljava/util/Set;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "set"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 875
    .local p1, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    sget-object v0, Lorg/apache/logging/log4j/core/util/CronExpression;->NO_SPEC:Ljava/lang/Integer;

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 876
    const-string v0, "?"

    return-object v0

    .line 878
    :cond_0
    sget-object v0, Lorg/apache/logging/log4j/core/util/CronExpression;->ALL_SPEC:Ljava/lang/Integer;

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 879
    const-string v0, "*"

    return-object v0

    .line 882
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 884
    .local v0, "buf":Ljava/lang/StringBuilder;
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 885
    .local v1, "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    const/4 v2, 0x1

    .line 886
    .local v2, "first":Z
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 887
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 888
    .local v3, "iVal":Ljava/lang/Integer;
    invoke-virtual {v3}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v4

    .line 889
    .local v4, "val":Ljava/lang/String;
    if-nez v2, :cond_2

    .line 890
    const-string v5, ","

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 892
    :cond_2
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 893
    const/4 v2, 0x0

    .line 894
    .end local v3    # "iVal":Ljava/lang/Integer;
    .end local v4    # "val":Ljava/lang/String;
    goto :goto_0

    .line 896
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public getExpressionSummary()Ljava/lang/String;
    .locals 3

    .line 834
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 836
    .local v0, "buf":Ljava/lang/StringBuilder;
    const-string v1, "seconds: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 837
    iget-object v1, p0, Lorg/apache/logging/log4j/core/util/CronExpression;->seconds:Ljava/util/TreeSet;

    invoke-virtual {p0, v1}, Lorg/apache/logging/log4j/core/util/CronExpression;->getExpressionSetSummary(Ljava/util/Set;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 838
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 839
    const-string v2, "minutes: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 840
    iget-object v2, p0, Lorg/apache/logging/log4j/core/util/CronExpression;->minutes:Ljava/util/TreeSet;

    invoke-virtual {p0, v2}, Lorg/apache/logging/log4j/core/util/CronExpression;->getExpressionSetSummary(Ljava/util/Set;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 841
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 842
    const-string v2, "hours: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 843
    iget-object v2, p0, Lorg/apache/logging/log4j/core/util/CronExpression;->hours:Ljava/util/TreeSet;

    invoke-virtual {p0, v2}, Lorg/apache/logging/log4j/core/util/CronExpression;->getExpressionSetSummary(Ljava/util/Set;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 844
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 845
    const-string v2, "daysOfMonth: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 846
    iget-object v2, p0, Lorg/apache/logging/log4j/core/util/CronExpression;->daysOfMonth:Ljava/util/TreeSet;

    invoke-virtual {p0, v2}, Lorg/apache/logging/log4j/core/util/CronExpression;->getExpressionSetSummary(Ljava/util/Set;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 847
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 848
    const-string v2, "months: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 849
    iget-object v2, p0, Lorg/apache/logging/log4j/core/util/CronExpression;->months:Ljava/util/TreeSet;

    invoke-virtual {p0, v2}, Lorg/apache/logging/log4j/core/util/CronExpression;->getExpressionSetSummary(Ljava/util/Set;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 850
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 851
    const-string v2, "daysOfWeek: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 852
    iget-object v2, p0, Lorg/apache/logging/log4j/core/util/CronExpression;->daysOfWeek:Ljava/util/TreeSet;

    invoke-virtual {p0, v2}, Lorg/apache/logging/log4j/core/util/CronExpression;->getExpressionSetSummary(Ljava/util/Set;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 853
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 854
    const-string v2, "lastdayOfWeek: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 855
    iget-boolean v2, p0, Lorg/apache/logging/log4j/core/util/CronExpression;->lastdayOfWeek:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 856
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 857
    const-string v2, "nearestWeekday: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 858
    iget-boolean v2, p0, Lorg/apache/logging/log4j/core/util/CronExpression;->nearestWeekday:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 859
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 860
    const-string v2, "NthDayOfWeek: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 861
    iget v2, p0, Lorg/apache/logging/log4j/core/util/CronExpression;->nthdayOfWeek:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 862
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 863
    const-string v2, "lastdayOfMonth: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 864
    iget-boolean v2, p0, Lorg/apache/logging/log4j/core/util/CronExpression;->lastdayOfMonth:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 865
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 866
    const-string v2, "years: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 867
    iget-object v2, p0, Lorg/apache/logging/log4j/core/util/CronExpression;->years:Ljava/util/TreeSet;

    invoke-virtual {p0, v2}, Lorg/apache/logging/log4j/core/util/CronExpression;->getExpressionSetSummary(Ljava/util/Set;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 868
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 870
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getFinalFireTime()Ljava/util/Date;
    .locals 1

    .line 1663
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getLastDayOfMonth(II)I
    .locals 3
    .param p1, "monthNum"    # I
    .param p2, "year"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "monthNum",
            "year"
        }
    .end annotation

    .line 1672
    const/16 v0, 0x1e

    const/16 v1, 0x1f

    packed-switch p1, :pswitch_data_0

    .line 1698
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal month number: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1696
    :pswitch_0
    return v1

    .line 1694
    :pswitch_1
    return v0

    .line 1692
    :pswitch_2
    return v1

    .line 1690
    :pswitch_3
    return v0

    .line 1688
    :pswitch_4
    return v1

    .line 1686
    :pswitch_5
    return v1

    .line 1684
    :pswitch_6
    return v0

    .line 1682
    :pswitch_7
    return v1

    .line 1680
    :pswitch_8
    return v0

    .line 1678
    :pswitch_9
    return v1

    .line 1676
    :pswitch_a
    invoke-virtual {p0, p2}, Lorg/apache/logging/log4j/core/util/CronExpression;->isLeapYear(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1d

    goto :goto_0

    :cond_0
    const/16 v0, 0x1c

    :goto_0
    return v0

    .line 1674
    :pswitch_b
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected getMonthNumber(Ljava/lang/String;)I
    .locals 2
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "s"
        }
    .end annotation

    .line 1153
    sget-object v0, Lorg/apache/logging/log4j/core/util/CronExpression;->monthMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1155
    .local v0, "integer":Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 1156
    const/4 v1, -0x1

    return v1

    .line 1159
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1
.end method

.method public getNextInvalidTimeAfter(Ljava/util/Date;)Ljava/util/Date;
    .locals 11
    .param p1, "date"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "date"
        }
    .end annotation

    .line 323
    const-wide/16 v0, 0x3e8

    .line 326
    .local v0, "difference":J
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/util/CronExpression;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v2

    .line 327
    .local v2, "adjustCal":Ljava/util/Calendar;
    invoke-virtual {v2, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 328
    const/16 v3, 0xe

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 329
    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    .line 338
    .local v3, "lastDate":Ljava/util/Date;
    :cond_0
    :goto_0
    const-wide/16 v4, 0x3e8

    cmp-long v6, v0, v4

    if-nez v6, :cond_2

    .line 339
    invoke-virtual {p0, v3}, Lorg/apache/logging/log4j/core/util/CronExpression;->getTimeAfter(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v6

    .line 340
    .local v6, "newDate":Ljava/util/Date;
    if-nez v6, :cond_1

    .line 341
    goto :goto_1

    .line 344
    :cond_1
    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v7

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v9

    sub-long v0, v7, v9

    .line 346
    cmp-long v4, v0, v4

    if-nez v4, :cond_0

    .line 347
    move-object v3, v6

    goto :goto_0

    .line 351
    .end local v6    # "newDate":Ljava/util/Date;
    :cond_2
    :goto_1
    new-instance v6, Ljava/util/Date;

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v7

    add-long/2addr v7, v4

    invoke-direct {v6, v7, v8}, Ljava/util/Date;-><init>(J)V

    return-object v6
.end method

.method public getNextValidTimeAfter(Ljava/util/Date;)Ljava/util/Date;
    .locals 1
    .param p1, "date"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "date"
        }
    .end annotation

    .line 311
    invoke-virtual {p0, p1}, Lorg/apache/logging/log4j/core/util/CronExpression;->getTimeAfter(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method protected getNumericValue(Ljava/lang/String;I)I
    .locals 3
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "i"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "s",
            "i"
        }
    .end annotation

    .line 1147
    invoke-virtual {p0, p2, p1}, Lorg/apache/logging/log4j/core/util/CronExpression;->findNextWhiteSpace(ILjava/lang/String;)I

    move-result v0

    .line 1148
    .local v0, "endOfVal":I
    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 1149
    .local v1, "val":Ljava/lang/String;
    invoke-static {v1}, Lorg/apache/logging/log4j/core/util/Integers;->parseInt(Ljava/lang/String;)I

    move-result v2

    return v2
.end method

.method public getPrevFireTime(Ljava/util/Date;)Ljava/util/Date;
    .locals 1
    .param p1, "targetDate"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "targetDate"
        }
    .end annotation

    .line 1616
    invoke-virtual {p0, p1}, Lorg/apache/logging/log4j/core/util/CronExpression;->getTimeBefore(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method getSet(I)Ljava/util/TreeSet;
    .locals 1
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "type"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/TreeSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1108
    packed-switch p1, :pswitch_data_0

    .line 1124
    const/4 v0, 0x0

    return-object v0

    .line 1122
    :pswitch_0
    iget-object v0, p0, Lorg/apache/logging/log4j/core/util/CronExpression;->years:Ljava/util/TreeSet;

    return-object v0

    .line 1120
    :pswitch_1
    iget-object v0, p0, Lorg/apache/logging/log4j/core/util/CronExpression;->daysOfWeek:Ljava/util/TreeSet;

    return-object v0

    .line 1118
    :pswitch_2
    iget-object v0, p0, Lorg/apache/logging/log4j/core/util/CronExpression;->months:Ljava/util/TreeSet;

    return-object v0

    .line 1116
    :pswitch_3
    iget-object v0, p0, Lorg/apache/logging/log4j/core/util/CronExpression;->daysOfMonth:Ljava/util/TreeSet;

    return-object v0

    .line 1114
    :pswitch_4
    iget-object v0, p0, Lorg/apache/logging/log4j/core/util/CronExpression;->hours:Ljava/util/TreeSet;

    return-object v0

    .line 1112
    :pswitch_5
    iget-object v0, p0, Lorg/apache/logging/log4j/core/util/CronExpression;->minutes:Ljava/util/TreeSet;

    return-object v0

    .line 1110
    :pswitch_6
    iget-object v0, p0, Lorg/apache/logging/log4j/core/util/CronExpression;->seconds:Ljava/util/TreeSet;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getTimeAfter(Ljava/util/Date;)Ljava/util/Date;
    .locals 23
    .param p1, "afterTime"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "afterTime"
        }
    .end annotation

    .line 1181
    move-object/from16 v0, p0

    new-instance v1, Ljava/util/GregorianCalendar;

    invoke-virtual/range {p0 .. p0}, Lorg/apache/logging/log4j/core/util/CronExpression;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 1185
    .local v1, "cl":Ljava/util/Calendar;
    new-instance v2, Ljava/util/Date;

    invoke-virtual/range {p1 .. p1}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    add-long/2addr v3, v5

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    .line 1187
    .end local p1    # "afterTime":Ljava/util/Date;
    .local v2, "afterTime":Ljava/util/Date;
    invoke-virtual {v1, v2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 1188
    const/16 v3, 0xe

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 1190
    const/4 v3, 0x0

    .line 1192
    .local v3, "gotOne":Z
    :goto_0
    if-nez v3, :cond_34

    .line 1194
    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v6

    const/16 v7, 0xbb7

    const/4 v8, 0x0

    if-le v6, v7, :cond_0

    .line 1195
    return-object v8

    .line 1198
    :cond_0
    const/16 v6, 0xd

    invoke-virtual {v1, v6}, Ljava/util/Calendar;->get(I)I

    move-result v7

    .line 1199
    .local v7, "sec":I
    const/16 v9, 0xc

    invoke-virtual {v1, v9}, Ljava/util/Calendar;->get(I)I

    move-result v10

    .line 1202
    .local v10, "min":I
    iget-object v11, v0, Lorg/apache/logging/log4j/core/util/CronExpression;->seconds:Ljava/util/TreeSet;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/TreeSet;->tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v11

    .line 1203
    .local v11, "st":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Ljava/lang/Integer;>;"
    if-eqz v11, :cond_1

    invoke-interface {v11}, Ljava/util/SortedSet;->size()I

    move-result v12

    if-eqz v12, :cond_1

    .line 1204
    invoke-interface {v11}, Ljava/util/SortedSet;->first()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v7

    goto :goto_1

    .line 1206
    :cond_1
    iget-object v12, v0, Lorg/apache/logging/log4j/core/util/CronExpression;->seconds:Ljava/util/TreeSet;

    invoke-virtual {v12}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 1207
    add-int/lit8 v10, v10, 0x1

    .line 1208
    invoke-virtual {v1, v9, v10}, Ljava/util/Calendar;->set(II)V

    .line 1210
    :goto_1
    invoke-virtual {v1, v6, v7}, Ljava/util/Calendar;->set(II)V

    .line 1212
    invoke-virtual {v1, v9}, Ljava/util/Calendar;->get(I)I

    move-result v10

    .line 1213
    const/16 v12, 0xb

    invoke-virtual {v1, v12}, Ljava/util/Calendar;->get(I)I

    move-result v13

    .line 1214
    .local v13, "hr":I
    const/4 v14, -0x1

    .line 1217
    .local v14, "t":I
    iget-object v15, v0, Lorg/apache/logging/log4j/core/util/CronExpression;->minutes:Ljava/util/TreeSet;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v15, v8}, Ljava/util/TreeSet;->tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v8

    .line 1218
    .end local v11    # "st":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Ljava/lang/Integer;>;"
    .local v8, "st":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Ljava/lang/Integer;>;"
    if-eqz v8, :cond_2

    invoke-interface {v8}, Ljava/util/SortedSet;->size()I

    move-result v11

    if-eqz v11, :cond_2

    .line 1219
    move v14, v10

    .line 1220
    invoke-interface {v8}, Ljava/util/SortedSet;->first()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v10

    goto :goto_2

    .line 1222
    :cond_2
    iget-object v11, v0, Lorg/apache/logging/log4j/core/util/CronExpression;->minutes:Ljava/util/TreeSet;

    invoke-virtual {v11}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 1223
    add-int/lit8 v13, v13, 0x1

    .line 1225
    :goto_2
    if-eq v10, v14, :cond_3

    .line 1226
    invoke-virtual {v1, v6, v4}, Ljava/util/Calendar;->set(II)V

    .line 1227
    invoke-virtual {v1, v9, v10}, Ljava/util/Calendar;->set(II)V

    .line 1228
    invoke-virtual {v0, v1, v13}, Lorg/apache/logging/log4j/core/util/CronExpression;->setCalendarHour(Ljava/util/Calendar;I)V

    .line 1229
    move-object/from16 v20, v2

    move/from16 v19, v3

    move v9, v4

    goto/16 :goto_f

    .line 1231
    :cond_3
    invoke-virtual {v1, v9, v10}, Ljava/util/Calendar;->set(II)V

    .line 1233
    invoke-virtual {v1, v12}, Ljava/util/Calendar;->get(I)I

    move-result v11

    .line 1234
    .end local v13    # "hr":I
    .local v11, "hr":I
    const/4 v13, 0x5

    invoke-virtual {v1, v13}, Ljava/util/Calendar;->get(I)I

    move-result v15

    .line 1235
    .local v15, "day":I
    const/4 v14, -0x1

    .line 1238
    iget-object v5, v0, Lorg/apache/logging/log4j/core/util/CronExpression;->hours:Ljava/util/TreeSet;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/util/TreeSet;->tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v5

    .line 1239
    .end local v8    # "st":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Ljava/lang/Integer;>;"
    .local v5, "st":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Ljava/lang/Integer;>;"
    if-eqz v5, :cond_4

    invoke-interface {v5}, Ljava/util/SortedSet;->size()I

    move-result v8

    if-eqz v8, :cond_4

    .line 1240
    move v14, v11

    .line 1241
    invoke-interface {v5}, Ljava/util/SortedSet;->first()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .end local v11    # "hr":I
    .local v8, "hr":I
    goto :goto_3

    .line 1243
    .end local v8    # "hr":I
    .restart local v11    # "hr":I
    :cond_4
    iget-object v8, v0, Lorg/apache/logging/log4j/core/util/CronExpression;->hours:Ljava/util/TreeSet;

    invoke-virtual {v8}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 1244
    .end local v11    # "hr":I
    .restart local v8    # "hr":I
    add-int/lit8 v15, v15, 0x1

    .line 1246
    :goto_3
    if-eq v8, v14, :cond_5

    .line 1247
    invoke-virtual {v1, v6, v4}, Ljava/util/Calendar;->set(II)V

    .line 1248
    invoke-virtual {v1, v9, v4}, Ljava/util/Calendar;->set(II)V

    .line 1249
    invoke-virtual {v1, v13, v15}, Ljava/util/Calendar;->set(II)V

    .line 1250
    invoke-virtual {v0, v1, v8}, Lorg/apache/logging/log4j/core/util/CronExpression;->setCalendarHour(Ljava/util/Calendar;I)V

    .line 1251
    move-object/from16 v20, v2

    move/from16 v19, v3

    move v9, v4

    goto/16 :goto_f

    .line 1253
    :cond_5
    const/16 v11, 0xb

    invoke-virtual {v1, v11, v8}, Ljava/util/Calendar;->set(II)V

    .line 1255
    invoke-virtual {v1, v13}, Ljava/util/Calendar;->get(I)I

    move-result v11

    .line 1256
    .end local v15    # "day":I
    .local v11, "day":I
    const/4 v12, 0x2

    invoke-virtual {v1, v12}, Ljava/util/Calendar;->get(I)I

    move-result v15

    const/16 v16, 0x1

    add-int/lit8 v15, v15, 0x1

    .line 1259
    .local v15, "mon":I
    const/4 v14, -0x1

    .line 1260
    move/from16 v17, v15

    .line 1263
    .local v17, "tmon":I
    iget-object v12, v0, Lorg/apache/logging/log4j/core/util/CronExpression;->daysOfMonth:Ljava/util/TreeSet;

    sget-object v13, Lorg/apache/logging/log4j/core/util/CronExpression;->NO_SPEC:Ljava/lang/Integer;

    invoke-virtual {v12, v13}, Ljava/util/TreeSet;->contains(Ljava/lang/Object;)Z

    move-result v12

    const/4 v13, 0x1

    xor-int/2addr v12, v13

    .line 1264
    .local v12, "dayOfMSpec":Z
    iget-object v4, v0, Lorg/apache/logging/log4j/core/util/CronExpression;->daysOfWeek:Ljava/util/TreeSet;

    sget-object v6, Lorg/apache/logging/log4j/core/util/CronExpression;->NO_SPEC:Ljava/lang/Integer;

    invoke-virtual {v4, v6}, Ljava/util/TreeSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    xor-int/2addr v4, v13

    .line 1265
    .local v4, "dayOfWSpec":Z
    if-eqz v12, :cond_19

    if-nez v4, :cond_19

    .line 1266
    iget-object v13, v0, Lorg/apache/logging/log4j/core/util/CronExpression;->daysOfMonth:Ljava/util/TreeSet;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v13, v6}, Ljava/util/TreeSet;->tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v5

    .line 1267
    iget-boolean v6, v0, Lorg/apache/logging/log4j/core/util/CronExpression;->lastdayOfMonth:Z

    if-eqz v6, :cond_e

    .line 1268
    iget-boolean v6, v0, Lorg/apache/logging/log4j/core/util/CronExpression;->nearestWeekday:Z

    if-nez v6, :cond_8

    .line 1269
    move v14, v11

    .line 1270
    const/4 v6, 0x1

    invoke-virtual {v1, v6}, Ljava/util/Calendar;->get(I)I

    move-result v13

    invoke-virtual {v0, v15, v13}, Lorg/apache/logging/log4j/core/util/CronExpression;->getLastDayOfMonth(II)I

    move-result v6

    .line 1271
    .end local v11    # "day":I
    .local v6, "day":I
    iget v11, v0, Lorg/apache/logging/log4j/core/util/CronExpression;->lastdayOffset:I

    sub-int/2addr v6, v11

    .line 1272
    if-le v14, v6, :cond_7

    .line 1273
    add-int/lit8 v15, v15, 0x1

    .line 1274
    if-le v15, v9, :cond_6

    .line 1275
    const/4 v11, 0x1

    .line 1276
    .end local v15    # "mon":I
    .local v11, "mon":I
    const/16 v17, 0xd05

    .line 1277
    const/4 v13, 0x1

    invoke-virtual {v1, v13, v13}, Ljava/util/Calendar;->add(II)V

    move v15, v11

    .line 1279
    .end local v11    # "mon":I
    .restart local v15    # "mon":I
    :cond_6
    const/4 v6, 0x1

    move/from16 v19, v3

    move v11, v6

    move/from16 v3, v17

    goto/16 :goto_7

    .line 1272
    :cond_7
    move/from16 v19, v3

    move v11, v6

    move/from16 v3, v17

    goto/16 :goto_7

    .line 1282
    .end local v6    # "day":I
    .local v11, "day":I
    :cond_8
    move v14, v11

    .line 1283
    const/4 v6, 0x1

    invoke-virtual {v1, v6}, Ljava/util/Calendar;->get(I)I

    move-result v13

    invoke-virtual {v0, v15, v13}, Lorg/apache/logging/log4j/core/util/CronExpression;->getLastDayOfMonth(II)I

    move-result v6

    .line 1284
    .end local v11    # "day":I
    .restart local v6    # "day":I
    iget v11, v0, Lorg/apache/logging/log4j/core/util/CronExpression;->lastdayOffset:I

    sub-int/2addr v6, v11

    .line 1286
    invoke-virtual/range {p0 .. p0}, Lorg/apache/logging/log4j/core/util/CronExpression;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v11

    invoke-static {v11}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v11

    .line 1287
    .local v11, "tcal":Ljava/util/Calendar;
    const/4 v9, 0x0

    const/16 v13, 0xd

    invoke-virtual {v11, v13, v9}, Ljava/util/Calendar;->set(II)V

    .line 1288
    const/16 v13, 0xc

    invoke-virtual {v11, v13, v9}, Ljava/util/Calendar;->set(II)V

    .line 1289
    const/16 v13, 0xb

    invoke-virtual {v11, v13, v9}, Ljava/util/Calendar;->set(II)V

    .line 1290
    const/4 v9, 0x5

    invoke-virtual {v11, v9, v6}, Ljava/util/Calendar;->set(II)V

    .line 1291
    add-int/lit8 v9, v15, -0x1

    const/4 v13, 0x2

    invoke-virtual {v11, v13, v9}, Ljava/util/Calendar;->set(II)V

    .line 1292
    const/4 v9, 0x1

    invoke-virtual {v1, v9}, Ljava/util/Calendar;->get(I)I

    move-result v13

    invoke-virtual {v11, v9, v13}, Ljava/util/Calendar;->set(II)V

    .line 1294
    invoke-virtual {v1, v9}, Ljava/util/Calendar;->get(I)I

    move-result v13

    invoke-virtual {v0, v15, v13}, Lorg/apache/logging/log4j/core/util/CronExpression;->getLastDayOfMonth(II)I

    move-result v13

    .line 1295
    .local v13, "ldom":I
    move/from16 v19, v3

    const/4 v9, 0x7

    .end local v3    # "gotOne":Z
    .local v19, "gotOne":Z
    invoke-virtual {v11, v9}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 1297
    .local v3, "dow":I
    if-ne v3, v9, :cond_9

    const/4 v9, 0x1

    if-ne v6, v9, :cond_9

    .line 1298
    add-int/lit8 v6, v6, 0x2

    goto :goto_4

    .line 1299
    :cond_9
    const/4 v9, 0x7

    if-ne v3, v9, :cond_a

    .line 1300
    add-int/lit8 v6, v6, -0x1

    goto :goto_4

    .line 1301
    :cond_a
    const/4 v9, 0x1

    if-ne v3, v9, :cond_b

    if-ne v6, v13, :cond_b

    .line 1302
    add-int/lit8 v6, v6, -0x2

    goto :goto_4

    .line 1303
    :cond_b
    const/4 v9, 0x1

    if-ne v3, v9, :cond_c

    .line 1304
    add-int/lit8 v6, v6, 0x1

    .line 1307
    :cond_c
    :goto_4
    const/16 v9, 0xd

    invoke-virtual {v11, v9, v7}, Ljava/util/Calendar;->set(II)V

    .line 1308
    const/16 v9, 0xc

    invoke-virtual {v11, v9, v10}, Ljava/util/Calendar;->set(II)V

    .line 1309
    const/16 v9, 0xb

    invoke-virtual {v11, v9, v8}, Ljava/util/Calendar;->set(II)V

    .line 1310
    const/4 v9, 0x5

    invoke-virtual {v11, v9, v6}, Ljava/util/Calendar;->set(II)V

    .line 1311
    add-int/lit8 v9, v15, -0x1

    move/from16 v18, v3

    const/4 v3, 0x2

    .end local v3    # "dow":I
    .local v18, "dow":I
    invoke-virtual {v11, v3, v9}, Ljava/util/Calendar;->set(II)V

    .line 1312
    invoke-virtual {v11}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    .line 1313
    .local v3, "nTime":Ljava/util/Date;
    invoke-virtual {v3, v2}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v9

    if-eqz v9, :cond_d

    .line 1314
    const/4 v6, 0x1

    .line 1315
    add-int/lit8 v15, v15, 0x1

    .line 1317
    .end local v3    # "nTime":Ljava/util/Date;
    .end local v11    # "tcal":Ljava/util/Calendar;
    .end local v13    # "ldom":I
    .end local v18    # "dow":I
    :cond_d
    move v11, v6

    move/from16 v3, v17

    goto/16 :goto_7

    .line 1318
    .end local v6    # "day":I
    .end local v19    # "gotOne":Z
    .local v3, "gotOne":Z
    .local v11, "day":I
    :cond_e
    move/from16 v19, v3

    .end local v3    # "gotOne":Z
    .restart local v19    # "gotOne":Z
    iget-boolean v3, v0, Lorg/apache/logging/log4j/core/util/CronExpression;->nearestWeekday:Z

    if-eqz v3, :cond_14

    .line 1319
    move v14, v11

    .line 1320
    iget-object v3, v0, Lorg/apache/logging/log4j/core/util/CronExpression;->daysOfMonth:Ljava/util/TreeSet;

    invoke-virtual {v3}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1322
    .end local v11    # "day":I
    .local v3, "day":I
    invoke-virtual/range {p0 .. p0}, Lorg/apache/logging/log4j/core/util/CronExpression;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v6

    .line 1323
    .local v6, "tcal":Ljava/util/Calendar;
    const/16 v9, 0xd

    const/4 v11, 0x0

    invoke-virtual {v6, v9, v11}, Ljava/util/Calendar;->set(II)V

    .line 1324
    const/16 v9, 0xc

    invoke-virtual {v6, v9, v11}, Ljava/util/Calendar;->set(II)V

    .line 1325
    const/16 v9, 0xb

    invoke-virtual {v6, v9, v11}, Ljava/util/Calendar;->set(II)V

    .line 1326
    const/4 v9, 0x5

    invoke-virtual {v6, v9, v3}, Ljava/util/Calendar;->set(II)V

    .line 1327
    add-int/lit8 v9, v15, -0x1

    const/4 v11, 0x2

    invoke-virtual {v6, v11, v9}, Ljava/util/Calendar;->set(II)V

    .line 1328
    const/4 v9, 0x1

    invoke-virtual {v1, v9}, Ljava/util/Calendar;->get(I)I

    move-result v11

    invoke-virtual {v6, v9, v11}, Ljava/util/Calendar;->set(II)V

    .line 1330
    invoke-virtual {v1, v9}, Ljava/util/Calendar;->get(I)I

    move-result v11

    invoke-virtual {v0, v15, v11}, Lorg/apache/logging/log4j/core/util/CronExpression;->getLastDayOfMonth(II)I

    move-result v11

    .line 1331
    .local v11, "ldom":I
    const/4 v13, 0x7

    invoke-virtual {v6, v13}, Ljava/util/Calendar;->get(I)I

    move-result v9

    .line 1333
    .local v9, "dow":I
    if-ne v9, v13, :cond_f

    const/4 v13, 0x1

    if-ne v3, v13, :cond_f

    .line 1334
    add-int/lit8 v3, v3, 0x2

    goto :goto_5

    .line 1335
    :cond_f
    const/4 v13, 0x7

    if-ne v9, v13, :cond_10

    .line 1336
    add-int/lit8 v3, v3, -0x1

    goto :goto_5

    .line 1337
    :cond_10
    const/4 v13, 0x1

    if-ne v9, v13, :cond_11

    if-ne v3, v11, :cond_11

    .line 1338
    add-int/lit8 v3, v3, -0x2

    goto :goto_5

    .line 1339
    :cond_11
    const/4 v13, 0x1

    if-ne v9, v13, :cond_12

    .line 1340
    add-int/lit8 v3, v3, 0x1

    .line 1344
    :cond_12
    :goto_5
    const/16 v13, 0xd

    invoke-virtual {v6, v13, v7}, Ljava/util/Calendar;->set(II)V

    .line 1345
    const/16 v13, 0xc

    invoke-virtual {v6, v13, v10}, Ljava/util/Calendar;->set(II)V

    .line 1346
    const/16 v13, 0xb

    invoke-virtual {v6, v13, v8}, Ljava/util/Calendar;->set(II)V

    .line 1347
    const/4 v13, 0x5

    invoke-virtual {v6, v13, v3}, Ljava/util/Calendar;->set(II)V

    .line 1348
    add-int/lit8 v13, v15, -0x1

    move/from16 v18, v3

    const/4 v3, 0x2

    .end local v3    # "day":I
    .local v18, "day":I
    invoke-virtual {v6, v3, v13}, Ljava/util/Calendar;->set(II)V

    .line 1349
    invoke-virtual {v6}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    .line 1350
    .local v3, "nTime":Ljava/util/Date;
    invoke-virtual {v3, v2}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v13

    if-eqz v13, :cond_13

    .line 1351
    iget-object v13, v0, Lorg/apache/logging/log4j/core/util/CronExpression;->daysOfMonth:Ljava/util/TreeSet;

    invoke-virtual {v13}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 1352
    .end local v18    # "day":I
    .local v13, "day":I
    add-int/lit8 v15, v15, 0x1

    move v3, v13

    goto :goto_6

    .line 1350
    .end local v13    # "day":I
    .restart local v18    # "day":I
    :cond_13
    move/from16 v3, v18

    .line 1354
    .end local v6    # "tcal":Ljava/util/Calendar;
    .end local v9    # "dow":I
    .end local v11    # "ldom":I
    .end local v18    # "day":I
    .local v3, "day":I
    :goto_6
    move v11, v3

    move/from16 v3, v17

    goto :goto_7

    .end local v3    # "day":I
    .local v11, "day":I
    :cond_14
    if-eqz v5, :cond_16

    invoke-interface {v5}, Ljava/util/SortedSet;->size()I

    move-result v3

    if-eqz v3, :cond_16

    .line 1355
    move v14, v11

    .line 1356
    invoke-interface {v5}, Ljava/util/SortedSet;->first()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1358
    .end local v11    # "day":I
    .restart local v3    # "day":I
    const/4 v6, 0x1

    invoke-virtual {v1, v6}, Ljava/util/Calendar;->get(I)I

    move-result v9

    invoke-virtual {v0, v15, v9}, Lorg/apache/logging/log4j/core/util/CronExpression;->getLastDayOfMonth(II)I

    move-result v6

    .line 1359
    .local v6, "lastDay":I
    if-le v3, v6, :cond_15

    .line 1360
    iget-object v9, v0, Lorg/apache/logging/log4j/core/util/CronExpression;->daysOfMonth:Ljava/util/TreeSet;

    invoke-virtual {v9}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1361
    add-int/lit8 v15, v15, 0x1

    .line 1363
    .end local v6    # "lastDay":I
    :cond_15
    move v11, v3

    move/from16 v3, v17

    goto :goto_7

    .line 1364
    .end local v3    # "day":I
    .restart local v11    # "day":I
    :cond_16
    iget-object v3, v0, Lorg/apache/logging/log4j/core/util/CronExpression;->daysOfMonth:Ljava/util/TreeSet;

    invoke-virtual {v3}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1365
    .end local v11    # "day":I
    .restart local v3    # "day":I
    add-int/lit8 v15, v15, 0x1

    move v11, v3

    move/from16 v3, v17

    .line 1368
    .end local v17    # "tmon":I
    .local v3, "tmon":I
    .restart local v11    # "day":I
    :goto_7
    if-ne v11, v14, :cond_18

    if-eq v15, v3, :cond_17

    goto :goto_8

    :cond_17
    move-object/from16 v20, v2

    move/from16 v17, v3

    move/from16 v22, v4

    const/4 v13, 0x2

    goto/16 :goto_d

    .line 1369
    :cond_18
    :goto_8
    const/16 v6, 0xd

    const/4 v9, 0x0

    invoke-virtual {v1, v6, v9}, Ljava/util/Calendar;->set(II)V

    .line 1370
    const/16 v6, 0xc

    invoke-virtual {v1, v6, v9}, Ljava/util/Calendar;->set(II)V

    .line 1371
    const/16 v6, 0xb

    invoke-virtual {v1, v6, v9}, Ljava/util/Calendar;->set(II)V

    .line 1372
    const/4 v6, 0x5

    invoke-virtual {v1, v6, v11}, Ljava/util/Calendar;->set(II)V

    .line 1373
    add-int/lit8 v6, v15, -0x1

    const/4 v9, 0x2

    invoke-virtual {v1, v9, v6}, Ljava/util/Calendar;->set(II)V

    .line 1376
    move-object/from16 v20, v2

    const/4 v9, 0x0

    goto/16 :goto_f

    .line 1265
    .end local v19    # "gotOne":Z
    .local v3, "gotOne":Z
    .restart local v17    # "tmon":I
    :cond_19
    move/from16 v19, v3

    .line 1378
    .end local v3    # "gotOne":Z
    .restart local v19    # "gotOne":Z
    if-eqz v4, :cond_33

    if-nez v12, :cond_33

    .line 1379
    iget-boolean v3, v0, Lorg/apache/logging/log4j/core/util/CronExpression;->lastdayOfWeek:Z

    if-eqz v3, :cond_1f

    .line 1381
    iget-object v3, v0, Lorg/apache/logging/log4j/core/util/CronExpression;->daysOfWeek:Ljava/util/TreeSet;

    invoke-virtual {v3}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1383
    .local v3, "dow":I
    const/4 v6, 0x7

    invoke-virtual {v1, v6}, Ljava/util/Calendar;->get(I)I

    move-result v9

    .line 1384
    .local v9, "cDow":I
    const/4 v6, 0x0

    .line 1385
    .local v6, "daysToAdd":I
    if-ge v9, v3, :cond_1a

    .line 1386
    sub-int v6, v3, v9

    .line 1388
    :cond_1a
    if-le v9, v3, :cond_1b

    .line 1389
    rsub-int/lit8 v13, v9, 0x7

    add-int v6, v3, v13

    .line 1392
    :cond_1b
    move-object/from16 v20, v2

    const/4 v13, 0x1

    .end local v2    # "afterTime":Ljava/util/Date;
    .local v20, "afterTime":Ljava/util/Date;
    invoke-virtual {v1, v13}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v0, v15, v2}, Lorg/apache/logging/log4j/core/util/CronExpression;->getLastDayOfMonth(II)I

    move-result v2

    .line 1394
    .local v2, "lDay":I
    add-int v13, v11, v6

    if-le v13, v2, :cond_1c

    .line 1396
    move/from16 v21, v3

    const/4 v3, 0x0

    const/16 v13, 0xd

    .end local v3    # "dow":I
    .local v21, "dow":I
    invoke-virtual {v1, v13, v3}, Ljava/util/Calendar;->set(II)V

    .line 1397
    const/16 v13, 0xc

    invoke-virtual {v1, v13, v3}, Ljava/util/Calendar;->set(II)V

    .line 1398
    const/16 v13, 0xb

    invoke-virtual {v1, v13, v3}, Ljava/util/Calendar;->set(II)V

    .line 1399
    const/4 v3, 0x5

    const/4 v13, 0x1

    invoke-virtual {v1, v3, v13}, Ljava/util/Calendar;->set(II)V

    .line 1400
    const/4 v3, 0x2

    invoke-virtual {v1, v3, v15}, Ljava/util/Calendar;->set(II)V

    .line 1402
    const/4 v9, 0x0

    goto/16 :goto_f

    .line 1394
    .end local v21    # "dow":I
    .restart local v3    # "dow":I
    :cond_1c
    move/from16 v21, v3

    .line 1406
    .end local v3    # "dow":I
    .restart local v21    # "dow":I
    :goto_9
    add-int v3, v11, v6

    const/4 v13, 0x7

    add-int/2addr v3, v13

    if-gt v3, v2, :cond_1d

    .line 1407
    add-int/lit8 v6, v6, 0x7

    goto :goto_9

    .line 1410
    :cond_1d
    add-int/2addr v11, v6

    .line 1412
    if-lez v6, :cond_1e

    .line 1413
    const/16 v3, 0xd

    const/4 v13, 0x0

    invoke-virtual {v1, v3, v13}, Ljava/util/Calendar;->set(II)V

    .line 1414
    const/16 v3, 0xc

    invoke-virtual {v1, v3, v13}, Ljava/util/Calendar;->set(II)V

    .line 1415
    const/16 v3, 0xb

    invoke-virtual {v1, v3, v13}, Ljava/util/Calendar;->set(II)V

    .line 1416
    const/4 v3, 0x5

    invoke-virtual {v1, v3, v11}, Ljava/util/Calendar;->set(II)V

    .line 1417
    add-int/lit8 v3, v15, -0x1

    const/4 v13, 0x2

    invoke-virtual {v1, v13, v3}, Ljava/util/Calendar;->set(II)V

    .line 1419
    const/4 v9, 0x0

    goto/16 :goto_f

    .line 1422
    .end local v2    # "lDay":I
    .end local v6    # "daysToAdd":I
    .end local v9    # "cDow":I
    .end local v21    # "dow":I
    :cond_1e
    move/from16 v22, v4

    const/4 v13, 0x2

    goto/16 :goto_d

    .end local v20    # "afterTime":Ljava/util/Date;
    .local v2, "afterTime":Ljava/util/Date;
    :cond_1f
    move-object/from16 v20, v2

    .end local v2    # "afterTime":Ljava/util/Date;
    .restart local v20    # "afterTime":Ljava/util/Date;
    iget v2, v0, Lorg/apache/logging/log4j/core/util/CronExpression;->nthdayOfWeek:I

    if-eqz v2, :cond_28

    .line 1424
    iget-object v2, v0, Lorg/apache/logging/log4j/core/util/CronExpression;->daysOfWeek:Ljava/util/TreeSet;

    invoke-virtual {v2}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1426
    .local v2, "dow":I
    const/4 v3, 0x7

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .line 1427
    .local v6, "cDow":I
    const/4 v3, 0x0

    .line 1428
    .local v3, "daysToAdd":I
    if-ge v6, v2, :cond_20

    .line 1429
    sub-int v3, v2, v6

    goto :goto_a

    .line 1430
    :cond_20
    if-le v6, v2, :cond_21

    .line 1431
    rsub-int/lit8 v9, v6, 0x7

    add-int v3, v2, v9

    .line 1434
    :cond_21
    :goto_a
    const/4 v9, 0x0

    .line 1435
    .local v9, "dayShifted":Z
    if-lez v3, :cond_22

    .line 1436
    const/4 v9, 0x1

    .line 1439
    :cond_22
    add-int/2addr v11, v3

    .line 1440
    div-int/lit8 v13, v11, 0x7

    .line 1441
    .local v13, "weekOfMonth":I
    rem-int/lit8 v21, v11, 0x7

    if-lez v21, :cond_23

    .line 1442
    add-int/lit8 v13, v13, 0x1

    .line 1445
    :cond_23
    move/from16 v21, v2

    .end local v2    # "dow":I
    .restart local v21    # "dow":I
    iget v2, v0, Lorg/apache/logging/log4j/core/util/CronExpression;->nthdayOfWeek:I

    sub-int/2addr v2, v13

    const/16 v18, 0x7

    mul-int/lit8 v2, v2, 0x7

    .line 1446
    .end local v3    # "daysToAdd":I
    .local v2, "daysToAdd":I
    add-int/2addr v11, v2

    .line 1447
    if-ltz v2, :cond_27

    .line 1449
    move/from16 v22, v4

    const/4 v3, 0x1

    .end local v4    # "dayOfWSpec":Z
    .local v22, "dayOfWSpec":Z
    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 1448
    invoke-virtual {v0, v15, v4}, Lorg/apache/logging/log4j/core/util/CronExpression;->getLastDayOfMonth(II)I

    move-result v3

    if-le v11, v3, :cond_24

    goto :goto_c

    .line 1457
    :cond_24
    if-gtz v2, :cond_26

    if-eqz v9, :cond_25

    goto :goto_b

    .line 1466
    .end local v2    # "daysToAdd":I
    .end local v6    # "cDow":I
    .end local v9    # "dayShifted":Z
    .end local v13    # "weekOfMonth":I
    .end local v21    # "dow":I
    :cond_25
    const/4 v13, 0x2

    goto/16 :goto_d

    .line 1458
    .restart local v2    # "daysToAdd":I
    .restart local v6    # "cDow":I
    .restart local v9    # "dayShifted":Z
    .restart local v13    # "weekOfMonth":I
    .restart local v21    # "dow":I
    :cond_26
    :goto_b
    const/16 v3, 0xd

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 1459
    const/16 v3, 0xc

    invoke-virtual {v1, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 1460
    const/16 v3, 0xb

    invoke-virtual {v1, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 1461
    const/4 v3, 0x5

    invoke-virtual {v1, v3, v11}, Ljava/util/Calendar;->set(II)V

    .line 1462
    add-int/lit8 v3, v15, -0x1

    const/4 v4, 0x2

    invoke-virtual {v1, v4, v3}, Ljava/util/Calendar;->set(II)V

    .line 1464
    const/4 v9, 0x0

    goto/16 :goto_f

    .line 1447
    .end local v22    # "dayOfWSpec":Z
    .restart local v4    # "dayOfWSpec":Z
    :cond_27
    move/from16 v22, v4

    .line 1450
    .end local v4    # "dayOfWSpec":Z
    .restart local v22    # "dayOfWSpec":Z
    :goto_c
    const/16 v3, 0xd

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 1451
    const/16 v3, 0xc

    invoke-virtual {v1, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 1452
    const/16 v3, 0xb

    invoke-virtual {v1, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 1453
    const/4 v3, 0x5

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 1454
    const/4 v3, 0x2

    invoke-virtual {v1, v3, v15}, Ljava/util/Calendar;->set(II)V

    .line 1456
    const/4 v9, 0x0

    goto/16 :goto_f

    .line 1467
    .end local v2    # "daysToAdd":I
    .end local v6    # "cDow":I
    .end local v9    # "dayShifted":Z
    .end local v13    # "weekOfMonth":I
    .end local v21    # "dow":I
    .end local v22    # "dayOfWSpec":Z
    .restart local v4    # "dayOfWSpec":Z
    :cond_28
    move/from16 v22, v4

    .end local v4    # "dayOfWSpec":Z
    .restart local v22    # "dayOfWSpec":Z
    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 1468
    .local v2, "cDow":I
    iget-object v3, v0, Lorg/apache/logging/log4j/core/util/CronExpression;->daysOfWeek:Ljava/util/TreeSet;

    invoke-virtual {v3}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1470
    .local v3, "dow":I
    iget-object v4, v0, Lorg/apache/logging/log4j/core/util/CronExpression;->daysOfWeek:Ljava/util/TreeSet;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/TreeSet;->tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v5

    .line 1471
    if-eqz v5, :cond_29

    invoke-interface {v5}, Ljava/util/SortedSet;->size()I

    move-result v4

    if-lez v4, :cond_29

    .line 1472
    invoke-interface {v5}, Ljava/util/SortedSet;->first()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1475
    :cond_29
    const/4 v4, 0x0

    .line 1476
    .local v4, "daysToAdd":I
    if-ge v2, v3, :cond_2a

    .line 1477
    sub-int v4, v3, v2

    .line 1479
    :cond_2a
    if-le v2, v3, :cond_2b

    .line 1480
    rsub-int/lit8 v6, v2, 0x7

    add-int v4, v3, v6

    .line 1483
    :cond_2b
    const/4 v6, 0x1

    invoke-virtual {v1, v6}, Ljava/util/Calendar;->get(I)I

    move-result v9

    invoke-virtual {v0, v15, v9}, Lorg/apache/logging/log4j/core/util/CronExpression;->getLastDayOfMonth(II)I

    move-result v6

    .line 1485
    .local v6, "lDay":I
    add-int v9, v11, v4

    if-le v9, v6, :cond_2c

    .line 1487
    const/16 v9, 0xd

    const/4 v13, 0x0

    invoke-virtual {v1, v9, v13}, Ljava/util/Calendar;->set(II)V

    .line 1488
    const/16 v9, 0xc

    invoke-virtual {v1, v9, v13}, Ljava/util/Calendar;->set(II)V

    .line 1489
    const/16 v9, 0xb

    invoke-virtual {v1, v9, v13}, Ljava/util/Calendar;->set(II)V

    .line 1490
    const/4 v9, 0x5

    const/4 v13, 0x1

    invoke-virtual {v1, v9, v13}, Ljava/util/Calendar;->set(II)V

    .line 1491
    const/4 v9, 0x2

    invoke-virtual {v1, v9, v15}, Ljava/util/Calendar;->set(II)V

    .line 1493
    const/4 v9, 0x0

    goto/16 :goto_f

    .line 1494
    :cond_2c
    if-lez v4, :cond_2d

    .line 1495
    const/16 v9, 0xd

    const/4 v13, 0x0

    invoke-virtual {v1, v9, v13}, Ljava/util/Calendar;->set(II)V

    .line 1496
    const/16 v9, 0xc

    invoke-virtual {v1, v9, v13}, Ljava/util/Calendar;->set(II)V

    .line 1497
    const/16 v9, 0xb

    invoke-virtual {v1, v9, v13}, Ljava/util/Calendar;->set(II)V

    .line 1498
    add-int v9, v11, v4

    const/4 v13, 0x5

    invoke-virtual {v1, v13, v9}, Ljava/util/Calendar;->set(II)V

    .line 1499
    add-int/lit8 v9, v15, -0x1

    const/4 v13, 0x2

    invoke-virtual {v1, v13, v9}, Ljava/util/Calendar;->set(II)V

    .line 1502
    const/4 v9, 0x0

    goto/16 :goto_f

    .line 1494
    :cond_2d
    const/4 v13, 0x2

    .line 1504
    .end local v2    # "cDow":I
    .end local v3    # "dow":I
    .end local v4    # "daysToAdd":I
    .end local v6    # "lDay":I
    nop

    .line 1509
    :goto_d
    const/4 v2, 0x5

    invoke-virtual {v1, v2, v11}, Ljava/util/Calendar;->set(II)V

    .line 1511
    invoke-virtual {v1, v13}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    .line 1514
    .end local v15    # "mon":I
    .local v2, "mon":I
    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 1515
    .local v4, "year":I
    const/4 v3, -0x1

    .line 1519
    .end local v14    # "t":I
    .local v3, "t":I
    sget v6, Lorg/apache/logging/log4j/core/util/CronExpression;->MAX_YEAR:I

    if-le v4, v6, :cond_2e

    .line 1520
    const/4 v6, 0x0

    return-object v6

    .line 1524
    :cond_2e
    iget-object v6, v0, Lorg/apache/logging/log4j/core/util/CronExpression;->months:Ljava/util/TreeSet;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/util/TreeSet;->tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v5

    .line 1525
    if-eqz v5, :cond_2f

    invoke-interface {v5}, Ljava/util/SortedSet;->size()I

    move-result v6

    if-eqz v6, :cond_2f

    .line 1526
    move v3, v2

    .line 1527
    invoke-interface {v5}, Ljava/util/SortedSet;->first()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_e

    .line 1529
    :cond_2f
    iget-object v6, v0, Lorg/apache/logging/log4j/core/util/CronExpression;->months:Ljava/util/TreeSet;

    invoke-virtual {v6}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1530
    add-int/lit8 v4, v4, 0x1

    .line 1532
    :goto_e
    if-eq v2, v3, :cond_30

    .line 1533
    const/16 v6, 0xd

    const/4 v9, 0x0

    invoke-virtual {v1, v6, v9}, Ljava/util/Calendar;->set(II)V

    .line 1534
    const/16 v6, 0xc

    invoke-virtual {v1, v6, v9}, Ljava/util/Calendar;->set(II)V

    .line 1535
    const/16 v6, 0xb

    invoke-virtual {v1, v6, v9}, Ljava/util/Calendar;->set(II)V

    .line 1536
    const/4 v6, 0x5

    const/4 v9, 0x1

    invoke-virtual {v1, v6, v9}, Ljava/util/Calendar;->set(II)V

    .line 1537
    add-int/lit8 v6, v2, -0x1

    const/4 v13, 0x2

    invoke-virtual {v1, v13, v6}, Ljava/util/Calendar;->set(II)V

    .line 1540
    invoke-virtual {v1, v9, v4}, Ljava/util/Calendar;->set(II)V

    .line 1541
    const/4 v9, 0x0

    goto :goto_f

    .line 1543
    :cond_30
    const/4 v9, 0x1

    const/4 v13, 0x2

    add-int/lit8 v6, v2, -0x1

    invoke-virtual {v1, v13, v6}, Ljava/util/Calendar;->set(II)V

    .line 1547
    invoke-virtual {v1, v9}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 1548
    const/4 v3, -0x1

    .line 1551
    iget-object v6, v0, Lorg/apache/logging/log4j/core/util/CronExpression;->years:Ljava/util/TreeSet;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/util/TreeSet;->tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v5

    .line 1552
    if-eqz v5, :cond_32

    invoke-interface {v5}, Ljava/util/SortedSet;->size()I

    move-result v6

    if-eqz v6, :cond_32

    .line 1553
    move v3, v4

    .line 1554
    invoke-interface {v5}, Ljava/util/SortedSet;->first()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 1559
    if-eq v4, v3, :cond_31

    .line 1560
    const/16 v6, 0xd

    const/4 v9, 0x0

    invoke-virtual {v1, v6, v9}, Ljava/util/Calendar;->set(II)V

    .line 1561
    const/16 v6, 0xc

    invoke-virtual {v1, v6, v9}, Ljava/util/Calendar;->set(II)V

    .line 1562
    const/16 v6, 0xb

    invoke-virtual {v1, v6, v9}, Ljava/util/Calendar;->set(II)V

    .line 1563
    const/4 v6, 0x5

    const/4 v13, 0x1

    invoke-virtual {v1, v6, v13}, Ljava/util/Calendar;->set(II)V

    .line 1564
    const/4 v6, 0x2

    invoke-virtual {v1, v6, v9}, Ljava/util/Calendar;->set(II)V

    .line 1567
    invoke-virtual {v1, v13, v4}, Ljava/util/Calendar;->set(II)V

    .line 1568
    nop

    .line 1192
    .end local v4    # "year":I
    .end local v5    # "st":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Ljava/lang/Integer;>;"
    .end local v7    # "sec":I
    .end local v8    # "hr":I
    .end local v10    # "min":I
    .end local v11    # "day":I
    .end local v12    # "dayOfMSpec":Z
    .end local v17    # "tmon":I
    .end local v19    # "gotOne":Z
    .end local v20    # "afterTime":Ljava/util/Date;
    .end local v22    # "dayOfWSpec":Z
    .local v2, "afterTime":Ljava/util/Date;
    .local v3, "gotOne":Z
    :goto_f
    move v4, v9

    move/from16 v3, v19

    move-object/from16 v2, v20

    .end local v2    # "afterTime":Ljava/util/Date;
    .end local v3    # "gotOne":Z
    .restart local v19    # "gotOne":Z
    .restart local v20    # "afterTime":Ljava/util/Date;
    goto/16 :goto_0

    .line 1570
    .local v2, "mon":I
    .local v3, "t":I
    .restart local v4    # "year":I
    .restart local v5    # "st":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Ljava/lang/Integer;>;"
    .restart local v7    # "sec":I
    .restart local v8    # "hr":I
    .restart local v10    # "min":I
    .restart local v11    # "day":I
    .restart local v12    # "dayOfMSpec":Z
    .restart local v17    # "tmon":I
    .restart local v22    # "dayOfWSpec":Z
    :cond_31
    const/4 v9, 0x0

    const/4 v13, 0x1

    invoke-virtual {v1, v13, v4}, Ljava/util/Calendar;->set(II)V

    .line 1572
    const/4 v3, 0x1

    .line 1573
    .end local v2    # "mon":I
    .end local v4    # "year":I
    .end local v5    # "st":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Ljava/lang/Integer;>;"
    .end local v7    # "sec":I
    .end local v8    # "hr":I
    .end local v10    # "min":I
    .end local v11    # "day":I
    .end local v12    # "dayOfMSpec":Z
    .end local v17    # "tmon":I
    .end local v19    # "gotOne":Z
    .end local v22    # "dayOfWSpec":Z
    .local v3, "gotOne":Z
    move v4, v9

    move-object/from16 v2, v20

    goto/16 :goto_0

    .line 1556
    .restart local v2    # "mon":I
    .local v3, "t":I
    .restart local v4    # "year":I
    .restart local v5    # "st":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Ljava/lang/Integer;>;"
    .restart local v7    # "sec":I
    .restart local v8    # "hr":I
    .restart local v10    # "min":I
    .restart local v11    # "day":I
    .restart local v12    # "dayOfMSpec":Z
    .restart local v17    # "tmon":I
    .restart local v19    # "gotOne":Z
    .restart local v22    # "dayOfWSpec":Z
    :cond_32
    const/4 v6, 0x0

    return-object v6

    .line 1378
    .end local v3    # "t":I
    .end local v20    # "afterTime":Ljava/util/Date;
    .end local v22    # "dayOfWSpec":Z
    .local v2, "afterTime":Ljava/util/Date;
    .local v4, "dayOfWSpec":Z
    .restart local v14    # "t":I
    .restart local v15    # "mon":I
    :cond_33
    move-object/from16 v20, v2

    move/from16 v22, v4

    .line 1506
    .end local v2    # "afterTime":Ljava/util/Date;
    .end local v4    # "dayOfWSpec":Z
    .restart local v20    # "afterTime":Ljava/util/Date;
    .restart local v22    # "dayOfWSpec":Z
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    const-string v3, "Support for specifying both a day-of-week AND a day-of-month parameter is not implemented."

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1575
    .end local v5    # "st":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Ljava/lang/Integer;>;"
    .end local v7    # "sec":I
    .end local v8    # "hr":I
    .end local v10    # "min":I
    .end local v11    # "day":I
    .end local v12    # "dayOfMSpec":Z
    .end local v14    # "t":I
    .end local v15    # "mon":I
    .end local v17    # "tmon":I
    .end local v19    # "gotOne":Z
    .end local v20    # "afterTime":Ljava/util/Date;
    .end local v22    # "dayOfWSpec":Z
    .restart local v2    # "afterTime":Ljava/util/Date;
    .local v3, "gotOne":Z
    :cond_34
    move-object/from16 v20, v2

    .end local v2    # "afterTime":Ljava/util/Date;
    .restart local v20    # "afterTime":Ljava/util/Date;
    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    return-object v2
.end method

.method protected getTimeBefore(Ljava/util/Date;)Ljava/util/Date;
    .locals 8
    .param p1, "targetDate"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "targetDate"
        }
    .end annotation

    .line 1593
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/util/CronExpression;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    .line 1596
    .local v0, "cl":Ljava/util/Calendar;
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 1597
    const/16 v1, 0xe

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 1598
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    .line 1601
    .local v1, "targetDateNoMs":Ljava/util/Date;
    move-object v2, v1

    .line 1602
    .local v2, "start":Ljava/util/Date;
    invoke-direct {p0}, Lorg/apache/logging/log4j/core/util/CronExpression;->findMinIncrement()J

    move-result-wide v3

    .line 1605
    .local v3, "minIncrement":J
    :cond_0
    new-instance v5, Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    sub-long/2addr v6, v3

    invoke-direct {v5, v6, v7}, Ljava/util/Date;-><init>(J)V

    .line 1606
    .local v5, "prevCheckDate":Ljava/util/Date;
    invoke-virtual {p0, v5}, Lorg/apache/logging/log4j/core/util/CronExpression;->getTimeAfter(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v6

    .line 1607
    .local v6, "prevFireTime":Ljava/util/Date;
    if-eqz v6, :cond_2

    sget-object v7, Lorg/apache/logging/log4j/core/util/CronExpression;->MIN_DATE:Ljava/util/Date;

    invoke-virtual {v6, v7}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_0

    .line 1610
    :cond_1
    move-object v2, v5

    .line 1611
    .end local v5    # "prevCheckDate":Ljava/util/Date;
    invoke-virtual {v6, v1}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v5

    if-gez v5, :cond_0

    .line 1612
    return-object v6

    .line 1608
    .restart local v5    # "prevCheckDate":Ljava/util/Date;
    :cond_2
    :goto_0
    const/4 v7, 0x0

    return-object v7
.end method

.method public getTimeZone()Ljava/util/TimeZone;
    .locals 1

    .line 359
    iget-object v0, p0, Lorg/apache/logging/log4j/core/util/CronExpression;->timeZone:Ljava/util/TimeZone;

    if-nez v0, :cond_0

    .line 360
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/logging/log4j/core/util/CronExpression;->timeZone:Ljava/util/TimeZone;

    .line 363
    :cond_0
    iget-object v0, p0, Lorg/apache/logging/log4j/core/util/CronExpression;->timeZone:Ljava/util/TimeZone;

    return-object v0
.end method

.method protected getValue(ILjava/lang/String;I)Lorg/apache/logging/log4j/core/util/CronExpression$ValueSet;
    .locals 4
    .param p1, "v"    # I
    .param p2, "s"    # Ljava/lang/String;
    .param p3, "i"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x0
        }
        names = {
            "v",
            "s",
            "i"
        }
    .end annotation

    .line 1129
    invoke-virtual {p2, p3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1130
    .local v0, "c":C
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1131
    .local v1, "s1":Ljava/lang/StringBuilder;
    :goto_0
    const/16 v2, 0x30

    if-lt v0, v2, :cond_1

    const/16 v2, 0x39

    if-gt v0, v2, :cond_1

    .line 1132
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1133
    add-int/lit8 p3, p3, 0x1

    .line 1134
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-lt p3, v2, :cond_0

    .line 1135
    goto :goto_1

    .line 1137
    :cond_0
    invoke-virtual {p2, p3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_0

    .line 1139
    :cond_1
    :goto_1
    new-instance v2, Lorg/apache/logging/log4j/core/util/CronExpression$ValueSet;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lorg/apache/logging/log4j/core/util/CronExpression$ValueSet;-><init>(Lorg/apache/logging/log4j/core/util/CronExpression;Lorg/apache/logging/log4j/core/util/CronExpression$1;)V

    .line 1141
    .local v2, "val":Lorg/apache/logging/log4j/core/util/CronExpression$ValueSet;
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    if-ge p3, v3, :cond_2

    move v3, p3

    goto :goto_2

    :cond_2
    add-int/lit8 v3, p3, 0x1

    :goto_2
    iput v3, v2, Lorg/apache/logging/log4j/core/util/CronExpression$ValueSet;->pos:I

    .line 1142
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/logging/log4j/core/util/Integers;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v2, Lorg/apache/logging/log4j/core/util/CronExpression$ValueSet;->value:I

    .line 1143
    return-object v2
.end method

.method protected isLeapYear(I)Z
    .locals 1
    .param p1, "year"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "year"
        }
    .end annotation

    .line 1667
    rem-int/lit8 v0, p1, 0x4

    if-nez v0, :cond_0

    rem-int/lit8 v0, p1, 0x64

    if-nez v0, :cond_1

    :cond_0
    rem-int/lit16 v0, p1, 0x190

    if-nez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSatisfiedBy(Ljava/util/Date;)Z
    .locals 5
    .param p1, "date"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "date"
        }
    .end annotation

    .line 290
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/util/CronExpression;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    .line 291
    .local v0, "testDateCal":Ljava/util/Calendar;
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 292
    const/16 v1, 0xe

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 293
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    .line 295
    .local v1, "originalDate":Ljava/util/Date;
    const/16 v3, 0xd

    const/4 v4, -0x1

    invoke-virtual {v0, v3, v4}, Ljava/util/Calendar;->add(II)V

    .line 297
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/apache/logging/log4j/core/util/CronExpression;->getTimeAfter(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v3

    .line 299
    .local v3, "timeAfter":Ljava/util/Date;
    if-eqz v3, :cond_0

    invoke-virtual {v3, v1}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method protected setCalendarHour(Ljava/util/Calendar;I)V
    .locals 2
    .param p1, "cal"    # Ljava/util/Calendar;
    .param p2, "hour"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "cal",
            "hour"
        }
    .end annotation

    .line 1586
    const/16 v0, 0xb

    invoke-virtual {p1, v0, p2}, Ljava/util/Calendar;->set(II)V

    .line 1587
    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-eq v1, p2, :cond_0

    const/16 v1, 0x18

    if-eq p2, v1, :cond_0

    .line 1588
    add-int/lit8 v1, p2, 0x1

    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 1590
    :cond_0
    return-void
.end method

.method public setTimeZone(Ljava/util/TimeZone;)V
    .locals 0
    .param p1, "timeZone"    # Ljava/util/TimeZone;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "timeZone"
        }
    .end annotation

    .line 371
    iput-object p1, p0, Lorg/apache/logging/log4j/core/util/CronExpression;->timeZone:Ljava/util/TimeZone;

    .line 372
    return-void
.end method

.method protected skipWhiteSpace(ILjava/lang/String;)I
    .locals 2
    .param p1, "i"    # I
    .param p2, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10
        }
        names = {
            "i",
            "s"
        }
    .end annotation

    .line 926
    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p1, v0, :cond_1

    invoke-virtual {p2, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x20

    if-eq v0, v1, :cond_0

    invoke-virtual {p2, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 930
    :cond_1
    return p1
.end method

.method protected storeExpressionVals(ILjava/lang/String;I)I
    .locals 16
    .param p1, "pos"    # I
    .param p2, "s"    # Ljava/lang/String;
    .param p3, "type"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "pos",
            "s",
            "type"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 504
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move/from16 v3, p3

    const/4 v4, 0x0

    .line 505
    .local v4, "incr":I
    invoke-virtual/range {p0 .. p2}, Lorg/apache/logging/log4j/core/util/CronExpression;->skipWhiteSpace(ILjava/lang/String;)I

    move-result v0

    .line 506
    .local v0, "i":I
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v5

    if-lt v0, v5, :cond_0

    .line 507
    return v0

    .line 509
    :cond_0
    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 510
    .local v5, "c":C
    const/16 v6, 0x41

    const/16 v7, 0x4c

    const/16 v8, 0x2d

    const/4 v9, 0x4

    const/4 v11, 0x5

    const/4 v12, 0x1

    if-lt v5, v6, :cond_e

    const/16 v6, 0x5a

    if-gt v5, v6, :cond_e

    const-string v6, "L"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_e

    const-string v6, "LW"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_e

    const-string v6, "^L-[0-9]*[W]?"

    invoke-virtual {v2, v6}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_e

    .line 511
    add-int/lit8 v6, v0, 0x3

    invoke-virtual {v2, v0, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 512
    .local v6, "sub":Ljava/lang/String;
    const/4 v13, -0x1

    .line 513
    .local v13, "sval":I
    const/4 v14, -0x1

    .line 514
    .local v14, "eval":I
    const-string v15, "\'"

    if-ne v3, v9, :cond_3

    .line 515
    invoke-virtual {v1, v6}, Lorg/apache/logging/log4j/core/util/CronExpression;->getMonthNumber(Ljava/lang/String;)I

    move-result v7

    add-int/2addr v7, v12

    .line 516
    .end local v13    # "sval":I
    .local v7, "sval":I
    const-string v9, "Invalid Month value: \'"

    if-lez v7, :cond_2

    .line 519
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v11

    add-int/lit8 v13, v0, 0x3

    if-le v11, v13, :cond_a

    .line 520
    add-int/lit8 v11, v0, 0x3

    invoke-virtual {v2, v11}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 521
    if-ne v5, v8, :cond_a

    .line 522
    add-int/lit8 v0, v0, 0x4

    .line 523
    add-int/lit8 v8, v0, 0x3

    invoke-virtual {v2, v0, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 524
    invoke-virtual {v1, v6}, Lorg/apache/logging/log4j/core/util/CronExpression;->getMonthNumber(Ljava/lang/String;)I

    move-result v8

    add-int/lit8 v14, v8, 0x1

    .line 525
    if-lez v14, :cond_1

    goto/16 :goto_0

    .line 526
    :cond_1
    new-instance v8, Ljava/text/ParseException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9, v0}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v8

    .line 517
    :cond_2
    new-instance v8, Ljava/text/ParseException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9, v0}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v8

    .line 530
    .end local v7    # "sval":I
    .restart local v13    # "sval":I
    :cond_3
    if-ne v3, v11, :cond_d

    .line 531
    invoke-virtual {v1, v6}, Lorg/apache/logging/log4j/core/util/CronExpression;->getDayOfWeekNumber(Ljava/lang/String;)I

    move-result v9

    .line 532
    .end local v13    # "sval":I
    .local v9, "sval":I
    const-string v13, "Invalid Day-of-Week value: \'"

    if-ltz v9, :cond_c

    .line 536
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v11, v0, 0x3

    if-le v10, v11, :cond_9

    .line 537
    add-int/lit8 v10, v0, 0x3

    invoke-virtual {v2, v10}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 538
    const/16 v10, 0x23

    if-eq v5, v10, :cond_7

    if-eq v5, v8, :cond_5

    if-eq v5, v7, :cond_4

    .line 567
    move v7, v9

    goto :goto_0

    .line 563
    :cond_4
    iput-boolean v12, v1, Lorg/apache/logging/log4j/core/util/CronExpression;->lastdayOfWeek:Z

    .line 564
    add-int/lit8 v0, v0, 0x1

    .line 565
    move v7, v9

    goto :goto_0

    .line 540
    :cond_5
    add-int/lit8 v0, v0, 0x4

    .line 541
    add-int/lit8 v7, v0, 0x3

    invoke-virtual {v2, v0, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 542
    invoke-virtual {v1, v6}, Lorg/apache/logging/log4j/core/util/CronExpression;->getDayOfWeekNumber(Ljava/lang/String;)I

    move-result v14

    .line 543
    if-ltz v14, :cond_6

    move v7, v9

    goto :goto_0

    .line 544
    :cond_6
    new-instance v7, Ljava/text/ParseException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v0}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v7

    .line 551
    :cond_7
    add-int/lit8 v7, v0, 0x4

    .line 552
    .end local v0    # "i":I
    .local v7, "i":I
    :try_start_0
    invoke-virtual {v2, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/logging/log4j/core/util/Integers;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lorg/apache/logging/log4j/core/util/CronExpression;->nthdayOfWeek:I

    .line 553
    if-lt v0, v12, :cond_8

    const/4 v8, 0x5

    if-gt v0, v8, :cond_8

    .line 560
    move v0, v7

    move v7, v9

    goto :goto_0

    .line 554
    :cond_8
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    .end local v4    # "incr":I
    .end local v5    # "c":C
    .end local v6    # "sub":Ljava/lang/String;
    .end local v7    # "i":I
    .end local v9    # "sval":I
    .end local v14    # "eval":I
    .end local p0    # "this":Lorg/apache/logging/log4j/core/util/CronExpression;
    .end local p1    # "pos":I
    .end local p2    # "s":Ljava/lang/String;
    .end local p3    # "type":I
    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 556
    .restart local v4    # "incr":I
    .restart local v5    # "c":C
    .restart local v6    # "sub":Ljava/lang/String;
    .restart local v7    # "i":I
    .restart local v9    # "sval":I
    .restart local v14    # "eval":I
    .restart local p0    # "this":Lorg/apache/logging/log4j/core/util/CronExpression;
    .restart local p1    # "pos":I
    .restart local p2    # "s":Ljava/lang/String;
    .restart local p3    # "type":I
    :catch_0
    move-exception v0

    .line 557
    .local v0, "e":Ljava/lang/Exception;
    new-instance v8, Ljava/text/ParseException;

    const-string v10, "A numeric value between 1 and 5 must follow the \'#\' option"

    invoke-direct {v8, v10, v7}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v8

    .line 536
    .end local v7    # "i":I
    .local v0, "i":I
    :cond_9
    move v7, v9

    .line 576
    .end local v9    # "sval":I
    .local v7, "sval":I
    :cond_a
    :goto_0
    const/4 v8, -0x1

    if-eq v14, v8, :cond_b

    .line 577
    const/4 v4, 0x1

    .line 579
    :cond_b
    invoke-virtual {v1, v7, v14, v4, v3}, Lorg/apache/logging/log4j/core/util/CronExpression;->addToSet(IIII)V

    .line 580
    add-int/lit8 v8, v0, 0x3

    return v8

    .line 533
    .end local v7    # "sval":I
    .restart local v9    # "sval":I
    :cond_c
    new-instance v7, Ljava/text/ParseException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v0}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v7

    .line 572
    .end local v9    # "sval":I
    .restart local v13    # "sval":I
    :cond_d
    new-instance v7, Ljava/text/ParseException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Illegal characters for this position: \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v0}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v7

    .line 583
    .end local v6    # "sub":Ljava/lang/String;
    .end local v13    # "sval":I
    .end local v14    # "eval":I
    :cond_e
    const/16 v6, 0x9

    const/16 v10, 0x20

    const/4 v11, 0x7

    const/16 v13, 0x2f

    const/16 v14, 0x2a

    const/4 v15, 0x3

    if-eq v5, v14, :cond_1f

    if-eq v5, v13, :cond_1f

    const/16 v9, 0x3f

    const/4 v13, 0x0

    if-eq v5, v9, :cond_18

    if-eq v5, v7, :cond_12

    .line 675
    const/16 v6, 0x30

    if-lt v5, v6, :cond_11

    const/16 v7, 0x39

    if-gt v5, v7, :cond_11

    .line 676
    invoke-static {v5}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 677
    .local v8, "val":I
    add-int/2addr v0, v12

    .line 678
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v9

    if-lt v0, v9, :cond_f

    .line 679
    const/4 v6, -0x1

    invoke-virtual {v1, v8, v6, v6, v3}, Lorg/apache/logging/log4j/core/util/CronExpression;->addToSet(IIII)V

    .line 690
    .end local v8    # "val":I
    nop

    .line 696
    return v0

    .line 681
    .restart local v8    # "val":I
    :cond_f
    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 682
    if-lt v5, v6, :cond_10

    if-gt v5, v7, :cond_10

    .line 683
    invoke-virtual {v1, v8, v2, v0}, Lorg/apache/logging/log4j/core/util/CronExpression;->getValue(ILjava/lang/String;I)Lorg/apache/logging/log4j/core/util/CronExpression$ValueSet;

    move-result-object v6

    .line 684
    .local v6, "vs":Lorg/apache/logging/log4j/core/util/CronExpression$ValueSet;
    iget v8, v6, Lorg/apache/logging/log4j/core/util/CronExpression$ValueSet;->value:I

    .line 685
    iget v0, v6, Lorg/apache/logging/log4j/core/util/CronExpression$ValueSet;->pos:I

    .line 687
    .end local v6    # "vs":Lorg/apache/logging/log4j/core/util/CronExpression$ValueSet;
    :cond_10
    invoke-virtual {v1, v0, v2, v8, v3}, Lorg/apache/logging/log4j/core/util/CronExpression;->checkNext(ILjava/lang/String;II)I

    move-result v0

    .line 688
    return v0

    .line 691
    .end local v8    # "val":I
    :cond_11
    new-instance v6, Ljava/text/ParseException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unexpected character: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v0}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v6

    .line 648
    :cond_12
    add-int/2addr v0, v12

    .line 649
    if-ne v3, v15, :cond_13

    .line 650
    iput-boolean v12, v1, Lorg/apache/logging/log4j/core/util/CronExpression;->lastdayOfMonth:Z

    .line 652
    :cond_13
    const/4 v6, 0x5

    if-ne v3, v6, :cond_14

    .line 653
    invoke-virtual {v1, v11, v11, v13, v3}, Lorg/apache/logging/log4j/core/util/CronExpression;->addToSet(IIII)V

    .line 655
    :cond_14
    if-ne v3, v15, :cond_17

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v6

    if-le v6, v0, :cond_17

    .line 656
    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 657
    if-ne v5, v8, :cond_16

    .line 658
    add-int/lit8 v6, v0, 0x1

    invoke-virtual {v1, v13, v2, v6}, Lorg/apache/logging/log4j/core/util/CronExpression;->getValue(ILjava/lang/String;I)Lorg/apache/logging/log4j/core/util/CronExpression$ValueSet;

    move-result-object v6

    .line 659
    .restart local v6    # "vs":Lorg/apache/logging/log4j/core/util/CronExpression$ValueSet;
    iget v7, v6, Lorg/apache/logging/log4j/core/util/CronExpression$ValueSet;->value:I

    iput v7, v1, Lorg/apache/logging/log4j/core/util/CronExpression;->lastdayOffset:I

    .line 660
    const/16 v8, 0x1e

    if-gt v7, v8, :cond_15

    .line 663
    iget v0, v6, Lorg/apache/logging/log4j/core/util/CronExpression$ValueSet;->pos:I

    goto :goto_1

    .line 661
    :cond_15
    new-instance v7, Ljava/text/ParseException;

    add-int/lit8 v8, v0, 0x1

    const-string v9, "Offset from last day must be <= 30"

    invoke-direct {v7, v9, v8}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v7

    .line 665
    .end local v6    # "vs":Lorg/apache/logging/log4j/core/util/CronExpression$ValueSet;
    :cond_16
    :goto_1
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v6

    if-le v6, v0, :cond_17

    .line 666
    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 667
    const/16 v6, 0x57

    if-ne v5, v6, :cond_17

    .line 668
    iput-boolean v12, v1, Lorg/apache/logging/log4j/core/util/CronExpression;->nearestWeekday:Z

    .line 669
    add-int/lit8 v0, v0, 0x1

    .line 673
    :cond_17
    return v0

    .line 585
    :cond_18
    add-int/2addr v0, v12

    .line 586
    add-int/lit8 v7, v0, 0x1

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v7, v8, :cond_1a

    .line 587
    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-eq v7, v10, :cond_1a

    add-int/lit8 v7, v0, 0x1

    invoke-virtual {v2, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-ne v7, v6, :cond_19

    goto :goto_2

    .line 588
    :cond_19
    new-instance v6, Ljava/text/ParseException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Illegal character after \'?\': "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 589
    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v0}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v6

    .line 591
    :cond_1a
    :goto_2
    const/4 v6, 0x5

    if-eq v3, v6, :cond_1c

    if-ne v3, v15, :cond_1b

    goto :goto_3

    .line 592
    :cond_1b
    new-instance v6, Ljava/text/ParseException;

    const-string v7, "\'?\' can only be specfied for Day-of-Month or Day-of-Week."

    invoke-direct {v6, v7, v0}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v6

    .line 596
    :cond_1c
    :goto_3
    const/16 v6, 0x62

    const/4 v7, 0x5

    if-ne v3, v7, :cond_1e

    iget-boolean v7, v1, Lorg/apache/logging/log4j/core/util/CronExpression;->lastdayOfMonth:Z

    if-nez v7, :cond_1e

    .line 597
    iget-object v7, v1, Lorg/apache/logging/log4j/core/util/CronExpression;->daysOfMonth:Ljava/util/TreeSet;

    invoke-virtual {v7}, Ljava/util/TreeSet;->last()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 598
    .local v7, "val":I
    if-eq v7, v6, :cond_1d

    goto :goto_4

    .line 599
    :cond_1d
    new-instance v6, Ljava/text/ParseException;

    const-string v8, "\'?\' can only be specfied for Day-of-Month -OR- Day-of-Week."

    invoke-direct {v6, v8, v0}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v6

    .line 604
    .end local v7    # "val":I
    :cond_1e
    :goto_4
    const/4 v7, -0x1

    invoke-virtual {v1, v6, v7, v13, v3}, Lorg/apache/logging/log4j/core/util/CronExpression;->addToSet(IIII)V

    .line 605
    return v0

    .line 608
    :cond_1f
    const/16 v7, 0x63

    if-ne v5, v14, :cond_20

    add-int/lit8 v8, v0, 0x1

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v9

    if-lt v8, v9, :cond_20

    .line 609
    const/4 v6, -0x1

    invoke-virtual {v1, v7, v6, v4, v3}, Lorg/apache/logging/log4j/core/util/CronExpression;->addToSet(IIII)V

    .line 610
    add-int/lit8 v6, v0, 0x1

    return v6

    .line 611
    :cond_20
    if-ne v5, v13, :cond_22

    add-int/lit8 v8, v0, 0x1

    .line 612
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v8, v9, :cond_21

    add-int/lit8 v8, v0, 0x1

    invoke-virtual {v2, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-eq v8, v10, :cond_21

    add-int/lit8 v8, v0, 0x1

    .line 613
    invoke-virtual {v2, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-eq v8, v6, :cond_21

    goto :goto_5

    .line 614
    :cond_21
    new-instance v6, Ljava/text/ParseException;

    const-string v7, "\'/\' must be followed by an integer."

    invoke-direct {v6, v7, v0}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v6

    .line 615
    :cond_22
    :goto_5
    if-ne v5, v14, :cond_23

    .line 616
    add-int/lit8 v0, v0, 0x1

    .line 618
    :cond_23
    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 619
    if-ne v5, v13, :cond_2f

    .line 620
    add-int/lit8 v0, v0, 0x1

    .line 621
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v0, v6, :cond_2e

    .line 625
    invoke-virtual {v1, v2, v0}, Lorg/apache/logging/log4j/core/util/CronExpression;->getNumericValue(Ljava/lang/String;I)I

    move-result v4

    .line 627
    add-int/2addr v0, v12

    .line 628
    const/16 v6, 0xa

    if-le v4, v6, :cond_24

    .line 629
    add-int/lit8 v0, v0, 0x1

    .line 631
    :cond_24
    const/16 v6, 0x3b

    if-le v4, v6, :cond_26

    if-eqz v3, :cond_25

    if-eq v3, v12, :cond_25

    goto :goto_6

    .line 632
    :cond_25
    new-instance v6, Ljava/text/ParseException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Increment > 60 : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v0}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v6

    .line 633
    :cond_26
    :goto_6
    const/16 v6, 0x17

    if-le v4, v6, :cond_28

    const/4 v6, 0x2

    if-eq v3, v6, :cond_27

    goto :goto_7

    .line 634
    :cond_27
    new-instance v6, Ljava/text/ParseException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Increment > 24 : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v0}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v6

    .line 635
    :cond_28
    :goto_7
    const/16 v6, 0x1f

    if-le v4, v6, :cond_2a

    if-eq v3, v15, :cond_29

    goto :goto_8

    .line 636
    :cond_29
    new-instance v6, Ljava/text/ParseException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Increment > 31 : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v0}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v6

    .line 637
    :cond_2a
    :goto_8
    if-le v4, v11, :cond_2c

    const/4 v6, 0x5

    if-eq v3, v6, :cond_2b

    goto :goto_9

    .line 638
    :cond_2b
    new-instance v6, Ljava/text/ParseException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Increment > 7 : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v0}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v6

    .line 639
    :cond_2c
    :goto_9
    const/16 v6, 0xc

    if-le v4, v6, :cond_30

    const/4 v6, 0x4

    if-eq v3, v6, :cond_2d

    goto :goto_a

    .line 640
    :cond_2d
    new-instance v6, Ljava/text/ParseException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Increment > 12 : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v0}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v6

    .line 622
    :cond_2e
    new-instance v6, Ljava/text/ParseException;

    const-string v7, "Unexpected end of string."

    invoke-direct {v6, v7, v0}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v6

    .line 643
    :cond_2f
    const/4 v4, 0x1

    .line 645
    :cond_30
    :goto_a
    const/4 v6, -0x1

    invoke-virtual {v1, v7, v6, v4, v3}, Lorg/apache/logging/log4j/core/util/CronExpression;->addToSet(IIII)V

    .line 646
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 381
    iget-object v0, p0, Lorg/apache/logging/log4j/core/util/CronExpression;->cronExpression:Ljava/lang/String;

    return-object v0
.end method
