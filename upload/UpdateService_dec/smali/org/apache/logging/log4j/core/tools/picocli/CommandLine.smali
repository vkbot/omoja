.class public Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;
.super Ljava/lang/Object;
.source "CommandLine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$MissingTypeConverterException;,
        Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$OverwrittenOptionException;,
        Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$MaxValuesforFieldExceededException;,
        Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$UnmatchedArgumentException;,
        Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$ParameterIndexGapException;,
        Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$DuplicateOptionAnnotationsException;,
        Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$MissingParameterException;,
        Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$ParameterException;,
        Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$TypeConversionException;,
        Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$ExecutionException;,
        Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$InitializationException;,
        Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$PicocliException;,
        Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Tracer;,
        Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$TraceLevel;,
        Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Assert;,
        Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help;,
        Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$BuiltIn;,
        Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$PositionalParametersSorter;,
        Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;,
        Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Range;,
        Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$ITypeConverter;,
        Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Command;,
        Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Parameters;,
        Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Option;,
        Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$RunAll;,
        Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$RunLast;,
        Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$RunFirst;,
        Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$DefaultExceptionHandler;,
        Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$IExceptionHandler;,
        Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$IParseResultHandler;
    }
.end annotation


# static fields
.field public static final VERSION:Ljava/lang/String; = "2.0.3"


# instance fields
.field private commandName:Ljava/lang/String;

.field private final interpreter:Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;

.field private overwrittenOptionsAllowed:Z

.field private parent:Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;

.field private final tracer:Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Tracer;

.field private final unmatchedArguments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private unmatchedArgumentsAllowed:Z

.field private usageHelpRequested:Z

.field private versionHelpRequested:Z

