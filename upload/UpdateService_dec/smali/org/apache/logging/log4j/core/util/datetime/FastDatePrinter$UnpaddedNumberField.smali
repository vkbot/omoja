.class Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter$UnpaddedNumberField;
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
    name = "UnpaddedNumberField"
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

    .line 894
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 895
    iput p1, p0, Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter$UnpaddedNumberField;->mField:I

    .line 896
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

    .line 919
    const/16 v0, 0xa

    if-ge p2, v0, :cond_0

    .line 920
    add-int/lit8 v0, p2, 0x30

    int-to-char v0, v0

    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    goto :goto_0

    .line 921
    :cond_0
    const/16 v0, 0x64

    if-ge p2, v0, :cond_1

    .line 922
    invoke-static {p1, p2}, Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter;->access$000(Ljava/lang/Appendable;I)V

    goto :goto_0

    .line 924
    :cond_1
    const/4 v0, 0x1

    invoke-static {p1, p2, v0}, Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter;->access$100(Ljava/lang/Appendable;II)V

    .line 926
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

    .line 911
    iget v0, p0, Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter$UnpaddedNumberField;->mField:I

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter$UnpaddedNumberField;->appendTo(Ljava/lang/Appendable;I)V

    .line 912
    return-void
.end method

.method public estimateLength()I
    .locals 1

    .line 903
    const/4 v0, 0x4

    return v0
.end method
