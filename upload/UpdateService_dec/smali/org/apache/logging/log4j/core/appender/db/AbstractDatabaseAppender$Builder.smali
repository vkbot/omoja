.class public Lorg/apache/logging/log4j/core/appender/db/AbstractDatabaseAppender$Builder;
.super Lorg/apache/logging/log4j/core/appender/AbstractAppender$Builder;
.source "AbstractDatabaseAppender.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/core/appender/db/AbstractDatabaseAppender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B:",
        "Lorg/apache/logging/log4j/core/appender/db/AbstractDatabaseAppender$Builder<",
        "TB;>;>",
        "Lorg/apache/logging/log4j/core/appender/AbstractAppender$Builder<",
        "TB;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 43
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/db/AbstractDatabaseAppender$Builder;, "Lorg/apache/logging/log4j/core/appender/db/AbstractDatabaseAppender$Builder<TB;>;"
    invoke-direct {p0}, Lorg/apache/logging/log4j/core/appender/AbstractAppender$Builder;-><init>()V

    return-void
.end method