.field private final versionLines:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 2
    .param p1, "command"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "command"
        }
    .end annotation

    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    new-instance v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Tracer;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Tracer;-><init>(Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$1;)V

    iput-object v0, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;->tracer:Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Tracer;

    .line 141
    const-string v0, "<main class>"

    iput-object v0, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;->commandName:Ljava/lang/String;

    .line 142
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;->overwrittenOptionsAllowed:Z

    .line 143
    iput-boolean v0, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;->unmatchedArgumentsAllowed:Z

    .line 144
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;->unmatchedArguments:Ljava/util/List;

    .line 148
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;->versionLines:Ljava/util/List;

    .line 158
    new-instance v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;

    invoke-direct {v0, p0, p1}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;-><init>(Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;->interpreter:Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;

    .line 159
    return-void
.end method

.method static synthetic access$1100(Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;

    .line 135
    iget-object v0, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;->versionLines:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1200(Ljava/lang/Object;)Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;
    .locals 1
    .param p0, "x0"    # Ljava/lang/Object;

    .line 135
    invoke-static {p0}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;->toCommandLine(Ljava/lang/Object;)Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1302(Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;)Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;
    .locals 0
    .param p0, "x0"    # Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;
    .param p1, "x1"    # Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;

    .line 135
    iput-object p1, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;->parent:Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;

    return-object p1
.end method

.method static synthetic access$1400(Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;

    .line 135
    iget-object v0, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;->commandName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1402(Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;
    .param p1, "x1"    # Ljava/lang/String;

    .line 135
    iput-object p1, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;->commandName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1600(Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;)Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Tracer;
    .locals 1
    .param p0, "x0"    # Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;

    .line 135
    iget-object v0, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;->tracer:Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Tracer;

    return-object v0
.end method

.method static synthetic access$1700(Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;)Z
    .locals 1
    .param p0, "x0"    # Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;

    .line 135
    iget-boolean v0, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;->versionHelpRequested:Z

    return v0
.end method

.method static synthetic access$1702(Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;
    .param p1, "x1"    # Z

    .line 135
    iput-boolean p1, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;->versionHelpRequested:Z

    return p1
.end method

.method static synthetic access$1800(Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;)Z
    .locals 1
    .param p0, "x0"    # Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;

    .line 135
    iget-boolean v0, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;->usageHelpRequested:Z

    return v0
.end method

.method static synthetic access$1802(Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;
    .param p1, "x1"    # Z

    .line 135
    iput-boolean p1, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;->usageHelpRequested:Z

    return p1
.end method

.method static synthetic access$2100(Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;

    .line 135
    iget-object v0, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;->unmatchedArguments:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$2200(Ljava/util/Stack;)Ljava/util/Stack;
    .locals 1
    .param p0, "x0"    # Ljava/util/Stack;

    .line 135
    invoke-static {p0}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;->reverse(Ljava/util/Stack;)Ljava/util/Stack;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2300(Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;)Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;
    .locals 1
    .param p0, "x0"    # Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;

    .line 135
    iget-object v0, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;->interpreter:Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;

    return-object v0
.end method

.method static synthetic access$2400(Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;

    .line 135
    invoke-static {p0}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;->empty(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2500(Ljava/lang/reflect/Field;)[Ljava/lang/Class;
    .locals 1
    .param p0, "x0"    # Ljava/lang/reflect/Field;

    .line 135
    invoke-static {p0}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;->getTypeAttribute(Ljava/lang/reflect/Field;)[Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2700([Ljava/lang/Object;)Z
    .locals 1
    .param p0, "x0"    # [Ljava/lang/Object;

    .line 135
    invoke-static {p0}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;->empty([Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;

    .line 135
    invoke-static {p0}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;->execute(Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3200([Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # [Ljava/lang/String;
    .param p1, "x1"    # I

    .line 135
    invoke-static {p0, p1}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;->str([Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Ljava/lang/Class;)Z
    .locals 1
    .param p0, "x0"    # Ljava/lang/Class;

    .line 135
    invoke-static {p0}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;->isMultiValue(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Ljava/lang/Class;)Z
    .locals 1
    .param p0, "x0"    # Ljava/lang/Class;

    .line 135
    invoke-static {p0}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;->isBoolean(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Ljava/lang/reflect/Field;)Z
    .locals 1
    .param p0, "x0"    # Ljava/lang/reflect/Field;

    .line 135
    invoke-static {p0}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;->isMultiValue(Ljava/lang/reflect/Field;)Z

    move-result v0

    return v0
.end method

.method public static varargs call(Ljava/util/concurrent/Callable;Ljava/io/PrintStream;Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi;[Ljava/lang/String;)Ljava/lang/Object;
    .locals 6
    .param p1, "out"    # Ljava/io/PrintStream;
    .param p2, "ansi"    # Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi;
    .param p3, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "callable",
            "out",
            "ansi",
            "args"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/util/concurrent/Callable<",
            "TT;>;T:",
            "Ljava/lang/Object;",
            ">(TC;",
            "Ljava/io/PrintStream;",
            "Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi;",
            "[",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 886
    .local p0, "callable":Ljava/util/concurrent/Callable;, "TC;"
    new-instance v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;

    invoke-direct {v0, p0}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;-><init>(Ljava/lang/Object;)V

    .line 887
    .local v0, "cmd":Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;
    new-instance v1, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$RunLast;

    invoke-direct {v1}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$RunLast;-><init>()V

    new-instance v4, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$DefaultExceptionHandler;

    invoke-direct {v4}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$DefaultExceptionHandler;-><init>()V

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;->parseWithHandlers(Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$IParseResultHandler;Ljava/io/PrintStream;Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi;Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$IExceptionHandler;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 888
    .local v1, "results":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x0

    :goto_1
    return-object v2
.end method

.method public static varargs call(Ljava/util/concurrent/Callable;Ljava/io/PrintStream;[Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "out"    # Ljava/io/PrintStream;
    .param p2, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "callable",
            "out",
            "args"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/util/concurrent/Callable<",
            "TT;>;T:",
            "Ljava/lang/Object;",
            ">(TC;",
            "Ljava/io/PrintStream;",
            "[",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 838
    .local p0, "callable":Ljava/util/concurrent/Callable;, "TC;"
    sget-object v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi;->AUTO:Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi;

    invoke-static {p0, p1, v0, p2}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;->call(Ljava/util/concurrent/Callable;Ljava/io/PrintStream;Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi;[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private static empty(Ljava/lang/String;)Z
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "str"
        }
    .end annotation

    .line 1039
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private static empty(Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;)Z
    .locals 1
    .param p0, "txt"    # Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "txt"
        }
    .end annotation

    .line 1041
    if-eqz p0, :cond_1

    invoke-static {p0}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;->access$600(Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private static empty([Ljava/lang/Object;)Z
    .locals 1
    .param p0, "array"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "array"
        }
    .end annotation

    .line 1040
    if-eqz p0, :cond_1

    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private static execute(Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;)Ljava/lang/Object;
    .locals 6
    .param p0, "parsed"    # Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "parsed"
        }
    .end annotation

    .line 447
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;->getCommand()Ljava/lang/Object;

    move-result-object v0

    .line 448
    .local v0, "command":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/Runnable;

    const-string v2, ")"

    if-eqz v1, :cond_0

    .line 450
    :try_start_0
    move-object v1, v0

    check-cast v1, Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 451
    const/4 v1, 0x0

    return-object v1

    .line 452
    :catch_0
    move-exception v1

    .line 453
    .local v1, "ex":Ljava/lang/Exception;
    new-instance v3, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$ExecutionException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error while running command ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, p0, v2, v1}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$ExecutionException;-><init>(Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;Ljava/lang/String;Ljava/lang/Exception;)V

    throw v3

    .line 455
    .end local v1    # "ex":Ljava/lang/Exception;
    :cond_0
    instance-of v1, v0, Ljava/util/concurrent/Callable;

    if-eqz v1, :cond_1

    .line 457
    :try_start_1
    move-object v1, v0

    check-cast v1, Ljava/util/concurrent/Callable;

    invoke-interface {v1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object v1

    .line 458
    :catch_1
    move-exception v1

    .line 459
    .restart local v1    # "ex":Ljava/lang/Exception;
    new-instance v3, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$ExecutionException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error while calling command ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, p0, v2, v1}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$ExecutionException;-><init>(Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;Ljava/lang/String;Ljava/lang/Exception;)V

    throw v3

    .line 462
    .end local v1    # "ex":Ljava/lang/Exception;
    :cond_1
    new-instance v1, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$ExecutionException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Parsed command ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ") is not Runnable or Callable"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$ExecutionException;-><init>(Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;Ljava/lang/String;)V

    throw v1
.end method

.method private static getTypeAttribute(Ljava/lang/reflect/Field;)[Ljava/lang/Class;
    .locals 11
    .param p0, "field"    # Ljava/lang/reflect/Field;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "field"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Field;",
            ")[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 1048
    const-class v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Parameters;

    invoke-virtual {p0, v0}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Parameters;

    invoke-virtual {p0, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Parameters;

    invoke-interface {v0}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Parameters;->type()[Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-class v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Option;

    invoke-virtual {p0, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Option;

    invoke-interface {v0}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Option;->type()[Ljava/lang/Class;

    move-result-object v0

    .line 1049
    .local v0, "explicit":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :goto_0
    array-length v1, v0

    if-lez v1, :cond_1

    return-object v0

    .line 1050
    :cond_1
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    new-array v1, v2, [Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v2

    aput-object v2, v1, v3

    return-object v1

    .line 1051
    :cond_2
    invoke-static {p0}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;->isMultiValue(Ljava/lang/reflect/Field;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1052
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 1053
    .local v1, "type":Ljava/lang/reflect/Type;
    instance-of v4, v1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v4, :cond_7

    .line 1054
    move-object v2, v1

    check-cast v2, Ljava/lang/reflect/ParameterizedType;

    .line 1055
    .local v2, "parameterizedType":Ljava/lang/reflect/ParameterizedType;
    invoke-interface {v2}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v4

    .line 1056
    .local v4, "paramTypes":[Ljava/lang/reflect/Type;
    array-length v5, v4

    new-array v5, v5, [Ljava/lang/Class;

    .line 1057
    .local v5, "result":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    array-length v7, v4

    if-ge v6, v7, :cond_6

    .line 1058
    aget-object v7, v4, v6

    instance-of v7, v7, Ljava/lang/Class;

    if-eqz v7, :cond_3

    aget-object v7, v4, v6

    check-cast v7, Ljava/lang/Class;

    aput-object v7, v5, v6

    goto :goto_2

    .line 1059
    :cond_3
    aget-object v7, v4, v6

    instance-of v7, v7, Ljava/lang/reflect/WildcardType;

    if-eqz v7, :cond_5

    .line 1060
    aget-object v7, v4, v6

    check-cast v7, Ljava/lang/reflect/WildcardType;

    .line 1061
    .local v7, "wildcardType":Ljava/lang/reflect/WildcardType;
    invoke-interface {v7}, Ljava/lang/reflect/WildcardType;->getLowerBounds()[Ljava/lang/reflect/Type;

    move-result-object v8

    .line 1062
    .local v8, "lower":[Ljava/lang/reflect/Type;
    array-length v9, v8

    if-lez v9, :cond_4

    aget-object v9, v8, v3

    instance-of v9, v9, Ljava/lang/Class;

    if-eqz v9, :cond_4

    aget-object v9, v8, v3

    check-cast v9, Ljava/lang/Class;

    aput-object v9, v5, v6

    goto :goto_2

    .line 1063
    :cond_4
    invoke-interface {v7}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v9

    .line 1064
    .local v9, "upper":[Ljava/lang/reflect/Type;
    array-length v10, v9

    if-lez v10, :cond_5

    aget-object v10, v9, v3

    instance-of v10, v10, Ljava/lang/Class;

    if-eqz v10, :cond_5

    aget-object v10, v9, v3

    check-cast v10, Ljava/lang/Class;

    aput-object v10, v5, v6

    .line 1057
    .end local v7    # "wildcardType":Ljava/lang/reflect/WildcardType;
    .end local v8    # "lower":[Ljava/lang/reflect/Type;
    .end local v9    # "upper":[Ljava/lang/reflect/Type;
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 1066
    :cond_5
    const-class v3, Ljava/lang/String;

    invoke-static {v5, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v5

    .line 1068
    .end local v6    # "i":I
    :cond_6
    return-object v5

    .line 1070
    .end local v2    # "parameterizedType":Ljava/lang/reflect/ParameterizedType;
    .end local v4    # "paramTypes":[Ljava/lang/reflect/Type;
    .end local v5    # "result":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_7
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v3

    const-class v3, Ljava/lang/String;

    aput-object v3, v4, v2

    return-object v4

    .line 1072
    .end local v1    # "type":Ljava/lang/reflect/Type;
    :cond_8
    new-array v1, v2, [Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v2

    aput-object v2, v1, v3

    return-object v1
.end method

.method static init(Ljava/lang/Class;Ljava/util/List;Ljava/util/Map;Ljava/util/Map;Ljava/util/List;)V
    .locals 16
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "cls",
            "requiredFields",
            "optionName2Field",
            "singleCharOption2Field",
            "positionalParametersFields"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/List<",
            "Ljava/lang/reflect/Field;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Field;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/Character;",
            "Ljava/lang/reflect/Field;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/reflect/Field;",
            ">;)V"
        }
    .end annotation

    .line 1806
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p1, "requiredFields":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Field;>;"
    .local p2, "optionName2Field":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/reflect/Field;>;"
    .local p3, "singleCharOption2Field":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Character;Ljava/lang/reflect/Field;>;"
    .local p4, "positionalParametersFields":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Field;>;"
    move-object/from16 v0, p1

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    .line 1807
    .local v1, "declaredFields":[Ljava/lang/reflect/Field;
    array-length v2, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_b

    aget-object v5, v1, v4

    .line 1808
    .local v5, "field":Ljava/lang/reflect/Field;
    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 1809
    const-class v7, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Option;

    invoke-virtual {v5, v7}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 1810
    const-class v7, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Option;

    invoke-virtual {v5, v7}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v7

    check-cast v7, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Option;

    .line 1811
    .local v7, "option":Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Option;
    invoke-interface {v7}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Option;->required()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1812
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1814
    :cond_0
    invoke-interface {v7}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Option;->names()[Ljava/lang/String;

    move-result-object v8

    array-length v9, v8

    const/4 v10, 0x0

    :goto_1
    if-ge v10, v9, :cond_6

    aget-object v11, v8, v10

    .line 1815
    .local v11, "name":Ljava/lang/String;
    move-object/from16 v12, p2

    invoke-interface {v12, v11, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/reflect/Field;

    .line 1816
    .local v13, "existing":Ljava/lang/reflect/Field;
    if-eqz v13, :cond_2

    if-ne v13, v5, :cond_1

    goto :goto_2

    .line 1817
    :cond_1
    invoke-static {v11, v5, v13}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$DuplicateOptionAnnotationsException;->access$1000(Ljava/lang/String;Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;)Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$DuplicateOptionAnnotationsException;

    move-result-object v2

    throw v2

    .line 1819
    :cond_2
    :goto_2
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v14

    const/4 v15, 0x2

    if-ne v14, v15, :cond_4

    const-string v14, "-"

    invoke-virtual {v11, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 1820
    invoke-virtual {v11, v6}, Ljava/lang/String;->charAt(I)C

    move-result v14

    .line 1821
    .local v14, "flag":C
    invoke-static {v14}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v15

    move-object/from16 v3, p3

    invoke-interface {v3, v15, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/reflect/Field;

    .line 1822
    .local v15, "existing2":Ljava/lang/reflect/Field;
    if-eqz v15, :cond_5

    if-ne v15, v5, :cond_3

    goto :goto_3

    .line 1823
    :cond_3
    invoke-static {v11, v5, v15}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$DuplicateOptionAnnotationsException;->access$1000(Ljava/lang/String;Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;)Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$DuplicateOptionAnnotationsException;

    move-result-object v2

    throw v2

    .line 1819
    .end local v14    # "flag":C
    .end local v15    # "existing2":Ljava/lang/reflect/Field;
    :cond_4
    move-object/from16 v3, p3

    .line 1814
    .end local v11    # "name":Ljava/lang/String;
    .end local v13    # "existing":Ljava/lang/reflect/Field;
    :cond_5
    :goto_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_6
    move-object/from16 v12, p2

    move-object/from16 v3, p3

    goto :goto_4

    .line 1809
    .end local v7    # "option":Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Option;
    :cond_7
    move-object/from16 v12, p2

    move-object/from16 v3, p3

    .line 1828
    :goto_4
    const-class v6, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Parameters;

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 1829
    const-class v6, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Option;

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v6

    if-nez v6, :cond_8

    .line 1833
    move-object/from16 v6, p4

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1834
    invoke-static {v5}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Range;->parameterArity(Ljava/lang/reflect/Field;)Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Range;

    move-result-object v7

    .line 1835
    .local v7, "arity":Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Range;
    iget v8, v7, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Range;->min:I

    if-lez v8, :cond_a

    .line 1836
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 1830
    .end local v7    # "arity":Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Range;
    :cond_8
    move-object/from16 v6, p4

    new-instance v2, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$DuplicateOptionAnnotationsException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "A field can be either @Option or @Parameters, but \'"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1831
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\' is both."

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$DuplicateOptionAnnotationsException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1828
    :cond_9
    move-object/from16 v6, p4

    .line 1807
    .end local v5    # "field":Ljava/lang/reflect/Field;
    :cond_a
    :goto_5
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 1840
    :cond_b
    move-object/from16 v12, p2

    move-object/from16 v3, p3

    move-object/from16 v6, p4

    return-void
.end method

.method private static isBoolean(Ljava/lang/Class;)Z
    .locals 1
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
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 1043
    .local p0, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v0, Ljava/lang/Boolean;

    if-eq p0, v0, :cond_1

    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private static isMultiValue(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "cls"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 1046
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-nez v0, :cond_1

    const-class v0, Ljava/util/Collection;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1

    const-class v0, Ljava/util/Map;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private static isMultiValue(Ljava/lang/reflect/Field;)Z
    .locals 1
    .param p0, "field"    # Ljava/lang/reflect/Field;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "field"
        }
    .end annotation

    .line 1045
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;->isMultiValue(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public static varargs populateCommand(Ljava/lang/Object;[Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "command",
            "args"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;[",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 331
    .local p0, "command":Ljava/lang/Object;, "TT;"
    invoke-static {p0}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;->toCommandLine(Ljava/lang/Object;)Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;

    move-result-object v0

    .line 332
    .local v0, "cli":Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;
    invoke-virtual {v0, p1}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;->parse([Ljava/lang/String;)Ljava/util/List;

    .line 333
    return-object p0
.end method

.method public static printHelpIfRequested(Ljava/util/List;Ljava/io/PrintStream;Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi;)Z
    .locals 4
    .param p1, "out"    # Ljava/io/PrintStream;
    .param p2, "ansi"    # Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "parsedCommands",
            "out",
            "ansi"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;",
            ">;",
            "Ljava/io/PrintStream;",
            "Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi;",
            ")Z"
        }
    .end annotation

    .line 435
    .local p0, "parsedCommands":Ljava/util/List;, "Ljava/util/List<Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;

    .line 436
    .local v1, "parsed":Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;
    invoke-virtual {v1}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;->isUsageHelpRequested()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 437
    invoke-virtual {v1, p1, p2}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;->usage(Ljava/io/PrintStream;Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi;)V

    .line 438
    return v3

    .line 439
    :cond_0
    invoke-virtual {v1}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;->isVersionHelpRequested()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 440
    invoke-virtual {v1, p1, p2}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;->printVersionHelp(Ljava/io/PrintStream;Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi;)V

    .line 441
    return v3

    .line 443
    .end local v1    # "parsed":Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;
    :cond_1
    goto :goto_0

    .line 444
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private static reverse(Ljava/util/Stack;)Ljava/util/Stack;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "stack"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Stack<",
            "TT;>;)",
            "Ljava/util/Stack<",
            "TT;>;"
        }
    .end annotation

    .line 1854
    .local p0, "stack":Ljava/util/Stack;, "Ljava/util/Stack<TT;>;"
    invoke-static {p0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 1855
    return-object p0
.end method

.method public static varargs run(Ljava/lang/Runnable;Ljava/io/PrintStream;Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi;[Ljava/lang/String;)V
    .locals 6
    .param p1, "out"    # Ljava/io/PrintStream;
    .param p2, "ansi"    # Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi;
    .param p3, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "runnable",
            "out",
            "ansi",
            "args"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R::",
            "Ljava/lang/Runnable;",
            ">(TR;",
            "Ljava/io/PrintStream;",
            "Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi;",
            "[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 954
    .local p0, "runnable":Ljava/lang/Runnable;, "TR;"
    new-instance v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;

    invoke-direct {v0, p0}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;-><init>(Ljava/lang/Object;)V

    .line 955
    .local v0, "cmd":Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;
    new-instance v1, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$RunLast;

    invoke-direct {v1}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$RunLast;-><init>()V

    new-instance v4, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$DefaultExceptionHandler;

    invoke-direct {v4}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$DefaultExceptionHandler;-><init>()V

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;->parseWithHandlers(Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$IParseResultHandler;Ljava/io/PrintStream;Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi;Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$IExceptionHandler;[Ljava/lang/String;)Ljava/util/List;

    .line 956
    return-void
.end method

.method public static varargs run(Ljava/lang/Runnable;Ljava/io/PrintStream;[Ljava/lang/String;)V
    .locals 1
    .param p1, "out"    # Ljava/io/PrintStream;
    .param p2, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "runnable",
            "out",
            "args"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R::",
            "Ljava/lang/Runnable;",
            ">(TR;",
            "Ljava/io/PrintStream;",
            "[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 908
    .local p0, "runnable":Ljava/lang/Runnable;, "TR;"
    sget-object v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi;->AUTO:Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi;

    invoke-static {p0, p1, v0, p2}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;->run(Ljava/lang/Runnable;Ljava/io/PrintStream;Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi;[Ljava/lang/String;)V

    .line 909
    return-void
.end method

.method private static str([Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .param p0, "arr"    # [Ljava/lang/String;
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "arr",
            "i"
        }
    .end annotation

    .line 1042
    if-eqz p0, :cond_1

    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    aget-object v0, p0, p1

    goto :goto_1

    :cond_1
    :goto_0
    const-string v0, ""

    :goto_1
    return-object v0
.end method

.method private static toCommandLine(Ljava/lang/Object;)Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;
    .locals 1
    .param p0, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "obj"
        }
    .end annotation

    .line 1044
    instance-of v0, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;

    invoke-direct {v0, p0}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;-><init>(Ljava/lang/Object;)V

    :goto_0
    return-object v0
.end method

.method public static usage(Ljava/lang/Object;Ljava/io/PrintStream;)V
    .locals 1
    .param p0, "command"    # Ljava/lang/Object;
    .param p1, "out"    # Ljava/io/PrintStream;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "command",
            "out"
        }
    .end annotation

    .line 672
    invoke-static {p0}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;->toCommandLine(Ljava/lang/Object;)Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;->usage(Ljava/io/PrintStream;)V

    .line 673
    return-void
.end method

.method public static usage(Ljava/lang/Object;Ljava/io/PrintStream;Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi;)V
    .locals 1
    .param p0, "command"    # Ljava/lang/Object;
    .param p1, "out"    # Ljava/io/PrintStream;
    .param p2, "ansi"    # Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "command",
            "out",
            "ansi"
        }
    .end annotation

    .line 684
    invoke-static {p0}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;->toCommandLine(Ljava/lang/Object;)Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;->usage(Ljava/io/PrintStream;Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi;)V

    .line 685
    return-void
.end method

.method public static usage(Ljava/lang/Object;Ljava/io/PrintStream;Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$ColorScheme;)V
    .locals 1
    .param p0, "command"    # Ljava/lang/Object;
    .param p1, "out"    # Ljava/io/PrintStream;
    .param p2, "colorScheme"    # Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$ColorScheme;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "command",
            "out",
            "colorScheme"
        }
    .end annotation

    .line 696
    invoke-static {p0}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;->toCommandLine(Ljava/lang/Object;)Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;->usage(Ljava/io/PrintStream;Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$ColorScheme;)V

    .line 697
    return-void
.end method

.method static validatePositionalParameters(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "positionalParametersFields"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/reflect/Field;",
            ">;)V"
        }
    .end annotation

    .line 1842
    .local p0, "positionalParametersFields":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Field;>;"
    const/4 v0, 0x0

    .line 1843
    .local v0, "min":I
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/reflect/Field;

    .line 1844
    .local v2, "field":Ljava/lang/reflect/Field;
    invoke-static {v2}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Range;->parameterIndex(Ljava/lang/reflect/Field;)Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Range;

    move-result-object v3

    .line 1845
    .local v3, "index":Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Range;
    iget v4, v3, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Range;->min:I

    if-gt v4, v0, :cond_1

    .line 1849
    iget v4, v3, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Range;->max:I

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1850
    const v4, 0x7fffffff

    if-ne v0, v4, :cond_0

    move v4, v0

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v0, 0x1

    :goto_1
    move v0, v4

    .line 1851
    .end local v2    # "field":Ljava/lang/reflect/Field;
    .end local v3    # "index":Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Range;
    goto :goto_0

    .line 1846
    .restart local v2    # "field":Ljava/lang/reflect/Field;
    .restart local v3    # "index":Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Range;
    :cond_1
    new-instance v1, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$ParameterIndexGapException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Missing field annotated with @Parameter(index="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "). Nearest field \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1847
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\' has index="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v3, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Range;->min:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$ParameterIndexGapException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1852
    .end local v2    # "field":Ljava/lang/reflect/Field;
    .end local v3    # "index":Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Range;
    :cond_2
    return-void
.end method


# virtual methods
.method public addSubcommand(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "command"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "name",
            "command"
        }
    .end annotation

    .line 203
    invoke-static {p2}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;->toCommandLine(Ljava/lang/Object;)Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;

    move-result-object v0

    .line 204
    .local v0, "commandLine":Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;
    iput-object p0, v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;->parent:Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;

    .line 205
    iget-object v1, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;->interpreter:Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;

    invoke-static {v1}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;->access$100(Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    return-object p0
.end method

.method public getCommand()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()TT;"
        }
    .end annotation

    .line 232
    iget-object v0, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;->interpreter:Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;

    invoke-static {v0}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;->access$200(Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getCommandName()Ljava/lang/String;
    .locals 1

    .line 1027
    iget-object v0, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;->commandName:Ljava/lang/String;

    return-object v0
.end method

.method public getParent()Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;
    .locals 1

    .line 223
    iget-object v0, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;->parent:Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;

    return-object v0
.end method

.method public getSeparator()Ljava/lang/String;
    .locals 1

    .line 1012
    iget-object v0, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;->interpreter:Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;

    invoke-static {v0}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;->access$500(Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSubcommands()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;",
            ">;"
        }
    .end annotation

    .line 213
    new-instance v0, Ljava/util/LinkedHashMap;

    iget-object v1, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;->interpreter:Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;

    invoke-static {v1}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;->access$100(Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;)Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public getUnmatchedArguments()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 307
    iget-object v0, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;->unmatchedArguments:Ljava/util/List;

    return-object v0
.end method

.method public isOverwrittenOptionsAllowed()Z
    .locals 1

    .line 252
    iget-boolean v0, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;->overwrittenOptionsAllowed:Z

    return v0
.end method

.method public isUnmatchedArgumentsAllowed()Z
    .locals 1

    .line 280
    iget-boolean v0, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;->unmatchedArgumentsAllowed:Z

    return v0
.end method

.method public isUsageHelpRequested()Z
    .locals 1

    .line 238
    iget-boolean v0, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;->usageHelpRequested:Z

    return v0
.end method

.method public isVersionHelpRequested()Z
    .locals 1

    .line 243
    iget-boolean v0, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;->versionHelpRequested:Z

    return v0
.end method

.method public varargs parse([Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "args"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;",
            ">;"
        }
    .end annotation

    .line 351
    iget-object v0, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;->interpreter:Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;

    invoke-virtual {v0, p1}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;->parse([Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public varargs parseWithHandler(Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$IParseResultHandler;Ljava/io/PrintStream;[Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .param p1, "handler"    # Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$IParseResultHandler;
    .param p2, "out"    # Ljava/io/PrintStream;
    .param p3, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "handler",
            "out",
            "args"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$IParseResultHandler;",
            "Ljava/io/PrintStream;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 613
    sget-object v3, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi;->AUTO:Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi;

    new-instance v4, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$DefaultExceptionHandler;

    invoke-direct {v4}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$DefaultExceptionHandler;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;->parseWithHandlers(Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$IParseResultHandler;Ljava/io/PrintStream;Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi;Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$IExceptionHandler;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public varargs parseWithHandlers(Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$IParseResultHandler;Ljava/io/PrintStream;Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi;Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$IExceptionHandler;[Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .param p1, "handler"    # Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$IParseResultHandler;
    .param p2, "out"    # Ljava/io/PrintStream;
    .param p3, "ansi"    # Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi;
    .param p4, "exceptionHandler"    # Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$IExceptionHandler;
    .param p5, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "handler",
            "out",
            "ansi",
            "exceptionHandler",
            "args"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$IParseResultHandler;",
            "Ljava/io/PrintStream;",
            "Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi;",
            "Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$IExceptionHandler;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 659
    :try_start_0
    invoke-virtual {p0, p5}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;->parse([Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 660
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;>;"
    invoke-interface {p1, v0, p2, p3}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$IParseResultHandler;->handleParseResult(Ljava/util/List;Ljava/io/PrintStream;Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi;)Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catch Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$ParameterException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 661
    .end local v0    # "result":Ljava/util/List;, "Ljava/util/List<Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;>;"
    :catch_0
    move-exception v0

    .line 662
    .local v0, "ex":Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$ParameterException;
    invoke-interface {p4, v0, p2, p3, p5}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$IExceptionHandler;->handleException(Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$ParameterException;Ljava/io/PrintStream;Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public printVersionHelp(Ljava/io/PrintStream;)V
    .locals 1
    .param p1, "out"    # Ljava/io/PrintStream;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "out"
        }
    .end annotation

    .line 782
    sget-object v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi;->AUTO:Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi;

    invoke-virtual {p0, p1, v0}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;->printVersionHelp(Ljava/io/PrintStream;Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi;)V

    return-void
.end method

.method public printVersionHelp(Ljava/io/PrintStream;Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi;)V
    .locals 3
    .param p1, "out"    # Ljava/io/PrintStream;
    .param p2, "ansi"    # Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "out",
            "ansi"
        }
    .end annotation

    .line 796
    iget-object v0, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;->versionLines:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 797
    .local v1, "versionInfo":Ljava/lang/String;
    new-instance v2, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v2, p2, v1}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;-><init>(Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi;Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 798
    .end local v1    # "versionInfo":Ljava/lang/String;
    goto :goto_0

    .line 799
    :cond_0
    return-void
.end method

.method public varargs printVersionHelp(Ljava/io/PrintStream;Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi;[Ljava/lang/Object;)V
    .locals 4
    .param p1, "out"    # Ljava/io/PrintStream;
    .param p2, "ansi"    # Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi;
    .param p3, "params"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "out",
            "ansi",
            "params"
        }
    .end annotation

    .line 814
    iget-object v0, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;->versionLines:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 815
    .local v1, "versionInfo":Ljava/lang/String;
    new-instance v2, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p2, v3}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;-><init>(Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi;Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 816
    .end local v1    # "versionInfo":Ljava/lang/String;
    goto :goto_0

    .line 817
    :cond_0
    return-void
.end method

.method public registerConverter(Ljava/lang/Class;Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$ITypeConverter;)Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "cls",
            "converter"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TK;>;",
            "Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$ITypeConverter<",
            "TK;>;)",
            "Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;"
        }
    .end annotation

    .line 1002
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<TK;>;"
    .local p2, "converter":Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$ITypeConverter;, "Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$ITypeConverter<TK;>;"
    iget-object v0, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;->interpreter:Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;

    invoke-static {v0}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;->access$400(Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;)Ljava/util/Map;

    move-result-object v0

    const-string v1, "class"

    invoke-static {p1, v1}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "converter"

    invoke-static {p2, v2}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1003
    iget-object v0, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;->interpreter:Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;

    invoke-static {v0}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;->access$100(Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;

    .line 1004
    .local v1, "command":Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;
    invoke-virtual {v1, p1, p2}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;->registerConverter(Ljava/lang/Class;Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$ITypeConverter;)Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;

    .line 1005
    .end local v1    # "command":Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;
    goto :goto_0

    .line 1006
    :cond_0
    return-object p0
.end method

.method public setCommandName(Ljava/lang/String;)Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;
    .locals 1
    .param p1, "commandName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "commandName"
        }
    .end annotation

    .line 1036
    const-string v0, "commandName"

    invoke-static {p1, v0}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;->commandName:Ljava/lang/String;

    .line 1037
    return-object p0
.end method

.method public setOverwrittenOptionsAllowed(Z)Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;
    .locals 2
    .param p1, "newValue"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "newValue"
        }
    .end annotation

    .line 265
    iput-boolean p1, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;->overwrittenOptionsAllowed:Z

    .line 266
    iget-object v0, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;->interpreter:Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;

    invoke-static {v0}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;->access$100(Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;

    .line 267
    .local v1, "command":Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;
    invoke-virtual {v1, p1}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;->setOverwrittenOptionsAllowed(Z)Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;

    .line 268
    .end local v1    # "command":Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;
    goto :goto_0

    .line 269
    :cond_0
    return-object p0
.end method

.method public setSeparator(Ljava/lang/String;)Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;
    .locals 2
    .param p1, "separator"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "separator"
        }
    .end annotation

    .line 1020
    iget-object v0, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;->interpreter:Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;

    const-string v1, "separator"

    invoke-static {p1, v1}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;->access$502(Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;Ljava/lang/String;)Ljava/lang/String;

    .line 1021
    return-object p0
.end method

.method public setUnmatchedArgumentsAllowed(Z)Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;
    .locals 2
    .param p1, "newValue"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "newValue"
        }
    .end annotation

    .line 294
    iput-boolean p1, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;->unmatchedArgumentsAllowed:Z

    .line 295
    iget-object v0, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;->interpreter:Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;

    invoke-static {v0}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;->access$100(Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;

    .line 296
    .local v1, "command":Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;
    invoke-virtual {v1, p1}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;->setUnmatchedArgumentsAllowed(Z)Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;

    .line 297
    .end local v1    # "command":Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;
    goto :goto_0

    .line 298
    :cond_0
    return-object p0
.end method

.method public usage(Ljava/io/PrintStream;)V
    .locals 1
    .param p1, "out"    # Ljava/io/PrintStream;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "out"
        }
    .end annotation

    .line 705
    sget-object v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi;->AUTO:Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi;

    invoke-virtual {p0, p1, v0}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;->usage(Ljava/io/PrintStream;Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi;)V

    .line 706
    return-void
.end method

.method public usage(Ljava/io/PrintStream;Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi;)V
    .locals 1
    .param p1, "out"    # Ljava/io/PrintStream;
    .param p2, "ansi"    # Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "out",
            "ansi"
        }
    .end annotation

    .line 715
    invoke-static {p2}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help;->defaultColorScheme(Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi;)Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$ColorScheme;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;->usage(Ljava/io/PrintStream;Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$ColorScheme;)V

    .line 716
    return-void
.end method

.method public usage(Ljava/io/PrintStream;Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$ColorScheme;)V
    .locals 4
    .param p1, "out"    # Ljava/io/PrintStream;
    .param p2, "colorScheme"    # Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$ColorScheme;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "out",
            "colorScheme"
        }
    .end annotation

    .line 750
    new-instance v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help;

    iget-object v1, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;->interpreter:Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;

    invoke-static {v1}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;->access$200(Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help;-><init>(Ljava/lang/Object;Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$ColorScheme;)V

    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;->getSubcommands()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help;->addAllSubcommands(Ljava/util/Map;)Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help;

    move-result-object v0

    .line 751
    .local v0, "help":Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help;
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;->getSeparator()Ljava/lang/String;

    move-result-object v1

    const-string v2, "="

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 752
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;->getSeparator()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help;->separator:Ljava/lang/String;

    .line 753
    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help;->createDefaultParamLabelRenderer()Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$IParamLabelRenderer;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help;->parameterLabelRenderer:Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$IParamLabelRenderer;

    .line 755
    :cond_0
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;->getCommandName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "<main class>"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 756
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;->getCommandName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help;->commandName:Ljava/lang/String;

    .line 758
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    .line 759
    invoke-virtual {v0, v3}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help;->headerHeading([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v3, v2, [Ljava/lang/Object;

    .line 760
    invoke-virtual {v0, v3}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help;->header([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v3, v2, [Ljava/lang/Object;

    .line 761
    invoke-virtual {v0, v3}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help;->synopsisHeading([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 762
    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help;->synopsisHeadingLength()I

    move-result v3

    invoke-virtual {v0, v3}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help;->synopsis(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v3, v2, [Ljava/lang/Object;

    .line 763
    invoke-virtual {v0, v3}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help;->descriptionHeading([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v3, v2, [Ljava/lang/Object;

    .line 764
    invoke-virtual {v0, v3}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help;->description([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v3, v2, [Ljava/lang/Object;

    .line 765
    invoke-virtual {v0, v3}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help;->parameterListHeading([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 766
    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help;->parameterList()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v3, v2, [Ljava/lang/Object;

    .line 767
    invoke-virtual {v0, v3}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help;->optionListHeading([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 768
    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help;->optionList()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v3, v2, [Ljava/lang/Object;

    .line 769
    invoke-virtual {v0, v3}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help;->commandListHeading([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 770
    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help;->commandList()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v3, v2, [Ljava/lang/Object;

    .line 771
    invoke-virtual {v0, v3}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help;->footerHeading([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v2, v2, [Ljava/lang/Object;

    .line 772
    invoke-virtual {v0, v2}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help;->footer([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 773
    .local v1, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p1, v1}, Ljava/io/PrintStream;->print(Ljava/lang/Object;)V

    .line 774
    return-void
.end method
