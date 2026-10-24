.class abstract Lorg/apache/logging/log4j/core/util/datetime/FormatCache;
.super Ljava/lang/Object;
.source "FormatCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/logging/log4j/core/util/datetime/FormatCache$MultipartKey;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<F:",
        "Lorg/apache/logging/log4j/core/util/datetime/Format;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field static final NONE:I = -0x1

.field private static final cDateTimeInstanceCache:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Lorg/apache/logging/log4j/core/util/datetime/FormatCache$MultipartKey;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final cInstanceCache:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Lorg/apache/logging/log4j/core/util/datetime/FormatCache$MultipartKey;",
            "TF;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 48
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    sput-object v0, Lorg/apache/logging/log4j/core/util/datetime/FormatCache;->cDateTimeInstanceCache:Ljava/util/concurrent/ConcurrentMap;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .line 38
    .local p0, "this":Lorg/apache/logging/log4j/core/util/datetime/FormatCache;, "Lorg/apache/logging/log4j/core/util/datetime/FormatCache<TF;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object v0, p0, Lorg/apache/logging/log4j/core/util/datetime/FormatCache;->cInstanceCache:Ljava/util/concurrent/ConcurrentMap;

    return-void
.end method

.method private getDateTimeInstance(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/TimeZone;Ljava/util/Locale;)Lorg/apache/logging/log4j/core/util/datetime/Format;
    .locals 2
    .param p1, "dateStyle"    # Ljava/lang/Integer;
    .param p2, "timeStyle"    # Ljava/lang/Integer;
    .param p3, "timeZone"    # Ljava/util/TimeZone;
    .param p4, "locale"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x0
        }
        names = {
            "dateStyle",
            "timeStyle",
            "timeZone",
            "locale"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/util/TimeZone;",
            "Ljava/util/Locale;",
            ")TF;"
        }
    .end annotation

    .line 125
    .local p0, "this":Lorg/apache/logging/log4j/core/util/datetime/FormatCache;, "Lorg/apache/logging/log4j/core/util/datetime/FormatCache<TF;>;"
    if-nez p4, :cond_0

    .line 126
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p4

    .line 128
    :cond_0
    invoke-static {p1, p2, p4}, Lorg/apache/logging/log4j/core/util/datetime/FormatCache;->getPatternForStyle(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 129
    .local v0, "pattern":Ljava/lang/String;
    invoke-virtual {p0, v0, p3, p4}, Lorg/apache/logging/log4j/core/util/datetime/FormatCache;->getInstance(Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;)Lorg/apache/logging/log4j/core/util/datetime/Format;

    move-result-object v1

    return-object v1
.end method

.method static getPatternForStyle(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/Locale;)Ljava/lang/String;
    .locals 6
    .param p0, "dateStyle"    # Ljava/lang/Integer;
    .param p1, "timeStyle"    # Ljava/lang/Integer;
    .param p2, "locale"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "dateStyle",
            "timeStyle",
            "locale"
        }
    .end annotation

    .line 195
    new-instance v0, Lorg/apache/logging/log4j/core/util/datetime/FormatCache$MultipartKey;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    aput-object p2, v1, v2

    invoke-direct {v0, v1}, Lorg/apache/logging/log4j/core/util/datetime/FormatCache$MultipartKey;-><init>([Ljava/lang/Object;)V

    .line 197
    .local v0, "key":Lorg/apache/logging/log4j/core/util/datetime/FormatCache$MultipartKey;
    sget-object v1, Lorg/apache/logging/log4j/core/util/datetime/FormatCache;->cDateTimeInstanceCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 198
    .local v1, "pattern":Ljava/lang/String;
    if-nez v1, :cond_3

    .line 201
    if-nez p0, :cond_0

    .line 202
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2, p2}, Ljava/text/DateFormat;->getTimeInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v2

    .local v2, "formatter":Ljava/text/DateFormat;
    goto :goto_0

    .line 218
    .end local v2    # "formatter":Ljava/text/DateFormat;
    :catch_0
    move-exception v2

    goto :goto_1

    .line 204
    :cond_0
    if-nez p1, :cond_1

    .line 205
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2, p2}, Ljava/text/DateFormat;->getDateInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v2

    .restart local v2    # "formatter":Ljava/text/DateFormat;
    goto :goto_0

    .line 208
    .end local v2    # "formatter":Ljava/text/DateFormat;
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v2, v3, p2}, Ljava/text/DateFormat;->getDateTimeInstance(IILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v2

    .line 210
    .restart local v2    # "formatter":Ljava/text/DateFormat;
    :goto_0
    move-object v3, v2

    check-cast v3, Ljava/text/SimpleDateFormat;

    invoke-virtual {v3}, Ljava/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    .line 211
    sget-object v3, Lorg/apache/logging/log4j/core/util/datetime/FormatCache;->cDateTimeInstanceCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3, v0, v1}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 212
    .local v3, "previous":Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 216
    move-object v1, v3

    .line 220
    .end local v2    # "formatter":Ljava/text/DateFormat;
    .end local v3    # "previous":Ljava/lang/String;
    :cond_2
    goto :goto_2

    .line 219
    .local v2, "ex":Ljava/lang/ClassCastException;
    :goto_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No date time pattern for locale: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 222
    .end local v2    # "ex":Ljava/lang/ClassCastException;
    :cond_3
    :goto_2
    return-object v1
