.class public final Lorg/apache/logging/log4j/Level;
.super Ljava/lang/Object;
.source "Level.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lorg/apache/logging/log4j/Level;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field public static final ALL:Lorg/apache/logging/log4j/Level;

.field public static final CATEGORY:Ljava/lang/String; = "Level"

.field public static final DEBUG:Lorg/apache/logging/log4j/Level;

.field private static final EMPTY_ARRAY:[Lorg/apache/logging/log4j/Level;

.field public static final ERROR:Lorg/apache/logging/log4j/Level;

.field public static final FATAL:Lorg/apache/logging/log4j/Level;

.field public static final INFO:Lorg/apache/logging/log4j/Level;

.field private static final LEVELS:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "Lorg/apache/logging/log4j/Level;",
            ">;"
        }
    .end annotation
.end field

.field public static final OFF:Lorg/apache/logging/log4j/Level;

.field public static final TRACE:Lorg/apache/logging/log4j/Level;

.field public static final WARN:Lorg/apache/logging/log4j/Level;

.field private static final serialVersionUID:J = 0x18201aL


# instance fields
.field private final intLevel:I

.field private final name:Ljava/lang/String;

.field private final standardLevel:Lorg/apache/logging/log4j/spi/StandardLevel;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 77
    const/4 v0, 0x0

    new-array v0, v0, [Lorg/apache/logging/log4j/Level;

    sput-object v0, Lorg/apache/logging/log4j/Level;->EMPTY_ARRAY:[Lorg/apache/logging/log4j/Level;

    .line 79
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lorg/apache/logging/log4j/Level;->LEVELS:Ljava/util/concurrent/ConcurrentMap;

    .line 84
    new-instance v0, Lorg/apache/logging/log4j/Level;

    sget-object v1, Lorg/apache/logging/log4j/spi/StandardLevel;->OFF:Lorg/apache/logging/log4j/spi/StandardLevel;

    invoke-virtual {v1}, Lorg/apache/logging/log4j/spi/StandardLevel;->intLevel()I

    move-result v1

    const-string v2, "OFF"

    invoke-direct {v0, v2, v1}, Lorg/apache/logging/log4j/Level;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/logging/log4j/Level;->OFF:Lorg/apache/logging/log4j/Level;

    .line 89
    new-instance v0, Lorg/apache/logging/log4j/Level;

    sget-object v1, Lorg/apache/logging/log4j/spi/StandardLevel;->FATAL:Lorg/apache/logging/log4j/spi/StandardLevel;

    invoke-virtual {v1}, Lorg/apache/logging/log4j/spi/StandardLevel;->intLevel()I

    move-result v1

    const-string v2, "FATAL"

    invoke-direct {v0, v2, v1}, Lorg/apache/logging/log4j/Level;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/logging/log4j/Level;->FATAL:Lorg/apache/logging/log4j/Level;

    .line 94
    new-instance v0, Lorg/apache/logging/log4j/Level;

    sget-object v1, Lorg/apache/logging/log4j/spi/StandardLevel;->ERROR:Lorg/apache/logging/log4j/spi/StandardLevel;

    invoke-virtual {v1}, Lorg/apache/logging/log4j/spi/StandardLevel;->intLevel()I

    move-result v1

    const-string v2, "ERROR"

    invoke-direct {v0, v2, v1}, Lorg/apache/logging/log4j/Level;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/logging/log4j/Level;->ERROR:Lorg/apache/logging/log4j/Level;

    .line 99
    new-instance v0, Lorg/apache/logging/log4j/Level;

    sget-object v1, Lorg/apache/logging/log4j/spi/StandardLevel;->WARN:Lorg/apache/logging/log4j/spi/StandardLevel;

    invoke-virtual {v1}, Lorg/apache/logging/log4j/spi/StandardLevel;->intLevel()I

    move-result v1

    const-string v2, "WARN"

    invoke-direct {v0, v2, v1}, Lorg/apache/logging/log4j/Level;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/logging/log4j/Level;->WARN:Lorg/apache/logging/log4j/Level;

    .line 104
    new-instance v0, Lorg/apache/logging/log4j/Level;

    sget-object v1, Lorg/apache/logging/log4j/spi/StandardLevel;->INFO:Lorg/apache/logging/log4j/spi/StandardLevel;

    invoke-virtual {v1}, Lorg/apache/logging/log4j/spi/StandardLevel;->intLevel()I

    move-result v1

    const-string v2, "INFO"

    invoke-direct {v0, v2, v1}, Lorg/apache/logging/log4j/Level;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/logging/log4j/Level;->INFO:Lorg/apache/logging/log4j/Level;

    .line 109
    new-instance v0, Lorg/apache/logging/log4j/Level;

    sget-object v1, Lorg/apache/logging/log4j/spi/StandardLevel;->DEBUG:Lorg/apache/logging/log4j/spi/StandardLevel;

    invoke-virtual {v1}, Lorg/apache/logging/log4j/spi/StandardLevel;->intLevel()I

    move-result v1

    const-string v2, "DEBUG"

    invoke-direct {v0, v2, v1}, Lorg/apache/logging/log4j/Level;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/logging/log4j/Level;->DEBUG:Lorg/apache/logging/log4j/Level;

    .line 114
    new-instance v0, Lorg/apache/logging/log4j/Level;

    sget-object v1, Lorg/apache/logging/log4j/spi/StandardLevel;->TRACE:Lorg/apache/logging/log4j/spi/StandardLevel;

    invoke-virtual {v1}, Lorg/apache/logging/log4j/spi/StandardLevel;->intLevel()I

    move-result v1

    const-string v2, "TRACE"

    invoke-direct {v0, v2, v1}, Lorg/apache/logging/log4j/Level;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/logging/log4j/Level;->TRACE:Lorg/apache/logging/log4j/Level;

    .line 119
    new-instance v0, Lorg/apache/logging/log4j/Level;

    sget-object v1, Lorg/apache/logging/log4j/spi/StandardLevel;->ALL:Lorg/apache/logging/log4j/spi/StandardLevel;

    invoke-virtual {v1}, Lorg/apache/logging/log4j/spi/StandardLevel;->intLevel()I

    move-result v1

    const-string v2, "ALL"

    invoke-direct {v0, v2, v1}, Lorg/apache/logging/log4j/Level;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/logging/log4j/Level;->ALL:Lorg/apache/logging/log4j/Level;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "intLevel"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "name",
            "intLevel"
        }
    .end annotation

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    invoke-static {p1}, Lorg/apache/logging/log4j/util/Strings;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 136
    if-ltz p2, :cond_1

    .line 139
    iput-object p1, p0, Lorg/apache/logging/log4j/Level;->name:Ljava/lang/String;

    .line 140
    iput p2, p0, Lorg/apache/logging/log4j/Level;->intLevel:I

    .line 141
    invoke-static {p2}, Lorg/apache/logging/log4j/spi/StandardLevel;->getStandardLevel(I)Lorg/apache/logging/log4j/spi/StandardLevel;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/logging/log4j/Level;->standardLevel:Lorg/apache/logging/log4j/spi/StandardLevel;

    .line 142
    sget-object v0, Lorg/apache/logging/log4j/Level;->LEVELS:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1, p0}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 145
    return-void

    .line 143
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Level "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " has already been defined."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 137
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal Level int less than zero."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 134
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal null or empty Level name."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static forName(Ljava/lang/String;I)Lorg/apache/logging/log4j/Level;
    .locals 3
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "intValue"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "name",
            "intValue"
        }
    .end annotation

    .line 262
    sget-object v0, Lorg/apache/logging/log4j/Level;->LEVELS:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/Level;

    .line 263
    .local v0, "level":Lorg/apache/logging/log4j/Level;
    if-eqz v0, :cond_0

    .line 264
    return-object v0

    .line 267
    :cond_0
    :try_start_0
    new-instance v1, Lorg/apache/logging/log4j/Level;

    invoke-direct {v1, p0, p1}, Lorg/apache/logging/log4j/Level;-><init>(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 268
    :catch_0
    move-exception v1

    .line 270
    .local v1, "ex":Ljava/lang/IllegalStateException;
    sget-object v2, Lorg/apache/logging/log4j/Level;->LEVELS:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2, p0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/logging/log4j/Level;

    return-object v2
.end method

.method public static getLevel(Ljava/lang/String;)Lorg/apache/logging/log4j/Level;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "name"
        }
    .end annotation

    .line 281
    sget-object v0, Lorg/apache/logging/log4j/Level;->LEVELS:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/Level;

    return-object v0
