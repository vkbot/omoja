.class Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter$TwoDigitNumberField;
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
    name = "TwoDigitNumberField"
.end annotation


# instance fields
.field private final mField:I


# direct methods
.method constructor <init>(I)V
    .locals 0
    .param p1, "field"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "field"
        }
    .end annotation

    .line 1029
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1030
    iput p1, p0, Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter$TwoDigitNumberField;->mField:I

    .line 1031
    return-void
.end method


# virtual methods
.method public final appendTo(Ljava/lang/Appendable;I)V
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

    .line 1054
    const/16 v0, 0x64

    if-ge p2, v0, :cond_0

    .line 1055
    invoke-static {p1, p2}, Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter;->access$000(Ljava/lang/Appendable;I)V

    goto :goto_0

    .line 1057
    :cond_0
    const/4 v0, 0x2

    invoke-static {p1, p2, v0}, Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter;->access$100(Ljava/lang/Appendable;II)V

    .line 1059
    :goto_0
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

    .line 1046
    iget v0, p0, Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter$TwoDigitNumberField;->mField:I

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter$TwoDigitNumberField;->appendTo(Ljava/lang/Appendable;I)V

    .line 1047
    return-void
.end method

.method public estimateLength()I
    .locals 1

    .line 1038
    const/4 v0, 0x2

    return v0
.end method
