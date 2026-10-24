.class Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter$PaddedNumberField;
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
    name = "PaddedNumberField"
.end annotation


# instance fields
.field private final mField:I

.field private final mSize:I


# direct methods
.method constructor <init>(II)V
    .locals 1
    .param p1, "field"    # I
    .param p2, "size"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "field",
            "size"
        }
    .end annotation

    .line 984
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 985
    const/4 v0, 0x3

    if-lt p2, v0, :cond_0

    .line 989
    iput p1, p0, Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter$PaddedNumberField;->mField:I

    .line 990
    iput p2, p0, Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter$PaddedNumberField;->mSize:I

    .line 991
    return-void

    .line 987
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
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

    .line 1014
    iget v0, p0, Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter$PaddedNumberField;->mSize:I

    invoke-static {p1, p2, v0}, Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter;->access$100(Ljava/lang/Appendable;II)V

    .line 1015
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

    .line 1006
    iget v0, p0, Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter$PaddedNumberField;->mField:I

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter$PaddedNumberField;->appendTo(Ljava/lang/Appendable;I)V

    .line 1007
    return-void
.end method

.method public estimateLength()I
    .locals 1

    .line 998
    iget v0, p0, Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter$PaddedNumberField;->mSize:I

    return v0
.end method
