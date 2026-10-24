.class public Lorg/apache/logging/log4j/message/StructuredDataCollectionMessage;
.super Ljava/lang/Object;
.source "StructuredDataCollectionMessage.java"

# interfaces
.implements Lorg/apache/logging/log4j/util/StringBuilderFormattable;
.implements Lorg/apache/logging/log4j/message/MessageCollectionMessage;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/logging/log4j/util/StringBuilderFormattable;",
        "Lorg/apache/logging/log4j/message/MessageCollectionMessage<",
        "Lorg/apache/logging/log4j/message/StructuredDataMessage;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x4f747bbca1877f8cL


# instance fields
.field private final structuredDataMessageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/logging/log4j/message/StructuredDataMessage;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "messages"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/logging/log4j/message/StructuredDataMessage;",
            ">;)V"
        }
    .end annotation

    .line 34
    .local p1, "messages":Ljava/util/List;, "Ljava/util/List<Lorg/apache/logging/log4j/message/StructuredDataMessage;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lorg/apache/logging/log4j/message/StructuredDataCollectionMessage;->structuredDataMessageList:Ljava/util/List;

    .line 36
    return-void
.end method


# virtual methods
.method public formatTo(Ljava/lang/StringBuilder;)V
    .locals 2
    .param p1, "buffer"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "buffer"
        }
    .end annotation

    .line 66
    iget-object v0, p0, Lorg/apache/logging/log4j/message/StructuredDataCollectionMessage;->structuredDataMessageList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/logging/log4j/message/StructuredDataMessage;

    .line 67
    .local v1, "msg":Lorg/apache/logging/log4j/message/StructuredDataMessage;
    invoke-virtual {v1, p1}, Lorg/apache/logging/log4j/message/StructuredDataMessage;->formatTo(Ljava/lang/StringBuilder;)V

    .line 68
    .end local v1    # "msg":Lorg/apache/logging/log4j/message/StructuredDataMessage;
    goto :goto_0

    .line 69
    :cond_0
    return-void
.end method

.method public getFormat()Ljava/lang/String;
    .locals 4

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 53
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lorg/apache/logging/log4j/message/StructuredDataCollectionMessage;->structuredDataMessageList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/logging/log4j/message/StructuredDataMessage;

    .line 54
    .local v2, "msg":Lorg/apache/logging/log4j/message/StructuredDataMessage;
    invoke-virtual {v2}, Lorg/apache/logging/log4j/message/StructuredDataMessage;->getFormat()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 55
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 56
    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    :cond_0
    invoke-virtual {v2}, Lorg/apache/logging/log4j/message/StructuredDataMessage;->getFormat()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .end local v2    # "msg":Lorg/apache/logging/log4j/message/StructuredDataMessage;
    :cond_1
    goto :goto_0

    .line 61
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getFormattedMessage()Ljava/lang/String;
    .locals 2

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 46
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0, v0}, Lorg/apache/logging/log4j/message/StructuredDataCollectionMessage;->formatTo(Ljava/lang/StringBuilder;)V

    .line 47
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getParameters()[Ljava/lang/Object;
    .locals 10

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 74
    .local v0, "objectList":Ljava/util/List;, "Ljava/util/List<[Ljava/lang/Object;>;"
    const/4 v1, 0x0

    .line 75
    .local v1, "count":I
    iget-object v2, p0, Lorg/apache/logging/log4j/message/StructuredDataCollectionMessage;->structuredDataMessageList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/logging/log4j/message/StructuredDataMessage;

    .line 76
    .local v3, "msg":Lorg/apache/logging/log4j/message/StructuredDataMessage;
    invoke-virtual {v3}, Lorg/apache/logging/log4j/message/StructuredDataMessage;->getParameters()[Ljava/lang/Object;

    move-result-object v4

    .line 77
    .local v4, "objects":[Ljava/lang/Object;
    if-eqz v4, :cond_0

    .line 78
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    array-length v5, v4

    add-int/2addr v1, v5

    .line 81
    .end local v3    # "msg":Lorg/apache/logging/log4j/message/StructuredDataMessage;
    .end local v4    # "objects":[Ljava/lang/Object;
    :cond_0
    goto :goto_0

    .line 82
    :cond_1
    new-array v2, v1, [Ljava/lang/Object;

    .line 83
    .local v2, "objects":[Ljava/lang/Object;
    const/4 v3, 0x0

    .line 84
    .local v3, "index":I
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/Object;

    .line 85
    .local v5, "objs":[Ljava/lang/Object;
    array-length v6, v5

    const/4 v7, 0x0

    :goto_2
    if-ge v7, v6, :cond_2

    aget-object v8, v5, v7

    .line 86
    .local v8, "obj":Ljava/lang/Object;
    add-int/lit8 v9, v3, 0x1

    .end local v3    # "index":I
    .local v9, "index":I
    aput-object v8, v2, v3

    .line 85
    .end local v8    # "obj":Ljava/lang/Object;
    add-int/lit8 v7, v7, 0x1

    move v3, v9

    goto :goto_2

    .line 88
    .end local v5    # "objs":[Ljava/lang/Object;
    .end local v9    # "index":I
    .restart local v3    # "index":I
    :cond_2
    goto :goto_1

    .line 89
    :cond_3
    return-object v2
.end method

.method public getThrowable()Ljava/lang/Throwable;
    .locals 3

    .line 94
    iget-object v0, p0, Lorg/apache/logging/log4j/message/StructuredDataCollectionMessage;->structuredDataMessageList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/logging/log4j/message/StructuredDataMessage;

    .line 95
    .local v1, "msg":Lorg/apache/logging/log4j/message/StructuredDataMessage;
    invoke-virtual {v1}, Lorg/apache/logging/log4j/message/StructuredDataMessage;->getThrowable()Ljava/lang/Throwable;

    move-result-object v2

    .line 96
    .local v2, "t":Ljava/lang/Throwable;
    if-eqz v2, :cond_0

    .line 97
    return-object v2

    .line 99
    .end local v1    # "msg":Lorg/apache/logging/log4j/message/StructuredDataMessage;
    .end local v2    # "t":Ljava/lang/Throwable;
    :cond_0
    goto :goto_0

    .line 100
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/apache/logging/log4j/message/StructuredDataMessage;",
            ">;"
        }
    .end annotation

    .line 40
    iget-object v0, p0, Lorg/apache/logging/log4j/message/StructuredDataCollectionMessage;->structuredDataMessageList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
