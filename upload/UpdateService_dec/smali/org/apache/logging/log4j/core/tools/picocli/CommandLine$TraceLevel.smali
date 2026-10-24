.class final enum Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$TraceLevel;
.super Ljava/lang/Enum;
.source "CommandLine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "TraceLevel"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$TraceLevel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$TraceLevel;

.field public static final enum DEBUG:Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$TraceLevel;

.field public static final enum INFO:Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$TraceLevel;

.field public static final enum OFF:Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$TraceLevel;

.field public static final enum WARN:Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$TraceLevel;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 4659
    new-instance v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$TraceLevel;

    const-string v1, "OFF"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$TraceLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$TraceLevel;->OFF:Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$TraceLevel;

    new-instance v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$TraceLevel;

    const-string v1, "WARN"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$TraceLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$TraceLevel;->WARN:Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$TraceLevel;

    new-instance v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$TraceLevel;

    const-string v1, "INFO"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$TraceLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$TraceLevel;->INFO:Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$TraceLevel;

    new-instance v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$TraceLevel;

    const-string v1, "DEBUG"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$TraceLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$TraceLevel;->DEBUG:Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$TraceLevel;

    const/4 v1, 0x4

    new-array v1, v1, [Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$TraceLevel;

    sget-object v6, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$TraceLevel;->OFF:Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$TraceLevel;

    aput-object v6, v1, v2

    sget-object v2, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$TraceLevel;->WARN:Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$TraceLevel;

    aput-object v2, v1, v3

    sget-object v2, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$TraceLevel;->INFO:Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$TraceLevel;

    aput-object v2, v1, v4

    aput-object v0, v1, v5

    sput-object v1, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$TraceLevel;->$VALUES:[Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$TraceLevel;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "$enum$name",
            "$enum$ordinal"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 4659
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$2600(Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$TraceLevel;Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Tracer;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$TraceLevel;
    .param p1, "x1"    # Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Tracer;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # [Ljava/lang/Object;

    .line 4659
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$TraceLevel;->print(Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Tracer;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method static lookup(Ljava/lang/String;)Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$TraceLevel;
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "key"
        }
    .end annotation

    .line 4665
    if-nez p0, :cond_0

    sget-object v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$TraceLevel;->WARN:Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$TraceLevel;

    goto :goto_1

    :cond_0
    invoke-static {p0}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;->access$2400(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "true"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {p0}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$TraceLevel;->valueOf(Ljava/lang/String;)Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$TraceLevel;

    move-result-object v0

    goto :goto_1

    :cond_2
    :goto_0
    sget-object v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$TraceLevel;->INFO:Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$TraceLevel;

    :goto_1
    return-object v0
.end method

.method private prefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "msg"
        }
    .end annotation

    .line 4664
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[picocli "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private varargs print(Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Tracer;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p1, "tracer"    # Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Tracer;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "params"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "tracer",
            "msg",
            "params"
        }
    .end annotation

    .line 4662
    iget-object v0, p1, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Tracer;->level:Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$TraceLevel;

    invoke-virtual {v0, p0}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$TraceLevel;->isEnabled(Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$TraceLevel;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Tracer;->stream:Ljava/io/PrintStream;

    invoke-direct {p0, p2}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$TraceLevel;->prefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p3}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 4663
    :cond_0
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$TraceLevel;
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

    .line 4659
    const-class v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$TraceLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$TraceLevel;

    return-object v0
.end method

.method public static values()[Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$TraceLevel;
    .locals 1

    .line 4659
    sget-object v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$TraceLevel;->$VALUES:[Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$TraceLevel;

    invoke-virtual {v0}, [Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$TraceLevel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$TraceLevel;

    return-object v0
.end method


# virtual methods
.method public isEnabled(Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$TraceLevel;)Z
    .locals 2
    .param p1, "other"    # Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$TraceLevel;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "other"
        }
    .end annotation

    .line 4660
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$TraceLevel;->ordinal()I

    move-result v0

    invoke-virtual {p1}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$TraceLevel;->ordinal()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
