.class public final enum Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi;
.super Ljava/lang/Enum;
.source "CommandLine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Ansi"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;,
        Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$StyledSection;,
        Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Palette256Color;,
        Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Style;,
        Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$IStyle;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi;

.field public static final enum AUTO:Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi;

.field static EMPTY_TEXT:Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;

.field static final ISATTY:Z

.field public static final enum OFF:Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi;

.field public static final enum ON:Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi;

.field static final isWindows:Z

.field static final isXterm:Z


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 4252
    new-instance v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi;

    const-string v1, "AUTO"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi;->AUTO:Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi;

    .line 4254
    new-instance v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi;

    const-string v1, "ON"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi;->ON:Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi;

    .line 4256
    new-instance v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi;

    const-string v1, "OFF"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi;->OFF:Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi;

    .line 4249
    const/4 v1, 0x3

    new-array v1, v1, [Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi;

    sget-object v5, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi;->AUTO:Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi;

    aput-object v5, v1, v2

    sget-object v5, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi;->ON:Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi;

    aput-object v5, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi;->$VALUES:[Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi;

    .line 4257
    new-instance v1, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v1, v0, v2}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;-><init>(Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi;I)V

    sput-object v1, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi;->EMPTY_TEXT:Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;

    .line 4258
    const-string v0, "os.name"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Windows"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi;->isWindows:Z

    .line 4259
    const-string v0, "TERM"

    invoke-static {v0}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "xterm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v2, v3

    :cond_0
    sput-boolean v2, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi;->isXterm:Z

    .line 4260
    invoke-static {}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi;->calcTTY()Z

    move-result v0

    sput-boolean v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi;->ISATTY:Z

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

    .line 4249
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$3700([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # [Ljava/lang/Object;

    .line 4249
    invoke-static {p0}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi;->reverse([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private static ansiPossible()Z
    .locals 1

    .line 4268
    sget-boolean v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi;->ISATTY:Z

    if-eqz v0, :cond_1

    sget-boolean v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi;->isWindows:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi;->isXterm:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static final calcTTY()Z
    .locals 5

    .line 4264
    sget-boolean v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi;->isWindows:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    sget-boolean v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi;->isXterm:Z

    if-eqz v0, :cond_0

    return v1

    .line 4265
    :cond_0
    :try_start_0
    const-class v0, Ljava/lang/System;

    const-string v2, "console"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v2, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    move v1, v3

    :goto_0
    return v1

    .line 4266
    :catchall_0
    move-exception v0

    .local v0, "reflectionFailed":Ljava/lang/Throwable;
    return v1
.end method

.method private static reverse([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "all"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 4431
    .local p0, "all":[Ljava/lang/Object;, "[TT;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    div-int/lit8 v1, v1, 0x2

    if-ge v0, v1, :cond_0

    .line 4432
    aget-object v1, p0, v0

    .line 4433
    .local v1, "temp":Ljava/lang/Object;, "TT;"
    array-length v2, p0

    sub-int/2addr v2, v0

    add-int/lit8 v2, v2, -0x1

    aget-object v2, p0, v2

    aput-object v2, p0, v0

    .line 4434
    array-length v2, p0

    sub-int/2addr v2, v0

    add-int/lit8 v2, v2, -0x1

    aput-object v1, p0, v2

    .line 4431
    .end local v1    # "temp":Ljava/lang/Object;, "TT;"
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4436
    .end local v0    # "i":I
    :cond_0
    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi;
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

    .line 4249
    const-class v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi;

    return-object v0
.end method

.method public static values()[Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi;
    .locals 1

    .line 4249
    sget-object v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi;->$VALUES:[Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi;

    invoke-virtual {v0}, [Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi;

    return-object v0
.end method


# virtual methods
.method public apply(Ljava/lang/String;Ljava/util/List;)Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;
    .locals 9
    .param p1, "plainText"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "plainText",
            "styles"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$IStyle;",
            ">;)",
            "Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;"
        }
    .end annotation

    .line 4420
    .local p2, "styles":Ljava/util/List;, "Ljava/util/List<Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$IStyle;>;"
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-instance v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;

    invoke-direct {v0, p0, v1}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;-><init>(Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi;I)V

    return-object v0

    .line 4421
    :cond_0
    new-instance v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-direct {v0, p0, v2}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;-><init>(Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi;I)V

    .line 4422
    .local v0, "result":Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$IStyle;

    invoke-interface {p2, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$IStyle;

    .line 4423
    .local v2, "all":[Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$IStyle;
    invoke-static {v0}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;->access$3600(Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;)Ljava/util/List;

    move-result-object v3

    new-instance v4, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$StyledSection;

    .line 4424
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    invoke-static {v2}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Style;->on([Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$IStyle;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi;->reverse([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$IStyle;

    invoke-static {v8}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Style;->off([Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$IStyle;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v8, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Style;->reset:Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Style;

    invoke-virtual {v8}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Style;->off()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v1, v5, v6, v7}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$StyledSection;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 4423
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4425
    invoke-static {v0}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;->access$600(Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4426
    invoke-static {v0}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;->access$600(Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    invoke-static {v0, v1}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;->access$3102(Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;I)I

    .line 4427
    return-object v0
.end method

.method public enabled()Z
    .locals 2

    .line 4274
    sget-object v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi;->ON:Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 4275
    :cond_0
    sget-object v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi;->OFF:Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi;

    if-ne p0, v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 4276
    :cond_1
    const-string v0, "picocli.ansi"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    invoke-static {}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi;->ansiPossible()Z

    move-result v0

    goto :goto_0

    :cond_2
    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    :goto_0
    return v0
.end method
