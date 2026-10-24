.class Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter$TwoDigitYearField;
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
    name = "TwoDigitYearField"
.end annotation


# static fields
.field static final INSTANCE:Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter$TwoDigitYearField;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1066
    new-instance v0, Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter$TwoDigitYearField;

    invoke-direct {v0}, Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter$TwoDigitYearField;-><init>()V

    sput-object v0, Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter$TwoDigitYearField;->INSTANCE:Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter$TwoDigitYearField;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 1071
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1072
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

    .line 1095
    invoke-static {p1, p2}, Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter;->access$000(Ljava/lang/Appendable;I)V

    .line 1096
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

    .line 1087
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    rem-int/lit8 v0, v0, 0x64

    invoke-virtual {p0, p1, v0}, Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter$TwoDigitYearField;->appendTo(Ljava/lang/Appendable;I)V

    .line 1088
    return-void
.end method

.method public estimateLength()I
    .locals 1

    .line 1079
    const/4 v0, 0x2

    return v0
.end method