.end method


# virtual methods
.method protected abstract createInstance(Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;)Lorg/apache/logging/log4j/core/util/datetime/Format;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "pattern",
            "timeZone",
            "locale"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/TimeZone;",
            "Ljava/util/Locale;",
            ")TF;"
        }
    .end annotation
.end method

.method getDateInstance(ILjava/util/TimeZone;Ljava/util/Locale;)Lorg/apache/logging/log4j/core/util/datetime/Format;
    .locals 2
    .param p1, "dateStyle"    # I
    .param p2, "timeZone"    # Ljava/util/TimeZone;
    .param p3, "locale"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "dateStyle",
            "timeZone",
            "locale"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/TimeZone;",
            "Ljava/util/Locale;",
            ")TF;"
        }
    .end annotation

    .line 164
    .local p0, "this":Lorg/apache/logging/log4j/core/util/datetime/FormatCache;, "Lorg/apache/logging/log4j/core/util/datetime/FormatCache<TF;>;"
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p2, p3}, Lorg/apache/logging/log4j/core/util/datetime/FormatCache;->getDateTimeInstance(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/TimeZone;Ljava/util/Locale;)Lorg/apache/logging/log4j/core/util/datetime/Format;

    move-result-object v0

    return-object v0
.end method

.method getDateTimeInstance(IILjava/util/TimeZone;Ljava/util/Locale;)Lorg/apache/logging/log4j/core/util/datetime/Format;
    .locals 2
    .param p1, "dateStyle"    # I
    .param p2, "timeStyle"    # I
    .param p3, "timeZone"    # Ljava/util/TimeZone;
    .param p4, "locale"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "dateStyle",
            "timeStyle",
            "timeZone",
            "locale"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/TimeZone;",
            "Ljava/util/Locale;",
            ")TF;"
        }
    .end annotation

    .line 147
    .local p0, "this":Lorg/apache/logging/log4j/core/util/datetime/FormatCache;, "Lorg/apache/logging/log4j/core/util/datetime/FormatCache<TF;>;"
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1, p3, p4}, Lorg/apache/logging/log4j/core/util/datetime/FormatCache;->getDateTimeInstance(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/TimeZone;Ljava/util/Locale;)Lorg/apache/logging/log4j/core/util/datetime/Format;

    move-result-object v0

    return-object v0
.end method

