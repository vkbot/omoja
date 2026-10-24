.class final enum Lorg/apache/logging/log4j/util/PropertiesUtil$TimeUnit;
.super Ljava/lang/Enum;
.source "PropertiesUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/util/PropertiesUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "TimeUnit"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/logging/log4j/util/PropertiesUtil$TimeUnit;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/logging/log4j/util/PropertiesUtil$TimeUnit;

.field public static final enum DAYS:Lorg/apache/logging/log4j/util/PropertiesUtil$TimeUnit;

.field public static final enum HOURS:Lorg/apache/logging/log4j/util/PropertiesUtil$TimeUnit;

.field public static final enum MICROS:Lorg/apache/logging/log4j/util/PropertiesUtil$TimeUnit;

.field public static final enum MILLIS:Lorg/apache/logging/log4j/util/PropertiesUtil$TimeUnit;

.field public static final enum MINUTES:Lorg/apache/logging/log4j/util/PropertiesUtil$TimeUnit;

.field public static final enum NANOS:Lorg/apache/logging/log4j/util/PropertiesUtil$TimeUnit;

.field public static final enum SECONDS:Lorg/apache/logging/log4j/util/PropertiesUtil$TimeUnit;


# instance fields
.field private final descriptions:[Ljava/lang/String;

.field private final timeUnit:Ljava/time/temporal/ChronoUnit;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 597
    new-instance v0, Lorg/apache/logging/log4j/util/PropertiesUtil$TimeUnit;

    sget-object v1, Ljava/time/temporal/ChronoUnit;->NANOS:Ljava/time/temporal/ChronoUnit;

    const-string v2, "NANOS"

    const/4 v3, 0x0

    const-string v4, "ns,nano,nanos,nanosecond,nanoseconds"

    invoke-direct {v0, v2, v3, v4, v1}, Lorg/apache/logging/log4j/util/PropertiesUtil$TimeUnit;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/time/temporal/ChronoUnit;)V

    sput-object v0, Lorg/apache/logging/log4j/util/PropertiesUtil$TimeUnit;->NANOS:Lorg/apache/logging/log4j/util/PropertiesUtil$TimeUnit;

    .line 598
    new-instance v0, Lorg/apache/logging/log4j/util/PropertiesUtil$TimeUnit;

    sget-object v1, Ljava/time/temporal/ChronoUnit;->MICROS:Ljava/time/temporal/ChronoUnit;

    const-string v2, "MICROS"

    const/4 v4, 0x1

    const-string v5, "us,micro,micros,microsecond,microseconds"

    invoke-direct {v0, v2, v4, v5, v1}, Lorg/apache/logging/log4j/util/PropertiesUtil$TimeUnit;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/time/temporal/ChronoUnit;)V

    sput-object v0, Lorg/apache/logging/log4j/util/PropertiesUtil$TimeUnit;->MICROS:Lorg/apache/logging/log4j/util/PropertiesUtil$TimeUnit;

    .line 599
    new-instance v0, Lorg/apache/logging/log4j/util/PropertiesUtil$TimeUnit;

    sget-object v1, Ljava/time/temporal/ChronoUnit;->MILLIS:Ljava/time/temporal/ChronoUnit;

    const-string v2, "MILLIS"

    const/4 v5, 0x2

    const-string v6, "ms,milli,millis,millsecond,milliseconds"

    invoke-direct {v0, v2, v5, v6, v1}, Lorg/apache/logging/log4j/util/PropertiesUtil$TimeUnit;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/time/temporal/ChronoUnit;)V

    sput-object v0, Lorg/apache/logging/log4j/util/PropertiesUtil$TimeUnit;->MILLIS:Lorg/apache/logging/log4j/util/PropertiesUtil$TimeUnit;

    .line 600
    new-instance v0, Lorg/apache/logging/log4j/util/PropertiesUtil$TimeUnit;

    sget-object v1, Ljava/time/temporal/ChronoUnit;->SECONDS:Ljava/time/temporal/ChronoUnit;

    const-string v2, "SECONDS"

    const/4 v6, 0x3

    const-string v7, "s,second,seconds"

    invoke-direct {v0, v2, v6, v7, v1}, Lorg/apache/logging/log4j/util/PropertiesUtil$TimeUnit;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/time/temporal/ChronoUnit;)V

    sput-object v0, Lorg/apache/logging/log4j/util/PropertiesUtil$TimeUnit;->SECONDS:Lorg/apache/logging/log4j/util/PropertiesUtil$TimeUnit;

    .line 601
    new-instance v0, Lorg/apache/logging/log4j/util/PropertiesUtil$TimeUnit;

    sget-object v1, Ljava/time/temporal/ChronoUnit;->MINUTES:Ljava/time/temporal/ChronoUnit;

    const-string v2, "MINUTES"

    const/4 v7, 0x4

    const-string v8, "m,minute,minutes"

    invoke-direct {v0, v2, v7, v8, v1}, Lorg/apache/logging/log4j/util/PropertiesUtil$TimeUnit;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/time/temporal/ChronoUnit;)V

    sput-object v0, Lorg/apache/logging/log4j/util/PropertiesUtil$TimeUnit;->MINUTES:Lorg/apache/logging/log4j/util/PropertiesUtil$TimeUnit;

    .line 602
    new-instance v0, Lorg/apache/logging/log4j/util/PropertiesUtil$TimeUnit;

    sget-object v1, Ljava/time/temporal/ChronoUnit;->HOURS:Ljava/time/temporal/ChronoUnit;

    const-string v2, "HOURS"

    const/4 v8, 0x5

    const-string v9, "h,hour,hours"

    invoke-direct {v0, v2, v8, v9, v1}, Lorg/apache/logging/log4j/util/PropertiesUtil$TimeUnit;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/time/temporal/ChronoUnit;)V

    sput-object v0, Lorg/apache/logging/log4j/util/PropertiesUtil$TimeUnit;->HOURS:Lorg/apache/logging/log4j/util/PropertiesUtil$TimeUnit;

    .line 603
    new-instance v0, Lorg/apache/logging/log4j/util/PropertiesUtil$TimeUnit;

    sget-object v1, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    const-string v2, "DAYS"

    const/4 v9, 0x6

    const-string v10, "d,day,days"

    invoke-direct {v0, v2, v9, v10, v1}, Lorg/apache/logging/log4j/util/PropertiesUtil$TimeUnit;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/time/temporal/ChronoUnit;)V

    sput-object v0, Lorg/apache/logging/log4j/util/PropertiesUtil$TimeUnit;->DAYS:Lorg/apache/logging/log4j/util/PropertiesUtil$TimeUnit;

    .line 596
    const/4 v1, 0x7

    new-array v1, v1, [Lorg/apache/logging/log4j/util/PropertiesUtil$TimeUnit;

    sget-object v2, Lorg/apache/logging/log4j/util/PropertiesUtil$TimeUnit;->NANOS:Lorg/apache/logging/log4j/util/PropertiesUtil$TimeUnit;

    aput-object v2, v1, v3

    sget-object v2, Lorg/apache/logging/log4j/util/PropertiesUtil$TimeUnit;->MICROS:Lorg/apache/logging/log4j/util/PropertiesUtil$TimeUnit;

    aput-object v2, v1, v4

    sget-object v2, Lorg/apache/logging/log4j/util/PropertiesUtil$TimeUnit;->MILLIS:Lorg/apache/logging/log4j/util/PropertiesUtil$TimeUnit;

    aput-object v2, v1, v5

    sget-object v2, Lorg/apache/logging/log4j/util/PropertiesUtil$TimeUnit;->SECONDS:Lorg/apache/logging/log4j/util/PropertiesUtil$TimeUnit;

    aput-object v2, v1, v6

    sget-object v2, Lorg/apache/logging/log4j/util/PropertiesUtil$TimeUnit;->MINUTES:Lorg/apache/logging/log4j/util/PropertiesUtil$TimeUnit;

    aput-object v2, v1, v7

    sget-object v2, Lorg/apache/logging/log4j/util/PropertiesUtil$TimeUnit;->HOURS:Lorg/apache/logging/log4j/util/PropertiesUtil$TimeUnit;

    aput-object v2, v1, v8

    aput-object v0, v1, v9

    sput-object v1, Lorg/apache/logging/log4j/util/PropertiesUtil$TimeUnit;->$VALUES:[Lorg/apache/logging/log4j/util/PropertiesUtil$TimeUnit;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/time/temporal/ChronoUnit;)V
    .locals 0
    .param p3, "descriptions"    # Ljava/lang/String;
    .param p4, "timeUnit"    # Ljava/time/temporal/ChronoUnit;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0,
            0x0
        }
        names = {
            "$enum$name",
            "$enum$ordinal",
            "descriptions",
            "timeUnit"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/time/temporal/ChronoUnit;",
            ")V"
        }
    .end annotation

    .line 608
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 609
    const-string p1, ","

    invoke-virtual {p3, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/logging/log4j/util/PropertiesUtil$TimeUnit;->descriptions:[Ljava/lang/String;

    .line 610
    iput-object p4, p0, Lorg/apache/logging/log4j/util/PropertiesUtil$TimeUnit;->timeUnit:Ljava/time/temporal/ChronoUnit;

    .line 611
    return-void
.end method

.method static getDuration(Ljava/lang/String;)Ljava/time/Duration;
    .locals 15
    .param p0, "time"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "time"
        }
    .end annotation

    .line 618
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 619
    .local v0, "value":Ljava/lang/String;
    sget-object v1, Ljava/time/temporal/ChronoUnit;->MILLIS:Ljava/time/temporal/ChronoUnit;

    .line 620
    .local v1, "temporalUnit":Ljava/time/temporal/TemporalUnit;
    const-wide/16 v2, 0x0

    .line 621
    .local v2, "timeVal":J
    invoke-static {}, Lorg/apache/logging/log4j/util/PropertiesUtil$TimeUnit;->values()[Lorg/apache/logging/log4j/util/PropertiesUtil$TimeUnit;

    move-result-object v4

    array-length v5, v4

    const/4 v6, 0x0

    move v7, v6

    :goto_0
    if-ge v7, v5, :cond_2

    aget-object v8, v4, v7

    .line 622
    .local v8, "timeUnit":Lorg/apache/logging/log4j/util/PropertiesUtil$TimeUnit;
    iget-object v9, v8, Lorg/apache/logging/log4j/util/PropertiesUtil$TimeUnit;->descriptions:[Ljava/lang/String;

    array-length v10, v9

    move v11, v6

    :goto_1
    if-ge v11, v10, :cond_1

    aget-object v12, v9, v11

    .line 623
    .local v12, "suffix":Ljava/lang/String;
    invoke-virtual {v0, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 624
    iget-object v1, v8, Lorg/apache/logging/log4j/util/PropertiesUtil$TimeUnit;->timeUnit:Ljava/time/temporal/ChronoUnit;

    .line 625
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v13

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v14

    sub-int/2addr v13, v14

    invoke-virtual {v0, v6, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 622
    .end local v12    # "suffix":Ljava/lang/String;
    :cond_0
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 621
    .end local v8    # "timeUnit":Lorg/apache/logging/log4j/util/PropertiesUtil$TimeUnit;
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 629
    :cond_2
    invoke-static {v2, v3, v1}, Ljava/time/Duration;->of(JLjava/time/temporal/TemporalUnit;)Ljava/time/Duration;

    move-result-object v4

    return-object v4
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/logging/log4j/util/PropertiesUtil$TimeUnit;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 596
    const-class v0, Lorg/apache/logging/log4j/util/PropertiesUtil$TimeUnit;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/util/PropertiesUtil$TimeUnit;

    return-object v0
.end method

.method public static values()[Lorg/apache/logging/log4j/util/PropertiesUtil$TimeUnit;
    .locals 1

    .line 596
    sget-object v0, Lorg/apache/logging/log4j/util/PropertiesUtil$TimeUnit;->$VALUES:[Lorg/apache/logging/log4j/util/PropertiesUtil$TimeUnit;

    invoke-virtual {v0}, [Lorg/apache/logging/log4j/util/PropertiesUtil$TimeUnit;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/logging/log4j/util/PropertiesUtil$TimeUnit;

    return-object v0
.end method


# virtual methods
.method getTimeUnit()Ljava/time/temporal/ChronoUnit;
    .locals 1

    .line 614
    iget-object v0, p0, Lorg/apache/logging/log4j/util/PropertiesUtil$TimeUnit;->timeUnit:Ljava/time/temporal/ChronoUnit;

    return-object v0
.end method
