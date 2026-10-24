.class Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter$TwelveHourField;
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
    name = "TwelveHourField"
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

    .line 1148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1149
    iput-object p1, p0, Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter$TwelveHourField;->mRule:Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter$NumberRule;

    .line 1150
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

    .line 1177
    iget-object v0, p0, Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter$TwelveHourField;->mRule:Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter$NumberRule;

    invoke-interface {v0, p1, p2}, Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter$NumberRule;->appendTo(Ljava/lang/Appendable;I)V

    .line 1178
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

    .line 1165
    const/16 v0, 0xa

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 1166
    .local v1, "value":I
    if-nez v1, :cond_0

    .line 1167
    invoke-virtual {p2, v0}, Ljava/util/Calendar;->getLeastMaximum(I)I

    move-result v0

    add-int/lit8 v1, v0, 0x1

    .line 1169
    :cond_0
    iget-object v0, p0, Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter$TwelveHourField;->mRule:Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter$NumberRule;

    invoke-interface {v0, p1, v1}, Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter$NumberRule;->appendTo(Ljava/lang/Appendable;I)V

    .line 1170
    return-void
.end method

.method public estimateLength()I
    .locals 1

    .line 1157
    iget-object v0, p0, Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter$TwelveHourField;->mRule:Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter$NumberRule;

    invoke-interface {v0}, Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter$NumberRule;->estimateLength()I

    move-result v0

    return v0
.end method
