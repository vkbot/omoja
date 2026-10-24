.class public interface abstract Lorg/apache/logging/log4j/core/util/datetime/DatePrinter;
.super Ljava/lang/Object;
.source "DatePrinter.java"


# virtual methods
.method public abstract format(JLjava/lang/Appendable;)Ljava/lang/Appendable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "millis",
            "buf"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B::",
            "Ljava/lang/Appendable;",
            ">(JTB;)TB;"
        }
    .end annotation
.end method

.method public abstract format(Ljava/util/Calendar;Ljava/lang/Appendable;)Ljava/lang/Appendable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "calendar",
            "buf"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B::",
            "Ljava/lang/Appendable;",
            ">(",
            "Ljava/util/Calendar;",
            "TB;)TB;"
        }
    .end annotation
.end method

.method public abstract format(Ljava/util/Date;Ljava/lang/Appendable;)Ljava/lang/Appendable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "date",
            "buf"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B::",
            "Ljava/lang/Appendable;",
            ">(",
            "Ljava/util/Date;",
            "TB;)TB;"
        }
    .end annotation
.end method

.method public abstract format(J)Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "millis"
        }
    .end annotation
.end method

.method public abstract format(Ljava/util/Calendar;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "calendar"
        }
    .end annotation
.end method

.method public abstract format(Ljava/util/Date;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "date"
        }
    .end annotation
.end method

.method public abstract format(Ljava/lang/Object;Ljava/lang/StringBuilder;Ljava/text/FieldPosition;)Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "obj",
            "toAppendTo",
            "pos"
        }
    .end annotation
.end method

.method public abstract getLocale()Ljava/util/Locale;
.end method

.method public abstract getPattern()Ljava/lang/String;
.end method

.method public abstract getTimeZone()Ljava/util/TimeZone;
.end method
