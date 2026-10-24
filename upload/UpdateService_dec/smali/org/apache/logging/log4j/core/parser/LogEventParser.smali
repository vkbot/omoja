.class public interface abstract Lorg/apache/logging/log4j/core/parser/LogEventParser;
.super Ljava/lang/Object;
.source "LogEventParser.java"


# virtual methods
.method public abstract parseFrom([B)Lorg/apache/logging/log4j/core/LogEvent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "input"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/logging/log4j/core/parser/ParseException;
        }
    .end annotation
.end method

.method public abstract parseFrom([BII)Lorg/apache/logging/log4j/core/LogEvent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "input",
            "offset",
            "length"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/logging/log4j/core/parser/ParseException;
        }
    .end annotation
.end method
