.class public interface abstract Lorg/apache/logging/log4j/core/parser/TextLogEventParser;
.super Ljava/lang/Object;
.source "TextLogEventParser.java"

# interfaces
.implements Lorg/apache/logging/log4j/core/parser/LogEventParser;


# virtual methods
.method public abstract parseFrom(Ljava/lang/String;)Lorg/apache/logging/log4j/core/LogEvent;
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
