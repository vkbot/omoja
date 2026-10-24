.class public final enum Lorg/apache/logging/log4j/spi/StandardLevel;
.super Ljava/lang/Enum;
.source "StandardLevel.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/logging/log4j/spi/StandardLevel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/logging/log4j/spi/StandardLevel;

.field public static final enum ALL:Lorg/apache/logging/log4j/spi/StandardLevel;

.field public static final enum DEBUG:Lorg/apache/logging/log4j/spi/StandardLevel;

.field public static final enum ERROR:Lorg/apache/logging/log4j/spi/StandardLevel;

.field public static final enum FATAL:Lorg/apache/logging/log4j/spi/StandardLevel;

.field public static final enum INFO:Lorg/apache/logging/log4j/spi/StandardLevel;

.field private static final LEVELSET:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lorg/apache/logging/log4j/spi/StandardLevel;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum OFF:Lorg/apache/logging/log4j/spi/StandardLevel;

.field public static final enum TRACE:Lorg/apache/logging/log4j/spi/StandardLevel;

.field public static final enum WARN:Lorg/apache/logging/log4j/spi/StandardLevel;


# instance fields
.field private final intLevel:I


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 29
    new-instance v0, Lorg/apache/logging/log4j/spi/StandardLevel;

    const-string v1, "OFF"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lorg/apache/logging/log4j/spi/StandardLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/logging/log4j/spi/StandardLevel;->OFF:Lorg/apache/logging/log4j/spi/StandardLevel;

    .line 34
    new-instance v0, Lorg/apache/logging/log4j/spi/StandardLevel;

    const-string v1, "FATAL"

    const/4 v3, 0x1

    const/16 v4, 0x64

    invoke-direct {v0, v1, v3, v4}, Lorg/apache/logging/log4j/spi/StandardLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/logging/log4j/spi/StandardLevel;->FATAL:Lorg/apache/logging/log4j/spi/StandardLevel;

    .line 39
    new-instance v0, Lorg/apache/logging/log4j/spi/StandardLevel;

    const-string v1, "ERROR"

    const/4 v4, 0x2

    const/16 v5, 0xc8

    invoke-direct {v0, v1, v4, v5}, Lorg/apache/logging/log4j/spi/StandardLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/logging/log4j/spi/StandardLevel;->ERROR:Lorg/apache/logging/log4j/spi/StandardLevel;

    .line 44
    new-instance v0, Lorg/apache/logging/log4j/spi/StandardLevel;

    const-string v1, "WARN"

    const/4 v5, 0x3

    const/16 v6, 0x12c

    invoke-direct {v0, v1, v5, v6}, Lorg/apache/logging/log4j/spi/StandardLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/logging/log4j/spi/StandardLevel;->WARN:Lorg/apache/logging/log4j/spi/StandardLevel;

    .line 49
    new-instance v0, Lorg/apache/logging/log4j/spi/StandardLevel;

    const-string v1, "INFO"

    const/4 v6, 0x4

    const/16 v7, 0x190

    invoke-direct {v0, v1, v6, v7}, Lorg/apache/logging/log4j/spi/StandardLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/logging/log4j/spi/StandardLevel;->INFO:Lorg/apache/logging/log4j/spi/StandardLevel;

    .line 54
    new-instance v0, Lorg/apache/logging/log4j/spi/StandardLevel;

    const-string v1, "DEBUG"

    const/4 v7, 0x5

    const/16 v8, 0x1f4

    invoke-direct {v0, v1, v7, v8}, Lorg/apache/logging/log4j/spi/StandardLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/logging/log4j/spi/StandardLevel;->DEBUG:Lorg/apache/logging/log4j/spi/StandardLevel;

    .line 59
    new-instance v0, Lorg/apache/logging/log4j/spi/StandardLevel;

    const-string v1, "TRACE"

    const/4 v8, 0x6

    const/16 v9, 0x258

    invoke-direct {v0, v1, v8, v9}, Lorg/apache/logging/log4j/spi/StandardLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/logging/log4j/spi/StandardLevel;->TRACE:Lorg/apache/logging/log4j/spi/StandardLevel;

    .line 64
    new-instance v0, Lorg/apache/logging/log4j/spi/StandardLevel;

    const-string v1, "ALL"

    const/4 v9, 0x7

    const v10, 0x7fffffff

    invoke-direct {v0, v1, v9, v10}, Lorg/apache/logging/log4j/spi/StandardLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/logging/log4j/spi/StandardLevel;->ALL:Lorg/apache/logging/log4j/spi/StandardLevel;

    .line 24
    const/16 v1, 0x8

    new-array v1, v1, [Lorg/apache/logging/log4j/spi/StandardLevel;

    sget-object v10, Lorg/apache/logging/log4j/spi/StandardLevel;->OFF:Lorg/apache/logging/log4j/spi/StandardLevel;

    aput-object v10, v1, v2

    sget-object v2, Lorg/apache/logging/log4j/spi/StandardLevel;->FATAL:Lorg/apache/logging/log4j/spi/StandardLevel;

    aput-object v2, v1, v3

    sget-object v2, Lorg/apache/logging/log4j/spi/StandardLevel;->ERROR:Lorg/apache/logging/log4j/spi/StandardLevel;

    aput-object v2, v1, v4

    sget-object v2, Lorg/apache/logging/log4j/spi/StandardLevel;->WARN:Lorg/apache/logging/log4j/spi/StandardLevel;

    aput-object v2, v1, v5

    sget-object v2, Lorg/apache/logging/log4j/spi/StandardLevel;->INFO:Lorg/apache/logging/log4j/spi/StandardLevel;

    aput-object v2, v1, v6

    sget-object v2, Lorg/apache/logging/log4j/spi/StandardLevel;->DEBUG:Lorg/apache/logging/log4j/spi/StandardLevel;

    aput-object v2, v1, v7

    sget-object v2, Lorg/apache/logging/log4j/spi/StandardLevel;->TRACE:Lorg/apache/logging/log4j/spi/StandardLevel;

    aput-object v2, v1, v8

    aput-object v0, v1, v9

    sput-object v1, Lorg/apache/logging/log4j/spi/StandardLevel;->$VALUES:[Lorg/apache/logging/log4j/spi/StandardLevel;

    .line 66
    const-class v0, Lorg/apache/logging/log4j/spi/StandardLevel;

    invoke-static {v0}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    sput-object v0, Lorg/apache/logging/log4j/spi/StandardLevel;->LEVELSET:Ljava/util/EnumSet;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "val"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x10
        }
        names = {
            "$enum$name",
            "$enum$ordinal",
            "val"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 70
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 71
    iput p3, p0, Lorg/apache/logging/log4j/spi/StandardLevel;->intLevel:I

    .line 72
    return-void
.end method

.method public static getStandardLevel(I)Lorg/apache/logging/log4j/spi/StandardLevel;
    .locals 4
    .param p0, "intLevel"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "intLevel"
        }
    .end annotation

    .line 90
    sget-object v0, Lorg/apache/logging/log4j/spi/StandardLevel;->OFF:Lorg/apache/logging/log4j/spi/StandardLevel;

    .line 91
    .local v0, "level":Lorg/apache/logging/log4j/spi/StandardLevel;
    sget-object v1, Lorg/apache/logging/log4j/spi/StandardLevel;->LEVELSET:Ljava/util/EnumSet;

    invoke-virtual {v1}, Ljava/util/EnumSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/logging/log4j/spi/StandardLevel;

    .line 92
    .local v2, "lvl":Lorg/apache/logging/log4j/spi/StandardLevel;
    invoke-virtual {v2}, Lorg/apache/logging/log4j/spi/StandardLevel;->intLevel()I

    move-result v3

    if-le v3, p0, :cond_0

    .line 93
    goto :goto_1

    .line 95
    :cond_0
    move-object v0, v2

    .line 96
    .end local v2    # "lvl":Lorg/apache/logging/log4j/spi/StandardLevel;
    goto :goto_0

    .line 97
    :cond_1
    :goto_1
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/logging/log4j/spi/StandardLevel;
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

    .line 24
    const-class v0, Lorg/apache/logging/log4j/spi/StandardLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/spi/StandardLevel;

    return-object v0
.end method

.method public static values()[Lorg/apache/logging/log4j/spi/StandardLevel;
    .locals 1

    .line 24
    sget-object v0, Lorg/apache/logging/log4j/spi/StandardLevel;->$VALUES:[Lorg/apache/logging/log4j/spi/StandardLevel;

    invoke-virtual {v0}, [Lorg/apache/logging/log4j/spi/StandardLevel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/logging/log4j/spi/StandardLevel;

    return-object v0
.end method


# virtual methods
.method public intLevel()I
    .locals 1

    .line 80
    iget v0, p0, Lorg/apache/logging/log4j/spi/StandardLevel;->intLevel:I

    return v0
.end method