.method public getInstance()Lorg/apache/logging/log4j/core/util/datetime/Format;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TF;"
        }
    .end annotation

    .line 58
    .local p0, "this":Lorg/apache/logging/log4j/core/util/datetime/FormatCache;, "Lorg/apache/logging/log4j/core/util/datetime/FormatCache<TF;>;"
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {p0, v2, v2, v0, v1}, Lorg/apache/logging/log4j/core/util/datetime/FormatCache;->getDateTimeInstance(IILjava/util/TimeZone;Ljava/util/Locale;)Lorg/apache/logging/log4j/core/util/datetime/Format;

    move-result-object v0

    return-object v0
.end method

.method public getInstance(Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;)Lorg/apache/logging/log4j/core/util/datetime/Format;
    .locals 3
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "timeZone"    # Ljava/util/TimeZone;
    .param p3, "locale"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0,
            0x0
        }
        names = {
            "pattern",
            "timeZone",
            "locale"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/TimeZone;",
            "Ljava/util/Locale;",
            ")TF;"
        }
    .end annotation

    .line 74
    .local p0, "this":Lorg/apache/logging/log4j/core/util/datetime/FormatCache;, "Lorg/apache/logging/log4j/core/util/datetime/FormatCache<TF;>;"
    if-eqz p1, :cond_3

    .line 77
    if-nez p2, :cond_0

    .line 78
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object p2

    .line 80
    :cond_0
    if-nez p3, :cond_1

    .line 81
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p3

    .line 83
    :cond_1
    new-instance v0, Lorg/apache/logging/log4j/core/util/datetime/FormatCache$MultipartKey;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    invoke-direct {v0, v1}, Lorg/apache/logging/log4j/core/util/datetime/FormatCache$MultipartKey;-><init>([Ljava/lang/Object;)V

    .line 84
    .local v0, "key":Lorg/apache/logging/log4j/core/util/datetime/FormatCache$MultipartKey;
    iget-object v1, p0, Lorg/apache/logging/log4j/core/util/datetime/FormatCache;->cInstanceCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/logging/log4j/core/util/datetime/Format;

    .line 85
    .local v1, "format":Lorg/apache/logging/log4j/core/util/datetime/Format;, "TF;"
    if-nez v1, :cond_2

    .line 86
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/logging/log4j/core/util/datetime/FormatCache;->createInstance(Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;)Lorg/apache/logging/log4j/core/util/datetime/Format;

    move-result-object v1

    .line 87
    iget-object v2, p0, Lorg/apache/logging/log4j/core/util/datetime/FormatCache;->cInstanceCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2, v0, v1}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/logging/log4j/core/util/datetime/Format;

    .line 88
    .local v2, "previousValue":Lorg/apache/logging/log4j/core/util/datetime/Format;, "TF;"
    if-eqz v2, :cond_2

    .line 91
    move-object v1, v2

    .line 94
    .end local v2    # "previousValue":Lorg/apache/logging/log4j/core/util/datetime/Format;, "TF;"
    :cond_2
    return-object v1

    .line 75
    .end local v0    # "key":Lorg/apache/logging/log4j/core/util/datetime/FormatCache$MultipartKey;
    .end local v1    # "format":Lorg/apache/logging/log4j/core/util/datetime/Format;, "TF;"
    :cond_3
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "pattern must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method getTimeInstance(ILjava/util/TimeZone;Ljava/util/Locale;)Lorg/apache/logging/log4j/core/util/datetime/Format;
    .locals 2
    .param p1, "timeStyle"    # I
    .param p2, "timeZone"    # Ljava/util/TimeZone;
    .param p3, "locale"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "timeStyle",
            "timeZone",
            "locale"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/TimeZone;",
            "Ljava/util/Locale;",
            ")TF;"
        }
    .end annotation

    .line 181
    .local p0, "this":Lorg/apache/logging/log4j/core/util/datetime/FormatCache;, "Lorg/apache/logging/log4j/core/util/datetime/FormatCache<TF;>;"
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0, p2, p3}, Lorg/apache/logging/log4j/core/util/datetime/FormatCache;->getDateTimeInstance(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/TimeZone;Ljava/util/Locale;)Lorg/apache/logging/log4j/core/util/datetime/Format;

    move-result-object v0

    return-object v0
.end method
