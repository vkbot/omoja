.class Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter$WeekYear;
.super Ljava/lang/Object;
.source "FastDatePrinter.java"

# interfaces
.implements Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter$NumberRule;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WeekYear"
.end annotation


# instance fields
.field private final mRule:Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter$NumberRule;


# direct methods
.method constructor <init>(Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter$NumberRule;)V
    .locals 0
    .param p1, "rule"    # Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter$NumberRule;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "rule"
        }
    .end annotation

    .line 1259
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1260
    iput-object p1, p0, Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter$WeekYear;->mRule:Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter$NumberRule;

    .line 1261
    return-void
.end method


# virtual methods
.method public appendTo(Ljava/lang/Appendable;I)V
    .locals 1
    .param p1, "buffer"    # Ljava/lang/Appendable;
    .param p2, "value"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "buffer",
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1275
    iget-object v0, p0, Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter$WeekYear;->mRule:Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter$NumberRule;

    invoke-interface {v0, p1, p2}, Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter$NumberRule;->appendTo(Ljava/lang/Appendable;I)V

    .line 1276
    return-void
.end method

.method public appendTo(Ljava/lang/Appendable;Ljava/util/Calendar;)V
    .locals 2
    .param p1, "buffer"    # Ljava/lang/Appendable;
    .param p2, "calendar"    # Ljava/util/Calendar;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "buffer",
            "calendar"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1270
    iget-object v0, p0, Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter$WeekYear;->mRule:Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter$NumberRule;

    invoke-virtual {p2}, Ljava/util/Calendar;->getWeekYear()I

    move-result v1

    invoke-interface {v0, p1, v1}, Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter$NumberRule;->appendTo(Ljava/lang/Appendable;I)V

    .line 1271
    return-void
.end method

.method public estimateLength()I
    .locals 1

    .line 1265
    iget-object v0, p0, Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter$WeekYear;->mRule:Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter$NumberRule;

    invoke-interface {v0}, Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter$NumberRule;->estimateLength()I

    move-result v0

    return v0
.end method
