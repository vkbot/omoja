.class public final Lorg/apache/logging/log4j/core/util/OptionConverter;
.super Ljava/lang/Object;
.source "OptionConverter.java"


# static fields
.field private static final DELIM_START:Ljava/lang/String; = "${"

.field private static final DELIM_START_LEN:I = 0x2

.field private static final DELIM_STOP:C = '}'

.field private static final DELIM_STOP_LEN:I = 0x1

.field private static final LOGGER:Lorg/apache/logging/log4j/Logger;

.field private static final ONE_K:I = 0x400


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    invoke-static {}, Lorg/apache/logging/log4j/status/StatusLogger;->getLogger()Lorg/apache/logging/log4j/status/StatusLogger;

    move-result-object v0

    sput-object v0, Lorg/apache/logging/log4j/core/util/OptionConverter;->LOGGER:Lorg/apache/logging/log4j/Logger;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    return-void
.end method

.method public static concatenateArrays([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 5
    .param p0, "l"    # [Ljava/lang/String;
    .param p1, "r"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "l",
            "r"
        }
    .end annotation

    .line 51
    array-length v0, p0

    array-length v1, p1

    add-int/2addr v0, v1

    .line 52
    .local v0, "len":I
    new-array v1, v0, [Ljava/lang/String;

    .line 54
    .local v1, "a":[Ljava/lang/String;
    array-length v2, p0

    const/4 v3, 0x0

    invoke-static {p0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 55
    array-length v2, p0

    array-length v4, p1

    invoke-static {p1, v3, v1, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 57
    return-object v1
.end method

.method public static convertSpecialChars(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "s"
        }
    .end annotation

    .line 62
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 63
    .local v0, "len":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 65
    .local v1, "sbuf":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .line 66
    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_9

    .line 67
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "i":I
    .local v3, "i":I
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 68
    .local v2, "c":C
    const/16 v4, 0x5c

    if-ne v2, v4, :cond_8

    .line 69
    add-int/lit8 v5, v3, 0x1

    .end local v3    # "i":I
    .local v5, "i":I
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 70
    const/16 v3, 0x22

    if-eq v2, v3, :cond_7

    const/16 v3, 0x27

    if-eq v2, v3, :cond_6

    if-eq v2, v4, :cond_5

    const/16 v3, 0x62

    if-eq v2, v3, :cond_4

    const/16 v3, 0x66

    if-eq v2, v3, :cond_3

    const/16 v3, 0x6e

    if-eq v2, v3, :cond_2

    const/16 v3, 0x72

    if-eq v2, v3, :cond_1

    const/16 v3, 0x74

    if-eq v2, v3, :cond_0

    goto :goto_1

    .line 78
    :cond_0
    const/16 v2, 0x9

    .line 79
    goto :goto_1

    .line 75
    :cond_1
    const/16 v2, 0xd

    .line 76
    goto :goto_1

    .line 72
    :cond_2
    const/16 v2, 0xa

    .line 73
    goto :goto_1

    .line 81
    :cond_3
    const/16 v2, 0xc

    .line 82
    goto :goto_1

    .line 84
    :cond_4
    const/16 v2, 0x8

    .line 85
    goto :goto_1

    .line 93
    :cond_5
    const/16 v2, 0x5c

    .line 94
    goto :goto_1

    .line 90
    :cond_6
    const/16 v2, 0x27

    .line 91
    goto :goto_1

    .line 87
    :cond_7
    const/16 v2, 0x22

    .line 88
    goto :goto_1

    .line 68
    .end local v5    # "i":I
    .restart local v3    # "i":I
    :cond_8
    move v5, v3

    .line 99
    .end local v3    # "i":I
    .restart local v5    # "i":I
    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v2, v5

    goto :goto_0

    .line 101
    .end local v5    # "i":I
    .local v2, "i":I
    :cond_9
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static findAndSubst(Ljava/lang/String;Ljava/util/Properties;)Ljava/lang/String;
    .locals 4
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "props"    # Ljava/util/Properties;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "key",
            "props"
        }
    .end annotation

    .line 269
    invoke-virtual {p1, p0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 270
    .local v0, "value":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 271
    const/4 v1, 0x0

    return-object v1

    .line 275
    :cond_0
    :try_start_0
    invoke-static {v0, p1}, Lorg/apache/logging/log4j/core/util/OptionConverter;->substVars(Ljava/lang/String;Ljava/util/Properties;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 276
    :catch_0
    move-exception v1

    .line 277
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    sget-object v2, Lorg/apache/logging/log4j/core/util/OptionConverter;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v3, "Bad option value [{}]."

    invoke-interface {v2, v3, v0, v1}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 278
    return-object v0
.end method

.method public static instantiateByClassName(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10
    .param p0, "className"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "className",
            "superClass",
            "defaultValue"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 295
    .local p1, "superClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz p0, :cond_1

    .line 297
    :try_start_0
    invoke-static {p0}, Lorg/apache/logging/log4j/core/util/Loader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 298
    .local v0, "classObj":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 299
    sget-object v1, Lorg/apache/logging/log4j/core/util/OptionConverter;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v2, "A \"{}\" object is not assignable to a \"{}\" variable."

    .line 300
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    .line 299
    invoke-interface {v1, v2, p0, v3}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 301
    sget-object v4, Lorg/apache/logging/log4j/core/util/OptionConverter;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v5, "The class \"{}\" was loaded by [{}] whereas object of type [{}] was loaded by [{}]."

    .line 302
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/Class;->getTypeName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    .line 301
    invoke-interface/range {v4 .. v9}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 303
    return-object p2

    .line 305
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 306
    .end local v0    # "classObj":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v0

    .line 307
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lorg/apache/logging/log4j/core/util/OptionConverter;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v2, "Could not instantiate class [{}]."

    invoke-interface {v1, v2, p0, v0}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 310
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    return-object p2
.end method

.method public static instantiateByKey(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p0, "props"    # Ljava/util/Properties;
    .param p1, "key"    # Ljava/lang/String;
    .param p3, "defaultValue"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "props",
            "key",
            "superClass",
            "defaultValue"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Properties;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 108
    .local p2, "superClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p1, p0}, Lorg/apache/logging/log4j/core/util/OptionConverter;->findAndSubst(Ljava/lang/String;Ljava/util/Properties;)Ljava/lang/String;

    move-result-object v0

    .line 109
    .local v0, "className":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 110
    sget-object v1, Lorg/apache/logging/log4j/core/util/OptionConverter;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v2, "Could not find value for key {}"

    invoke-interface {v1, v2, p1}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;)V

    .line 111
    return-object p3

    .line 114
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p2, p3}, Lorg/apache/logging/log4j/core/util/OptionConverter;->instantiateByClassName(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public static substVars(Ljava/lang/String;Ljava/util/Properties;)Ljava/lang/String;
    .locals 1
    .param p0, "val"    # Ljava/lang/String;
    .param p1, "props"    # Ljava/util/Properties;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "val",
            "props"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 352
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p0, p1, v0}, Lorg/apache/logging/log4j/core/util/OptionConverter;->substVars(Ljava/lang/String;Ljava/util/Properties;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static substVars(Ljava/lang/String;Ljava/util/Properties;Ljava/util/List;)Ljava/lang/String;
    .locals 8
    .param p0, "val"    # Ljava/lang/String;
    .param p1, "props"    # Ljava/util/Properties;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x0
        }
        names = {
            "val",
            "props",
            "keys"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Properties;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 358
    .local p2, "keys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 360
    .local v0, "sbuf":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 365
    .local v1, "i":I
    :goto_0
    const-string v2, "${"

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    .line 366
    .local v2, "j":I
    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 368
    if-nez v1, :cond_0

    .line 369
    return-object p0

    .line 372
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 373
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 375
    :cond_1
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 376
    const/16 v4, 0x7d

    invoke-virtual {p0, v4, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    .line 377
    .local v4, "k":I
    if-eq v4, v3, :cond_5

    .line 382
    add-int/lit8 v2, v2, 0x2

    .line 383
    invoke-virtual {p0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 385
    .local v3, "key":Ljava/lang/String;
    invoke-static {}, Lorg/apache/logging/log4j/util/PropertiesUtil;->getProperties()Lorg/apache/logging/log4j/util/PropertiesUtil;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v3, v6}, Lorg/apache/logging/log4j/util/PropertiesUtil;->getStringProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 387
    .local v5, "replacement":Ljava/lang/String;
    if-nez v5, :cond_2

    if-eqz p1, :cond_2

    .line 388
    invoke-virtual {p1, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 391
    :cond_2
    if-eqz v5, :cond_4

    .line 398
    invoke-interface {p2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 399
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 400
    .local v6, "usedKeys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 401
    invoke-static {v5, p1, v6}, Lorg/apache/logging/log4j/core/util/OptionConverter;->substVars(Ljava/lang/String;Ljava/util/Properties;Ljava/util/List;)Ljava/lang/String;

    move-result-object v7

    .line 402
    .local v7, "recursiveReplacement":Ljava/lang/String;
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 403
    .end local v6    # "usedKeys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v7    # "recursiveReplacement":Ljava/lang/String;
    goto :goto_1

    .line 404
    :cond_3
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 408
    :cond_4
    :goto_1
    add-int/lit8 v1, v4, 0x1

    .line 409
    .end local v3    # "key":Ljava/lang/String;
    .end local v5    # "replacement":Ljava/lang/String;
    goto :goto_0

    .line 378
    :cond_5
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lorg/apache/logging/log4j/util/Strings;->dquote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " has no closing brace. Opening brace at position "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v6, 0x2e

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static toBoolean(Ljava/lang/String;Z)Z
    .locals 2
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "defaultValue"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "value",
            "defaultValue"
        }
    .end annotation

    .line 130
    if-nez p0, :cond_0

    .line 131
    return p1

    .line 133
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 134
    .local v0, "trimmedVal":Ljava/lang/String;
    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 135
    const/4 v1, 0x1

    return v1

    .line 137
    :cond_1
    const-string v1, "false"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 138
    const/4 v1, 0x0

    return v1

    .line 140
    :cond_2
    return p1
.end method

.method public static toFileSize(Ljava/lang/String;J)J
    .locals 7
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "defaultValue"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "value",
            "defaultValue"
        }
    .end annotation

    .line 233
    if-nez p0, :cond_0

    .line 234
    return-wide p1

    .line 237
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 238
    .local v0, "str":Ljava/lang/String;
    const-wide/16 v1, 0x1

    .line 241
    .local v1, "multiplier":J
    const-string v3, "KB"

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    move v4, v3

    .local v4, "index":I
    const/4 v5, 0x0

    const/4 v6, -0x1

    if-eq v3, v6, :cond_1

    .line 242
    const-wide/16 v1, 0x400

    .line 243
    invoke-virtual {v0, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 244
    :cond_1
    const-string v3, "MB"

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    move v4, v3

    if-eq v3, v6, :cond_2

    .line 245
    const-wide/32 v1, 0x100000

    .line 246
    invoke-virtual {v0, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 247
    :cond_2
    const-string v3, "GB"

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    move v4, v3

    if-eq v3, v6, :cond_3

    .line 248
    const-wide/32 v1, 0x40000000

    .line 249
    invoke-virtual {v0, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 252
    :cond_3
    :goto_0
    :try_start_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    mul-long/2addr v5, v1

    return-wide v5

    .line 253
    :catch_0
    move-exception v3

    .line 254
    .local v3, "e":Ljava/lang/NumberFormatException;
    sget-object v5, Lorg/apache/logging/log4j/core/util/OptionConverter;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v6, "[{}] is not in proper int form."

    invoke-interface {v5, v6, v0}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;)V

    .line 255
    sget-object v5, Lorg/apache/logging/log4j/core/util/OptionConverter;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v6, "[{}] not in expected format."

    invoke-interface {v5, v6, p0, v3}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 257
    .end local v3    # "e":Ljava/lang/NumberFormatException;
    return-wide p1
.end method

.method public static toInt(Ljava/lang/String;I)I
    .locals 4
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "defaultValue"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "value",
            "defaultValue"
        }
    .end annotation

    .line 150
    if-eqz p0, :cond_0

    .line 151
    move-object v0, p0

    .line 153
    .local v0, "s":Ljava/lang/String;
    :try_start_0
    invoke-static {v0}, Lorg/apache/logging/log4j/core/util/Integers;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 154
    :catch_0
    move-exception v1

    .line 155
    .local v1, "e":Ljava/lang/NumberFormatException;
    sget-object v2, Lorg/apache/logging/log4j/core/util/OptionConverter;->LOGGER:Lorg/apache/logging/log4j/Logger;

    const-string v3, "[{}] is not in proper int form."

    invoke-interface {v2, v3, v0, v1}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 158
    .end local v0    # "s":Ljava/lang/String;
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :cond_0
    return p1
.end method

.method public static toLevel(Ljava/lang/String;Lorg/apache/logging/log4j/Level;)Lorg/apache/logging/log4j/Level;
    .locals 13
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "defaultValue"    # Lorg/apache/logging/log4j/Level;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "value",
            "defaultValue"
        }
    .end annotation

    .line 162
    const-string v0, "class ["

    const-string v1, "custom level class ["

    if-nez p0, :cond_0

    .line 163
    return-object p1

    .line 166
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 168
    const/16 v2, 0x23

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 169
    .local v2, "hashIndex":I
    const/4 v3, -0x1

    const-string v4, "NULL"

    const/4 v5, 0x0

    if-ne v2, v3, :cond_2

    .line 170
    invoke-virtual {v4, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 171
    return-object v5

    .line 174
    :cond_1
    invoke-static {p0, p1}, Lorg/apache/logging/log4j/Level;->toLevel(Ljava/lang/String;Lorg/apache/logging/log4j/Level;)Lorg/apache/logging/log4j/Level;

    move-result-object v0

    return-object v0

    .line 178
    :cond_2
    move-object v3, p1

    .line 180
    .local v3, "result":Lorg/apache/logging/log4j/Level;
    add-int/lit8 v6, v2, 0x1

    invoke-virtual {p0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 181
    .local v6, "clazz":Ljava/lang/String;
    const/4 v7, 0x0

    invoke-virtual {p0, v7, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 184
    .local v8, "levelName":Ljava/lang/String;
    invoke-virtual {v4, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 185
    return-object v5

    .line 188
    :cond_3
    sget-object v4, Lorg/apache/logging/log4j/core/util/OptionConverter;->LOGGER:Lorg/apache/logging/log4j/Logger;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "toLevel:class=["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "]:pri=["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "]"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v4, v9}, Lorg/apache/logging/log4j/Logger;->debug(Ljava/lang/String;)V

    .line 192
    :try_start_0
    invoke-static {v6}, Lorg/apache/logging/log4j/core/util/Loader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 196
    .local v4, "customLevel":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v9, 0x2

    new-array v10, v9, [Ljava/lang/Class;

    const-class v11, Ljava/lang/String;

    aput-object v11, v10, v7

    const-class v11, Lorg/apache/logging/log4j/Level;

    const/4 v12, 0x1

    aput-object v11, v10, v12

    .line 197
    .local v10, "paramTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const-string v11, "toLevel"

    .line 198
    invoke-virtual {v4, v11, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v11

    .line 201
    .local v11, "toLevelMethod":Ljava/lang/reflect/Method;
    new-array v9, v9, [Ljava/lang/Object;

    aput-object v8, v9, v7

    aput-object p1, v9, v12

    move-object v7, v9

    .line 202
    .local v7, "params":[Ljava/lang/Object;
    invoke-virtual {v11, v5, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 204
    .local v5, "o":Ljava/lang/Object;
    move-object v9, v5

    check-cast v9, Lorg/apache/logging/log4j/Level;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v9

    .line 222
    .end local v4    # "customLevel":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v5    # "o":Ljava/lang/Object;
    .end local v7    # "params":[Ljava/lang/Object;
    .end local v10    # "paramTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v11    # "toLevelMethod":Ljava/lang/reflect/Method;
    :goto_0
    goto/16 :goto_1

    .line 220
    :catch_0
    move-exception v1

    .line 221
    .local v1, "e":Ljava/lang/RuntimeException;
    sget-object v4, Lorg/apache/logging/log4j/core/util/OptionConverter;->LOGGER:Lorg/apache/logging/log4j/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "], level ["

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "] conversion failed."

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, v1}, Lorg/apache/logging/log4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 218
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v1

    .line 219
    .local v1, "e":Ljava/lang/IllegalAccessException;
    sget-object v4, Lorg/apache/logging/log4j/core/util/OptionConverter;->LOGGER:Lorg/apache/logging/log4j/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "] cannot be instantiated due to access restrictions"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, v1}, Lorg/apache/logging/log4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    goto :goto_0

    .line 216
    :catch_2
    move-exception v1

    .line 217
    .local v1, "e":Ljava/lang/ClassCastException;
    sget-object v4, Lorg/apache/logging/log4j/core/util/OptionConverter;->LOGGER:Lorg/apache/logging/log4j/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "] is not a subclass of org.apache.log4j.Level"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, v1}, Lorg/apache/logging/log4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v1    # "e":Ljava/lang/ClassCastException;
    goto :goto_0

    .line 210
    :catch_3
    move-exception v0

    .line 211
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v4

    instance-of v4, v4, Ljava/lang/InterruptedException;

    if-nez v4, :cond_4

    .line 212
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v4

    instance-of v4, v4, Ljava/io/InterruptedIOException;

    if-eqz v4, :cond_5

    .line 213
    :cond_4
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->interrupt()V

    .line 215
    :cond_5
    sget-object v4, Lorg/apache/logging/log4j/core/util/OptionConverter;->LOGGER:Lorg/apache/logging/log4j/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] could not be instantiated"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v1, v0}, Lorg/apache/logging/log4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    goto/16 :goto_0

    .line 207
    :catch_4
    move-exception v0

    .line 208
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    sget-object v4, Lorg/apache/logging/log4j/core/util/OptionConverter;->LOGGER:Lorg/apache/logging/log4j/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] does not have a class function toLevel(String, Level)"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v1, v0}, Lorg/apache/logging/log4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    goto/16 :goto_0

    .line 205
    :catch_5
    move-exception v0

    .line 206
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    sget-object v4, Lorg/apache/logging/log4j/core/util/OptionConverter;->LOGGER:Lorg/apache/logging/log4j/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] not found."

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v1}, Lorg/apache/logging/log4j/Logger;->warn(Ljava/lang/String;)V

    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    goto/16 :goto_0

    .line 223
    :goto_1
    return-object v3
.end method