.end method

.method public static toLevel(Ljava/lang/String;)Lorg/apache/logging/log4j/Level;
    .locals 1
    .param p0, "level"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "level"
        }
    .end annotation

    .line 292
    sget-object v0, Lorg/apache/logging/log4j/Level;->DEBUG:Lorg/apache/logging/log4j/Level;

    invoke-static {p0, v0}, Lorg/apache/logging/log4j/Level;->toLevel(Ljava/lang/String;Lorg/apache/logging/log4j/Level;)Lorg/apache/logging/log4j/Level;

    move-result-object v0

    return-object v0
.end method

.method public static toLevel(Ljava/lang/String;Lorg/apache/logging/log4j/Level;)Lorg/apache/logging/log4j/Level;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "defaultLevel"    # Lorg/apache/logging/log4j/Level;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "name",
            "defaultLevel"
        }
    .end annotation

    .line 304
    if-nez p0, :cond_0

    .line 305
    return-object p1

    .line 307
    :cond_0
    sget-object v0, Lorg/apache/logging/log4j/Level;->LEVELS:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/logging/log4j/Level;->toUpperCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/Level;

    .line 308
    .local v0, "level":Lorg/apache/logging/log4j/Level;
    if-nez v0, :cond_1

    move-object v1, p1

    goto :goto_0

    :cond_1
    move-object v1, v0

    :goto_0
    return-object v1
.end method

