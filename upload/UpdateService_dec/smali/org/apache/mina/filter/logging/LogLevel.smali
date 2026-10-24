.class public final enum Lorg/apache/mina/filter/logging/LogLevel;
.super Ljava/lang/Enum;
.source "LogLevel.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/mina/filter/logging/LogLevel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/mina/filter/logging/LogLevel;

.field public static final enum DEBUG:Lorg/apache/mina/filter/logging/LogLevel;

.field public static final enum ERROR:Lorg/apache/mina/filter/logging/LogLevel;

.field public static final enum INFO:Lorg/apache/mina/filter/logging/LogLevel;

.field public static final enum NONE:Lorg/apache/mina/filter/logging/LogLevel;

.field public static final enum TRACE:Lorg/apache/mina/filter/logging/LogLevel;

.field public static final enum WARN:Lorg/apache/mina/filter/logging/LogLevel;


# instance fields
.field private level:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 34
    new-instance v0, Lorg/apache/mina/filter/logging/LogLevel;

    const-string v1, "TRACE"

    const/4 v2, 0x0

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/mina/filter/logging/LogLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/mina/filter/logging/LogLevel;->TRACE:Lorg/apache/mina/filter/logging/LogLevel;

    .line 39
    new-instance v0, Lorg/apache/mina/filter/logging/LogLevel;

    const-string v1, "DEBUG"

    const/4 v4, 0x1

    const/4 v5, 0x4

    invoke-direct {v0, v1, v4, v5}, Lorg/apache/mina/filter/logging/LogLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/mina/filter/logging/LogLevel;->DEBUG:Lorg/apache/mina/filter/logging/LogLevel;

    .line 44
    new-instance v0, Lorg/apache/mina/filter/logging/LogLevel;

    const-string v1, "INFO"

    const/4 v6, 0x2

    const/4 v7, 0x3

    invoke-direct {v0, v1, v6, v7}, Lorg/apache/mina/filter/logging/LogLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/mina/filter/logging/LogLevel;->INFO:Lorg/apache/mina/filter/logging/LogLevel;

    .line 49
    new-instance v0, Lorg/apache/mina/filter/logging/LogLevel;

    const-string v1, "WARN"

    invoke-direct {v0, v1, v7, v6}, Lorg/apache/mina/filter/logging/LogLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/mina/filter/logging/LogLevel;->WARN:Lorg/apache/mina/filter/logging/LogLevel;

    .line 54
    new-instance v0, Lorg/apache/mina/filter/logging/LogLevel;

    const-string v1, "ERROR"

    invoke-direct {v0, v1, v5, v4}, Lorg/apache/mina/filter/logging/LogLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/mina/filter/logging/LogLevel;->ERROR:Lorg/apache/mina/filter/logging/LogLevel;

    .line 59
    new-instance v0, Lorg/apache/mina/filter/logging/LogLevel;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v3, v2}, Lorg/apache/mina/filter/logging/LogLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/mina/filter/logging/LogLevel;->NONE:Lorg/apache/mina/filter/logging/LogLevel;

    .line 29
    const/4 v1, 0x6

    new-array v1, v1, [Lorg/apache/mina/filter/logging/LogLevel;

    sget-object v8, Lorg/apache/mina/filter/logging/LogLevel;->TRACE:Lorg/apache/mina/filter/logging/LogLevel;

    aput-object v8, v1, v2

    sget-object v2, Lorg/apache/mina/filter/logging/LogLevel;->DEBUG:Lorg/apache/mina/filter/logging/LogLevel;

    aput-object v2, v1, v4

    sget-object v2, Lorg/apache/mina/filter/logging/LogLevel;->INFO:Lorg/apache/mina/filter/logging/LogLevel;

    aput-object v2, v1, v6

    sget-object v2, Lorg/apache/mina/filter/logging/LogLevel;->WARN:Lorg/apache/mina/filter/logging/LogLevel;

    aput-object v2, v1, v7

    sget-object v2, Lorg/apache/mina/filter/logging/LogLevel;->ERROR:Lorg/apache/mina/filter/logging/LogLevel;

    aput-object v2, v1, v5

    aput-object v0, v1, v3

    sput-object v1, Lorg/apache/mina/filter/logging/LogLevel;->$VALUES:[Lorg/apache/mina/filter/logging/LogLevel;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "level"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 69
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 70
    iput p3, p0, Lorg/apache/mina/filter/logging/LogLevel;->level:I

    .line 71
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/mina/filter/logging/LogLevel;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 29
    const-class v0, Lorg/apache/mina/filter/logging/LogLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/filter/logging/LogLevel;

    return-object v0
.end method

.method public static values()[Lorg/apache/mina/filter/logging/LogLevel;
    .locals 1

    .line 29
    sget-object v0, Lorg/apache/mina/filter/logging/LogLevel;->$VALUES:[Lorg/apache/mina/filter/logging/LogLevel;

    invoke-virtual {v0}, [Lorg/apache/mina/filter/logging/LogLevel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/mina/filter/logging/LogLevel;

    return-object v0
.end method


# virtual methods
.method public getLevel()I
    .locals 1

    .line 77
    iget v0, p0, Lorg/apache/mina/filter/logging/LogLevel;->level:I

    return v0
.end method
