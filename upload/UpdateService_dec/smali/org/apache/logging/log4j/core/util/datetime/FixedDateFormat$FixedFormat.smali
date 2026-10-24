.class public final enum Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedFormat;
.super Ljava/lang/Enum;
.source "FixedDateFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FixedFormat"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedFormat;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedFormat;

.field public static final enum ABSOLUTE:Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedFormat;

.field public static final enum ABSOLUTE_MICROS:Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedFormat;

.field public static final enum ABSOLUTE_NANOS:Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedFormat;

.field public static final enum ABSOLUTE_PERIOD:Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedFormat;

.field public static final enum COMPACT:Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedFormat;

.field public static final enum DATE:Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedFormat;

.field public static final enum DATE_PERIOD:Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedFormat;

.field public static final enum DEFAULT:Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedFormat;

.field public static final enum DEFAULT_MICROS:Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedFormat;

.field public static final enum DEFAULT_NANOS:Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedFormat;

.field public static final enum DEFAULT_PERIOD:Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedFormat;

.field private static final DEFAULT_SECOND_FRACTION_PATTERN:Ljava/lang/String; = "SSS"

.field private static final EMPTY_RANGE:[I

.field public static final enum ISO8601:Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedFormat;

.field public static final enum ISO8601_BASIC:Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedFormat;

.field public static final enum ISO8601_BASIC_PERIOD:Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedFormat;

.field public static final enum ISO8601_OFFSET_DATE_TIME_HH:Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedFormat;

.field public static final enum ISO8601_OFFSET_DATE_TIME_HHCMM:Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedFormat;

.field public static final enum ISO8601_OFFSET_DATE_TIME_HHMM:Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedFormat;

.field public static final enum ISO8601_PERIOD:Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedFormat;

.field public static final enum ISO8601_PERIOD_MICROS:Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedFormat;

.field private static final MILLI_FRACTION_DIGITS:I

.field private static final SECOND_FRACTION_PATTERN:C = 'n'

.field public static final enum US_MONTH_DAY_YEAR2_TIME:Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedFormat;

.field public static final enum US_MONTH_DAY_YEAR4_TIME:Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedFormat;


# instance fields
.field private final datePattern:Ljava/lang/String;

.field private final escapeCount:I

.field private final fixedTimeZoneFormat:Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedTimeZoneFormat;

.field private final millisSeparatorChar:C

.field private final millisSeparatorLength:I

.field private final pattern:Ljava/lang/String;

.field private final secondFractionDigits:I

.field private final timeSeparatorChar:C

.field private final timeSeparatorLength:I


# direct methods
.method static constructor <clinit>()V
    .locals 25

    .line 49
    new-instance v12, Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedFormat;

    const-string v1, "ABSOLUTE"

    const/4 v2, 0x0

    const-string v3, "HH:mm:ss,SSS"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x3a

    const/4 v7, 0x1

    const/16 v8, 0x2c

    const/4 v9, 0x1

    const/4 v10, 0x3

    const/4 v11, 0x0

    move-object v0, v12

    invoke-direct/range {v0 .. v11}, Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedFormat;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ICICIILorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedTimeZoneFormat;)V

    sput-object v12, Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedFormat;->ABSOLUTE:Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedFormat;

    .line 53
    new-instance v0, Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedFormat;

    const-string v14, "ABSOLUTE_MICROS"

    const/4 v15, 0x1

    const-string v16, "HH:mm:ss,nnnnnn"

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x3a

    const/16 v20, 0x1

    const/16 v21, 0x2c

    const/16 v22, 0x1

    const/16 v23, 0x6

    const/16 v24, 0x0

    move-object v13, v0

    invoke-direct/range {v13 .. v24}, Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedFormat;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ICICIILorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedTimeZoneFormat;)V

    sput-object v0, Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedFormat;->ABSOLUTE_MICROS:Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedFormat;

    .line 57
    new-instance v0, Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedFormat;

    const-string v2, "ABSOLUTE_NANOS"

    const/4 v3, 0x2

    const-string v4, "HH:mm:ss,nnnnnnnnn"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x3a

    const/4 v8, 0x1

    const/16 v9, 0x2c

    const/4 v10, 0x1

    const/16 v11, 0x9

    const/4 v12, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v12}, Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedFormat;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ICICIILorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedTimeZoneFormat;)V

    sput-object v0, Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedFormat;->ABSOLUTE_NANOS:Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedFormat;

    .line 62
    new-instance v0, Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedFormat;

    const-string v14, "ABSOLUTE_PERIOD"

    const/4 v15, 0x3

    const-string v16, "HH:mm:ss.SSS"

    const/16 v21, 0x2e

    const/16 v23, 0x3

    move-object v13, v0

    invoke-direct/range {v13 .. v24}, Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedFormat;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ICICIILorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedTimeZoneFormat;)V

    sput-object v0, Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedFormat;->ABSOLUTE_PERIOD:Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedFormat;

    .line 67
    new-instance v0, Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedFormat;

    const-string v2, "COMPACT"

    const/4 v3, 0x4

    const-string v4, "yyyyMMddHHmmssSSS"

    const-string v5, "yyyyMMdd"

    const/16 v7, 0x20

    const/4 v8, 0x0

    const/16 v9, 0x20

    const/4 v10, 0x0

    const/4 v11, 0x3

    move-object v1, v0

    invoke-direct/range {v1 .. v12}, Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedFormat;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ICICIILorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedTimeZoneFormat;)V

    sput-object v0, Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedFormat;->COMPACT:Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedFormat;

    .line 72
    new-instance v0, Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedFormat;

    const-string v14, "DATE"

    const/4 v15, 0x5

    const-string v16, "dd MMM yyyy HH:mm:ss,SSS"

    const-string v17, "dd MMM yyyy "

    const/16 v21, 0x2c

    move-object v13, v0

    invoke-direct/range {v13 .. v24}, Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedFormat;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ICICIILorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedTimeZoneFormat;)V

    sput-object v0, Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedFormat;->DATE:Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedFormat;

    .line 77
    new-instance v0, Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedFormat;

    const-string v2, "DATE_PERIOD"

    const/4 v3, 0x6

    const-string v4, "dd MMM yyyy HH:mm:ss.SSS"

    const-string v5, "dd MMM yyyy "

    const/16 v7, 0x3a

    const/4 v8, 0x1

    const/16 v9, 0x2e

    const/4 v10, 0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v12}, Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedFormat;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ICICIILorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedTimeZoneFormat;)V

    sput-object v0, Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedFormat;->DATE_PERIOD:Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedFormat;

    .line 82
    new-instance v0, Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedFormat;

    const-string v14, "DEFAULT"

    const/4 v15, 0x7

    const-string v16, "yyyy-MM-dd HH:mm:ss,SSS"

    const-string v17, "yyyy-MM-dd "

    move-object v13, v0

    invoke-direct/range {v13 .. v24}, Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedFormat;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ICICIILorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedTimeZoneFormat;)V

    sput-object v0, Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedFormat;->DEFAULT:Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedFormat;

    .line 86
    new-instance v0, Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedFormat;

    const-string v2, "DEFAULT_MICROS"

    const/16 v3, 0x8

    const-string v4, "yyyy-MM-dd HH:mm:ss,nnnnnn"

    const-string v5, "yyyy-MM-dd "

    const/16 v9, 0x2c

    const/4 v11, 0x6

    move-object v1, v0

    invoke-direct/range {v1 .. v12}, Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedFormat;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ICICIILorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedTimeZoneFormat;)V

    sput-object v0, Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedFormat;->DEFAULT_MICROS:Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedFormat;

    .line 90
    new-instance v0, Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedFormat;

    const-string v14, "DEFAULT_NANOS"

    const/16 v15, 0x9

    const-string v16, "yyyy-MM-dd HH:mm:ss,nnnnnnnnn"

    const-string v17, "yyyy-MM-dd "

    const/16 v23, 0x9

    move-object v13, v0

    invoke-direct/range {v13 .. v24}, Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedFormat;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ICICIILorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedTimeZoneFormat;)V

    sput-object v0, Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedFormat;->DEFAULT_NANOS:Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedFormat;

    .line 95
    new-instance v0, Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedFormat;

    const-string v2, "DEFAULT_PERIOD"

    const/16 v3, 0xa

    const-string v4, "yyyy-MM-dd HH:mm:ss.SSS"

    const-string v5, "yyyy-MM-dd "

    const/16 v9, 0x2e

    const/4 v11, 0x3

    move-object v1, v0

    invoke-direct/range {v1 .. v12}, Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedFormat;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ICICIILorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedTimeZoneFormat;)V

    sput-object v0, Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedFormat;->DEFAULT_PERIOD:Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedFormat;

    .line 100
    new-instance v0, Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedFormat;

    const-string v14, "ISO8601_BASIC"

    const/16 v15, 0xb

    const-string v16, "yyyyMMdd\'T\'HHmmss,SSS"

    const-string v17, "yyyyMMdd\'T\'"

    const/16 v18, 0x2

    const/16 v19, 0x20

    const/16 v20, 0x0

    const/16 v23, 0x3

    move-object v13, v0

    invoke-direct/range {v13 .. v24}, Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedFormat;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ICICIILorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedTimeZoneFormat;)V

    sput-object v0, Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedFormat;->ISO8601_BASIC:Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedFormat;

    .line 105
    new-instance v0, Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedFormat;

    const-string v2, "ISO8601_BASIC_PERIOD"

    const/16 v3, 0xc

    const-string v4, "yyyyMMdd\'T\'HHmmss.SSS"

    const-string v5, "yyyyMMdd\'T\'"

    const/4 v6, 0x2

    const/16 v7, 0x20

    const/4 v8, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v12}, Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedFormat;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ICICIILorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedTimeZoneFormat;)V

    sput-object v0, Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedFormat;->ISO8601_BASIC_PERIOD:Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedFormat;

    .line 110
    new-instance v0, Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedFormat;

    const-string v14, "ISO8601"

    const/16 v15, 0xd

    const-string v16, "yyyy-MM-dd\'T\'HH:mm:ss,SSS"

    const-string v17, "yyyy-MM-dd\'T\'"

    const/16 v19, 0x3a

    const/16 v20, 0x1

    move-object v13, v0

    invoke-direct/range {v13 .. v24}, Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedFormat;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ICICIILorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedTimeZoneFormat;)V

    sput-object v0, Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedFormat;->ISO8601:Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedFormat;

    .line 122
    new-instance v0, Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedFormat;

    sget-object v12, Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedTimeZoneFormat;->HH:Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedTimeZoneFormat;

    const-string v2, "ISO8601_OFFSET_DATE_TIME_HH"

    const/16 v3, 0xe

    const-string v4, "yyyy-MM-dd\'T\'HH:mm:ss,SSSX"

    const-string v5, "yyyy-MM-dd\'T\'"

    const/16 v7, 0x3a

    const/4 v8, 0x1

    const/16 v9, 0x2c

    move-object v1, v0

    invoke-direct/range {v1 .. v12}, Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedFormat;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ICICIILorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedTimeZoneFormat;)V

    sput-object v0, Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedFormat;->ISO8601_OFFSET_DATE_TIME_HH:Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedFormat;

    .line 127
    new-instance v0, Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedFormat;

    sget-object v24, Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedTimeZoneFormat;->HHMM:Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedTimeZoneFormat;

    const-string v14, "ISO8601_OFFSET_DATE_TIME_HHMM"

    const/16 v15, 0xf

    const-string v16, "yyyy-MM-dd\'T\'HH:mm:ss,SSSXX"

    const-string v17, "yyyy-MM-dd\'T\'"

    move-object v13, v0

    invoke-direct/range {v13 .. v24}, Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedFormat;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ICICIILorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedTimeZoneFormat;)V

    sput-object v0, Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedFormat;->ISO8601_OFFSET_DATE_TIME_HHMM:Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedFormat;

    .line 132
    new-instance v0, Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedFormat;

    sget-object v12, Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedTimeZoneFormat;->HHCMM:Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedTimeZoneFormat;

    const-string v2, "ISO8601_OFFSET_DATE_TIME_HHCMM"

    const/16 v3, 0x10

    const-string v4, "yyyy-MM-dd\'T\'HH:mm:ss,SSSXXX"

    const-string v5, "yyyy-MM-dd\'T\'"

    move-object v1, v0

    invoke-direct/range {v1 .. v12}, Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedFormat;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ICICIILorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedTimeZoneFormat;)V

    sput-object v0, Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedFormat;->ISO8601_OFFSET_DATE_TIME_HHCMM:Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedFormat;

    .line 137
    new-instance v0, Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedFormat;

    const-string v14, "ISO8601_PERIOD"

    const/16 v15, 0x11

    const-string v16, "yyyy-MM-dd\'T\'HH:mm:ss.SSS"

    const-string v17, "yyyy-MM-dd\'T\'"

    const/16 v21, 0x2e

    const/16 v24, 0x0

    move-object v13, v0

    invoke-direct/range {v13 .. v24}, Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedFormat;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ICICIILorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedTimeZoneFormat;)V

    sput-object v0, Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedFormat;->ISO8601_PERIOD:Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedFormat;

    .line 142
    new-instance v0, Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedFormat;

    const-string v2, "ISO8601_PERIOD_MICROS"

    const/16 v3, 0x12

    const-string v4, "yyyy-MM-dd\'T\'HH:mm:ss.nnnnnn"

    const-string v5, "yyyy-MM-dd\'T\'"

    const/16 v9, 0x2e

    const/4 v11, 0x6

    const/4 v12, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v12}, Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedFormat;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ICICIILorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedTimeZoneFormat;)V

    sput-object v0, Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedFormat;->ISO8601_PERIOD_MICROS:Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedFormat;

    .line 147
    new-instance v0, Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedFormat;

    const-string v14, "US_MONTH_DAY_YEAR2_TIME"

    const/16 v15, 0x13

    const-string v16, "dd/MM/yy HH:mm:ss.SSS"

    const-string v17, "dd/MM/yy "

    const/16 v18, 0x0

    move-object v13, v0

    invoke-direct/range {v13 .. v24}, Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedFormat;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ICICIILorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedTimeZoneFormat;)V

    sput-object v0, Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedFormat;->US_MONTH_DAY_YEAR2_TIME:Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedFormat;

    .line 152
    new-instance v0, Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedFormat;

    const-string v2, "US_MONTH_DAY_YEAR4_TIME"

    const/16 v3, 0x14

    const-string v4, "dd/MM/yyyy HH:mm:ss.SSS"

    const-string v5, "dd/MM/yyyy "

    const/4 v6, 0x0

    const/4 v11, 0x3

    move-object v1, v0

    invoke-direct/range {v1 .. v12}, Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedFormat;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ICICIILorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedTimeZoneFormat;)V

    sput-object v0, Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedFormat;->US_MONTH_DAY_YEAR4_TIME:Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedFormat;

    .line 44
    const/16 v1, 0x15

    new-array v1, v1, [Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedFormat;

    sget-object v2, Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedFormat;->ABSOLUTE:Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedFormat;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedFormat;->ABSOLUTE_MICROS:Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedFormat;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    sget-object v2, Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedFormat;->ABSOLUTE_NANOS:Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedFormat;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    sget-object v2, Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedFormat;->ABSOLUTE_PERIOD:Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedFormat;

    const/4 v4, 0x3

    aput-object v2, v1, v4

    sget-object v2, Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedFormat;->COMPACT:Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedFormat;

    const/4 v4, 0x4

    aput-object v2, v1, v4

    sget-object v2, Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedFormat;->DATE:Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedFormat;

    const/4 v4, 0x5

    aput-object v2, v1, v4

    sget-object v2, Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedFormat;->DATE_PERIOD:Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedFormat;

    const/4 v4, 0x6

    aput-object v2, v1, v4

    sget-object v2, Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedFormat;->DEFAULT:Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedFormat;

    const/4 v4, 0x7

    aput-object v2, v1, v4

    sget-object v2, Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedFormat;->DEFAULT_MICROS:Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedFormat;

    const/16 v4, 0x8

    aput-object v2, v1, v4

    sget-object v2, Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedFormat;->DEFAULT_NANOS:Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedFormat;

    const/16 v4, 0x9

    aput-object v2, v1, v4

    sget-object v2, Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedFormat;->DEFAULT_PERIOD:Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedFormat;

    const/16 v4, 0xa

    aput-object v2, v1, v4

    sget-object v2, Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedFormat;->ISO8601_BASIC:Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedFormat;

    const/16 v4, 0xb

    aput-object v2, v1, v4

    sget-object v2, Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedFormat;->ISO8601_BASIC_PERIOD:Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedFormat;

    const/16 v4, 0xc

    aput-object v2, v1, v4

    sget-object v2, Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedFormat;->ISO8601:Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedFormat;

    const/16 v4, 0xd

    aput-object v2, v1, v4

    sget-object v2, Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedFormat;->ISO8601_OFFSET_DATE_TIME_HH:Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedFormat;

    const/16 v4, 0xe

    aput-object v2, v1, v4

    sget-object v2, Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedFormat;->ISO8601_OFFSET_DATE_TIME_HHMM:Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedFormat;

    const/16 v4, 0xf

    aput-object v2, v1, v4

    sget-object v2, Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedFormat;->ISO8601_OFFSET_DATE_TIME_HHCMM:Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedFormat;

    const/16 v4, 0x10

    aput-object v2, v1, v4

    sget-object v2, Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedFormat;->ISO8601_PERIOD:Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedFormat;

    const/16 v4, 0x11

    aput-object v2, v1, v4

    sget-object v2, Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedFormat;->ISO8601_PERIOD_MICROS:Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedFormat;

    const/16 v4, 0x12

    aput-object v2, v1, v4

    sget-object v2, Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedFormat;->US_MONTH_DAY_YEAR2_TIME:Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedFormat;

    const/16 v4, 0x13

    aput-object v2, v1, v4

    const/16 v2, 0x14

    aput-object v0, v1, v2

    sput-object v1, Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedFormat;->$VALUES:[Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedFormat;

    .line 155
    const-string v0, "SSS"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sput v0, Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedFormat;->MILLI_FRACTION_DIGITS:I

    .line 231
    new-array v0, v3, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedFormat;->EMPTY_RANGE:[I

    return-void

    nop

    :array_0
    .array-data 4
        -0x1
        -0x1
    .end array-data
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ICICIILorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedTimeZoneFormat;)V
    .locals 0
    .param p3, "pattern"    # Ljava/lang/String;
    .param p4, "datePattern"    # Ljava/lang/String;
    .param p5, "escapeCount"    # I
    .param p6, "timeSeparator"    # C
    .param p7, "timeSepLength"    # I
    .param p8, "millisSeparator"    # C
    .param p9, "millisSepLength"    # I
    .param p10, "secondFractionDigits"    # I
    .param p11, "timeZoneFormat"    # Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedTimeZoneFormat;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "$enum$name",
            "$enum$ordinal",
            "pattern",
            "datePattern",
            "escapeCount",
            "timeSeparator",
            "timeSepLength",
            "millisSeparator",
            "millisSepLength",
            "secondFractionDigits",
            "timeZoneFormat"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ICICII",
            "Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedTimeZoneFormat;",
            ")V"
        }
    .end annotation

    .line 170
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 171
    iput-char p6, p0, Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedFormat;->timeSeparatorChar:C

    .line 172
    iput p7, p0, Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedFormat;->timeSeparatorLength:I

    .line 173
    iput-char p8, p0, Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedFormat;->millisSeparatorChar:C

    .line 174
    iput p9, p0, Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedFormat;->millisSeparatorLength:I

    .line 175
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object p1, p3

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedFormat;->pattern:Ljava/lang/String;

    .line 176
    iput-object p4, p0, Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedFormat;->datePattern:Ljava/lang/String;

    .line 177
    iput p5, p0, Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedFormat;->escapeCount:I

    .line 178
    iput p10, p0, Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedFormat;->secondFractionDigits:I

    .line 179
    iput-object p11, p0, Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedFormat;->fixedTimeZoneFormat:Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedTimeZoneFormat;

    .line 180
    return-void
.end method

.method static synthetic access$000(Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedFormat;)C
    .locals 1
    .param p0, "x0"    # Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedFormat;

    .line 44
    iget-char v0, p0, Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedFormat;->timeSeparatorChar:C

    return v0
.end method

.method static synthetic access$100(Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedFormat;)I
    .locals 1
    .param p0, "x0"    # Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedFormat;

    .line 44
    iget v0, p0, Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedFormat;->timeSeparatorLength:I

    return v0
.end method

.method static synthetic access$200(Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedFormat;)C
    .locals 1
    .param p0, "x0"    # Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedFormat;

    .line 44
    iget-char v0, p0, Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedFormat;->millisSeparatorChar:C

    return v0
.end method

.method static synthetic access$300(Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedFormat;)I
    .locals 1
    .param p0, "x0"    # Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedFormat;

    .line 44
    iget v0, p0, Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedFormat;->millisSeparatorLength:I

    return v0
.end method

.method static synthetic access$400(Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedFormat;)Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedTimeZoneFormat;
    .locals 1
    .param p0, "x0"    # Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedFormat;

    .line 44
    iget-object v0, p0, Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedFormat;->fixedTimeZoneFormat:Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedTimeZoneFormat;

    return-object v0
.end method

.method static synthetic access$500(Ljava/lang/String;)[I
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;

    .line 44
    invoke-static {p0}, Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedFormat;->nanoRange(Ljava/lang/String;)[I

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600()I
    .locals 1

    .line 44
    sget v0, Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedFormat;->MILLI_FRACTION_DIGITS:I

    return v0
.end method

.method public static lookup(Ljava/lang/String;)Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedFormat;
    .locals 5
    .param p0, "nameOrPattern"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "nameOrPattern"
        }
    .end annotation

    .line 207
    invoke-static {}, Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedFormat;->values()[Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedFormat;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 208
    .local v3, "type":Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedFormat;
    invoke-virtual {v3}, Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedFormat;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v3}, Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedFormat;->getPattern()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    .line 207
    .end local v3    # "type":Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedFormat;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 209
    .restart local v3    # "type":Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedFormat;
    :cond_1
    :goto_1
    return-object v3

    .line 212
    .end local v3    # "type":Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedFormat;
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method static lookupIgnoringNanos(Ljava/lang/String;)Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedFormat;
    .locals 9
    .param p0, "pattern"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "pattern"
        }
    .end annotation

    .line 216
    invoke-static {p0}, Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedFormat;->nanoRange(Ljava/lang/String;)[I

    move-result-object v0

    .line 217
    .local v0, "nanoRange":[I
    const/4 v1, 0x0

    aget v2, v0, v1

    .line 218
    .local v2, "nanoStart":I
    const/4 v3, 0x1

    aget v3, v0, v3

    .line 219
    .local v3, "nanoEnd":I
    if-lez v2, :cond_1

    .line 220
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "SSS"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {p0, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 222
    .local v4, "subPattern":Ljava/lang/String;
    invoke-static {}, Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedFormat;->values()[Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedFormat;

    move-result-object v5

    array-length v6, v5

    :goto_0
    if-ge v1, v6, :cond_1

    aget-object v7, v5, v1

    .line 223
    .local v7, "type":Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedFormat;
    invoke-virtual {v7}, Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedFormat;->getPattern()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 224
    return-object v7

    .line 222
    .end local v7    # "type":Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedFormat;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 228
    .end local v4    # "subPattern":Ljava/lang/String;
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method private static nanoRange(Ljava/lang/String;)[I
    .locals 5
    .param p0, "pattern"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "pattern"
        }
    .end annotation

    .line 237
    const/16 v0, 0x6e

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 238
    .local v1, "indexStart":I
    const/4 v2, -0x1

    .line 239
    .local v2, "indexEnd":I
    if-ltz v1, :cond_3

    .line 240
    const/16 v3, 0x5a

    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .line 241
    if-gez v2, :cond_0

    const/16 v3, 0x58

    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    move v2, v3

    .line 242
    if-gez v2, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    goto :goto_1

    :cond_1
    move v3, v2

    :goto_1
    move v2, v3

    .line 243
    add-int/lit8 v3, v1, 0x1

    .local v3, "i":I
    :goto_2
    if-ge v3, v2, :cond_3

    .line 244
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v4, v0, :cond_2

    .line 245
    sget-object v0, Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedFormat;->EMPTY_RANGE:[I

    return-object v0

    .line 243
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 249
    .end local v3    # "i":I
    :cond_3
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v3, 0x0

    aput v1, v0, v3

    const/4 v3, 0x1

    aput v2, v0, v3

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedFormat;
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

    .line 44
    const-class v0, Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedFormat;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedFormat;

    return-object v0
.end method

.method public static values()[Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedFormat;
    .locals 1

    .line 44
    sget-object v0, Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedFormat;->$VALUES:[Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedFormat;

    invoke-virtual {v0}, [Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedFormat;

    return-object v0
.end method


# virtual methods
.method public getDatePattern()Ljava/lang/String;
    .locals 1

    .line 197
    iget-object v0, p0, Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedFormat;->datePattern:Ljava/lang/String;

    return-object v0
.end method

.method public getDatePatternLength()I
    .locals 2

    .line 267
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedFormat;->getDatePattern()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedFormat;->getDatePattern()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget v1, p0, Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedFormat;->escapeCount:I

    sub-int/2addr v0, v1

    :goto_0
    return v0
.end method

.method public getFastDateFormat()Lorg/apache/logging/log4j/core/util/datetime/FastDateFormat;
    .locals 1

    .line 277
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedFormat;->getFastDateFormat(Ljava/util/TimeZone;)Lorg/apache/logging/log4j/core/util/datetime/FastDateFormat;

    move-result-object v0

    return-object v0
.end method

.method public getFastDateFormat(Ljava/util/TimeZone;)Lorg/apache/logging/log4j/core/util/datetime/FastDateFormat;
    .locals 1
    .param p1, "tz"    # Ljava/util/TimeZone;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "tz"
        }
    .end annotation

    .line 288
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedFormat;->getDatePattern()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedFormat;->getDatePattern()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/apache/logging/log4j/core/util/datetime/FastDateFormat;->getInstance(Ljava/lang/String;Ljava/util/TimeZone;)Lorg/apache/logging/log4j/core/util/datetime/FastDateFormat;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getFixedTimeZoneFormat()Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedTimeZoneFormat;
    .locals 1

    .line 304
    iget-object v0, p0, Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedFormat;->fixedTimeZoneFormat:Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedTimeZoneFormat;

    return-object v0
.end method

.method public getLength()I
    .locals 2

    .line 258
    iget-object v0, p0, Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedFormat;->pattern:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget v1, p0, Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedFormat;->escapeCount:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getPattern()Ljava/lang/String;
    .locals 1

    .line 188
    iget-object v0, p0, Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedFormat;->pattern:Ljava/lang/String;

    return-object v0
.end method

.method public getSecondFractionDigits()I
    .locals 1

    .line 296
    iget v0, p0, Lorg/apache/logging/log4j/core/util/datetime/FixedDateFormat$FixedFormat;->secondFractionDigits:I

    return v0
.end method