.method private static toUpperCase(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "name"
        }
    .end annotation

    .line 312
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "enumType",
            "name"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Enum<",
            "TT;>;>(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 356
    .local p0, "enumType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {p0, p1}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/logging/log4j/Level;
    .locals 5
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "name"
        }
    .end annotation

    .line 333
    const-string v0, "No level name given."

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 334
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/logging/log4j/Level;->toUpperCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 335
    .local v0, "levelName":Ljava/lang/String;
    sget-object v1, Lorg/apache/logging/log4j/Level;->LEVELS:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/logging/log4j/Level;

    .line 336
    .local v1, "level":Lorg/apache/logging/log4j/Level;
    if-eqz v1, :cond_0

    .line 337
    return-object v1

    .line 339
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown level constant ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "]."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static values()[Lorg/apache/logging/log4j/Level;
    .locals 2

    .line 321
    sget-object v0, Lorg/apache/logging/log4j/Level;->LEVELS:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v0

    sget-object v1, Lorg/apache/logging/log4j/Level;->EMPTY_ARRAY:[Lorg/apache/logging/log4j/Level;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/logging/log4j/Level;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 75
    invoke-virtual {p0}, Lorg/apache/logging/log4j/Level;->clone()Lorg/apache/logging/log4j/Level;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/apache/logging/log4j/Level;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 216
    new-instance v0, Ljava/lang/CloneNotSupportedException;

    invoke-direct {v0}, Ljava/lang/CloneNotSupportedException;-><init>()V

    throw v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "other"
        }
    .end annotation

    .line 75
    check-cast p1, Lorg/apache/logging/log4j/Level;

    invoke-virtual {p0, p1}, Lorg/apache/logging/log4j/Level;->compareTo(Lorg/apache/logging/log4j/Level;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lorg/apache/logging/log4j/Level;)I
    .locals 2
    .param p1, "other"    # Lorg/apache/logging/log4j/Level;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "other"
        }
    .end annotation

    .line 222
    iget v0, p0, Lorg/apache/logging/log4j/Level;->intLevel:I

    iget v1, p1, Lorg/apache/logging/log4j/Level;->intLevel:I

    if-ge v0, v1, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    if-le v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "other"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "other"
        }
    .end annotation

    .line 227
    instance-of v0, p1, Lorg/apache/logging/log4j/Level;

    if-eqz v0, :cond_0

    if-ne p1, p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getDeclaringClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lorg/apache/logging/log4j/Level;",
            ">;"
        }
    .end annotation

    .line 231
    const-class v0, Lorg/apache/logging/log4j/Level;

    return-object v0
.end method

.method public getStandardLevel()Lorg/apache/logging/log4j/spi/StandardLevel;
    .locals 1

    .line 162
    iget-object v0, p0, Lorg/apache/logging/log4j/Level;->standardLevel:Lorg/apache/logging/log4j/spi/StandardLevel;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 236
    iget-object v0, p0, Lorg/apache/logging/log4j/Level;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public intLevel()I
    .locals 1

    .line 153
    iget v0, p0, Lorg/apache/logging/log4j/Level;->intLevel:I

    return v0
.end method

.method public isInRange(Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Level;)Z
    .locals 2
    .param p1, "minLevel"    # Lorg/apache/logging/log4j/Level;
    .param p2, "maxLevel"    # Lorg/apache/logging/log4j/Level;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "minLevel",
            "maxLevel"
        }
    .end annotation

    .line 175
    iget v0, p0, Lorg/apache/logging/log4j/Level;->intLevel:I

    iget v1, p1, Lorg/apache/logging/log4j/Level;->intLevel:I

    if-lt v0, v1, :cond_0

    iget v1, p2, Lorg/apache/logging/log4j/Level;->intLevel:I

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isLessSpecificThan(Lorg/apache/logging/log4j/Level;)Z
    .locals 2
    .param p1, "level"    # Lorg/apache/logging/log4j/Level;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "level"
        }
    .end annotation

    .line 193
    iget v0, p0, Lorg/apache/logging/log4j/Level;->intLevel:I

    iget v1, p1, Lorg/apache/logging/log4j/Level;->intLevel:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isMoreSpecificThan(Lorg/apache/logging/log4j/Level;)Z
    .locals 2
    .param p1, "level"    # Lorg/apache/logging/log4j/Level;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "level"
        }
    .end annotation

    .line 209
    iget v0, p0, Lorg/apache/logging/log4j/Level;->intLevel:I

    iget v1, p1, Lorg/apache/logging/log4j/Level;->intLevel:I

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public name()Ljava/lang/String;
    .locals 1

    .line 245
    iget-object v0, p0, Lorg/apache/logging/log4j/Level;->name:Ljava/lang/String;

    return-object v0
.end method

.method protected readResolve()Ljava/lang/Object;
    .locals 1

    .line 361
    iget-object v0, p0, Lorg/apache/logging/log4j/Level;->name:Ljava/lang/String;

    invoke-static {v0}, Lorg/apache/logging/log4j/Level;->valueOf(Ljava/lang/String;)Lorg/apache/logging/log4j/Level;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 250
    iget-object v0, p0, Lorg/apache/logging/log4j/Level;->name:Ljava/lang/String;

    return-object v0
.end method
