.class public Lorg/apache/logging/log4j/core/config/AppenderControlArraySet;
.super Ljava/lang/Object;
.source "AppenderControlArraySet.java"


# static fields
.field private static final appenderArrayUpdater:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater<",
            "Lorg/apache/logging/log4j/core/config/AppenderControlArraySet;",
            "[",
            "Lorg/apache/logging/log4j/core/config/AppenderControl;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private volatile appenderArray:[Lorg/apache/logging/log4j/core/config/AppenderControl;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 35
    const-class v0, Lorg/apache/logging/log4j/core/config/AppenderControlArraySet;

    const-class v1, [Lorg/apache/logging/log4j/core/config/AppenderControl;

    .line 36
    const-string v2, "appenderArray"

    invoke-static {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lorg/apache/logging/log4j/core/config/AppenderControlArraySet;->appenderArrayUpdater:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 35
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    sget-object v0, Lorg/apache/logging/log4j/core/config/AppenderControl;->EMPTY_ARRAY:[Lorg/apache/logging/log4j/core/config/AppenderControl;

    iput-object v0, p0, Lorg/apache/logging/log4j/core/config/AppenderControlArraySet;->appenderArray:[Lorg/apache/logging/log4j/core/config/AppenderControl;

    return-void
.end method

.method private removeElementAt(I[Lorg/apache/logging/log4j/core/config/AppenderControl;)[Lorg/apache/logging/log4j/core/config/AppenderControl;
    .locals 3
    .param p1, "i"    # I
    .param p2, "array"    # [Lorg/apache/logging/log4j/core/config/AppenderControl;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "i",
            "array"
        }
    .end annotation

    .line 89
    array-length v0, p2

    add-int/lit8 v0, v0, -0x1

    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/logging/log4j/core/config/AppenderControl;

    .line 90
    .local v0, "result":[Lorg/apache/logging/log4j/core/config/AppenderControl;
    add-int/lit8 v1, p1, 0x1

    array-length v2, v0

    sub-int/2addr v2, p1

    invoke-static {p2, v1, v0, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 91
    return-object v0
.end method


# virtual methods
.method public add(Lorg/apache/logging/log4j/core/config/AppenderControl;)Z
    .locals 6
    .param p1, "control"    # Lorg/apache/logging/log4j/core/config/AppenderControl;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "control"
        }
    .end annotation

    .line 49
    :goto_0
    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/AppenderControlArraySet;->appenderArray:[Lorg/apache/logging/log4j/core/config/AppenderControl;

    .line 50
    .local v0, "original":[Lorg/apache/logging/log4j/core/config/AppenderControl;
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_1
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 51
    .local v4, "existing":Lorg/apache/logging/log4j/core/config/AppenderControl;
    invoke-virtual {v4, p1}, Lorg/apache/logging/log4j/core/config/AppenderControl;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 52
    return v2

    .line 50
    .end local v4    # "existing":Lorg/apache/logging/log4j/core/config/AppenderControl;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 55
    :cond_1
    array-length v1, v0

    const/4 v2, 0x1

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/apache/logging/log4j/core/config/AppenderControl;

    .line 56
    .local v1, "copy":[Lorg/apache/logging/log4j/core/config/AppenderControl;
    array-length v3, v1

    sub-int/2addr v3, v2

    aput-object p1, v1, v3

    .line 57
    sget-object v3, Lorg/apache/logging/log4j/core/config/AppenderControlArraySet;->appenderArrayUpdater:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v3, p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    .line 58
    .end local v1    # "copy":[Lorg/apache/logging/log4j/core/config/AppenderControl;
    .local v0, "success":Z
    if-eqz v0, :cond_2

    .line 59
    return v2

    .line 58
    :cond_2
    goto :goto_0
.end method

.method public asMap()Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/logging/log4j/core/Appender;",
            ">;"
        }
    .end annotation

    .line 100
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 101
    .local v0, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/apache/logging/log4j/core/Appender;>;"
    iget-object v1, p0, Lorg/apache/logging/log4j/core/config/AppenderControlArraySet;->appenderArray:[Lorg/apache/logging/log4j/core/config/AppenderControl;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 102
    .local v4, "appenderControl":Lorg/apache/logging/log4j/core/config/AppenderControl;
    invoke-virtual {v4}, Lorg/apache/logging/log4j/core/config/AppenderControl;->getAppenderName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Lorg/apache/logging/log4j/core/config/AppenderControl;->getAppender()Lorg/apache/logging/log4j/core/Appender;

    move-result-object v6

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    .end local v4    # "appenderControl":Lorg/apache/logging/log4j/core/config/AppenderControl;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 104
    :cond_0
    return-object v0
.end method

.method public clear()[Lorg/apache/logging/log4j/core/config/AppenderControl;
    .locals 2

    .line 113
    sget-object v0, Lorg/apache/logging/log4j/core/config/AppenderControlArraySet;->appenderArrayUpdater:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    sget-object v1, Lorg/apache/logging/log4j/core/config/AppenderControl;->EMPTY_ARRAY:[Lorg/apache/logging/log4j/core/config/AppenderControl;

    invoke-virtual {v0, p0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->getAndSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/logging/log4j/core/config/AppenderControl;

    return-object v0
.end method

.method public get()[Lorg/apache/logging/log4j/core/config/AppenderControl;
    .locals 1

    .line 126
    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/AppenderControlArraySet;->appenderArray:[Lorg/apache/logging/log4j/core/config/AppenderControl;

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 117
    iget-object v0, p0, Lorg/apache/logging/log4j/core/config/AppenderControlArraySet;->appenderArray:[Lorg/apache/logging/log4j/core/config/AppenderControl;

    array-length v0, v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public remove(Ljava/lang/String;)Lorg/apache/logging/log4j/core/config/AppenderControl;
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "name"
        }
    .end annotation

    .line 71
    :goto_0
    const/4 v0, 0x1

    .line 72
    .local v0, "success":Z
    iget-object v1, p0, Lorg/apache/logging/log4j/core/config/AppenderControlArraySet;->appenderArray:[Lorg/apache/logging/log4j/core/config/AppenderControl;

    .line 73
    .local v1, "original":[Lorg/apache/logging/log4j/core/config/AppenderControl;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v3, v1

    if-ge v2, v3, :cond_2

    .line 74
    aget-object v3, v1, v2

    .line 75
    .local v3, "appenderControl":Lorg/apache/logging/log4j/core/config/AppenderControl;
    invoke-virtual {v3}, Lorg/apache/logging/log4j/core/config/AppenderControl;->getAppenderName()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 76
    invoke-direct {p0, v2, v1}, Lorg/apache/logging/log4j/core/config/AppenderControlArraySet;->removeElementAt(I[Lorg/apache/logging/log4j/core/config/AppenderControl;)[Lorg/apache/logging/log4j/core/config/AppenderControl;

    move-result-object v4

    .line 77
    .local v4, "copy":[Lorg/apache/logging/log4j/core/config/AppenderControl;
    sget-object v5, Lorg/apache/logging/log4j/core/config/AppenderControlArraySet;->appenderArrayUpdater:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v5, p0, v1, v4}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 78
    return-object v3

    .line 80
    :cond_0
    const/4 v0, 0x0

    .line 81
    goto :goto_2

    .line 73
    .end local v3    # "appenderControl":Lorg/apache/logging/log4j/core/config/AppenderControl;
    .end local v4    # "copy":[Lorg/apache/logging/log4j/core/config/AppenderControl;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 84
    .end local v1    # "original":[Lorg/apache/logging/log4j/core/config/AppenderControl;
    .end local v2    # "i":I
    :cond_2
    :goto_2
    if-eqz v0, :cond_3

    .line 85
    const/4 v1, 0x0

    return-object v1

    .line 84
    :cond_3
    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AppenderControlArraySet [appenderArray="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/logging/log4j/core/config/AppenderControlArraySet;->appenderArray:[Lorg/apache/logging/log4j/core/config/AppenderControl;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
