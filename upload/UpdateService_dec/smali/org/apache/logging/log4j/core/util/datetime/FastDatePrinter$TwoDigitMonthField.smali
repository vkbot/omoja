.class Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter$TwoDigitMonthField;
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
    name = "TwoDigitMonthField"
.end annotation


# static fields
.field static final INSTANCE:Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter$TwoDigitMonthField;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1103
    new-instance v0, Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter$TwoDigitMonthField;

    invoke-direct {v0}, Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter$TwoDigitMonthField;-><init>()V

    sput-object v0, Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter$TwoDigitMonthField;->INSTANCE:Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter$TwoDigitMonthField;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 1108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1109
    return-void
.end method


# virtual methods
.method public final appendTo(Ljava/lang/Appendable;I)V
    .locals 0
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

    .line 1132
    invoke-static {p1, p2}, Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter;->access$000(Ljava/lang/Appendable;I)V

    .line 1133
    return-void
.end method

.method public appendTo(Ljava/lang/Appendable;Ljava/util/Calendar;)V
    .locals 1
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

    .line 1124
    const/4 v0, 0x2

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter$TwoDigitMonthField;->appendTo(Ljava/lang/Appendable;I)V

    .line 1125
    return-void
.end method

.method public estimateLength()I
    .locals 1

    .line 1116
    const/4 v0, 0x2

    return v0
.end method
