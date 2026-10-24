.class Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter$Iso8601_Rule;
.super Ljava/lang/Object;
.source "FastDatePrinter.java"

# interfaces
.implements Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter$Rule;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Iso8601_Rule"
.end annotation


# static fields
.field static final ISO8601_HOURS:Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter$Iso8601_Rule;

.field static final ISO8601_HOURS_COLON_MINUTES:Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter$Iso8601_Rule;

.field static final ISO8601_HOURS_MINUTES:Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter$Iso8601_Rule;


# instance fields
.field final length:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1416
    new-instance v0, Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter$Iso8601_Rule;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter$Iso8601_Rule;-><init>(I)V

    sput-object v0, Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter$Iso8601_Rule;->ISO8601_HOURS:Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter$Iso8601_Rule;

    .line 1418
    new-instance v0, Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter$Iso8601_Rule;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter$Iso8601_Rule;-><init>(I)V

    sput-object v0, Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter$Iso8601_Rule;->ISO8601_HOURS_MINUTES:Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter$Iso8601_Rule;

    .line 1420
    new-instance v0, Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter$Iso8601_Rule;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter$Iso8601_Rule;-><init>(I)V

    sput-object v0, Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter$Iso8601_Rule;->ISO8601_HOURS_COLON_MINUTES:Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter$Iso8601_Rule;

    return-void
.end method

.method constructor <init>(I)V
    .locals 0
    .param p1, "length"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "length"
        }
    .end annotation

    .line 1449
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1450
    iput p1, p0, Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter$Iso8601_Rule;->length:I

    .line 1451
    return-void
.end method

.method static getRule(I)Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter$Iso8601_Rule;
    .locals 2
    .param p0, "tokenLen"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "tokenLen"
        }
    .end annotation

    .line 1430
    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    .line 1436
    sget-object v0, Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter$Iso8601_Rule;->ISO8601_HOURS_COLON_MINUTES:Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter$Iso8601_Rule;

    return-object v0

    .line 1438
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid number of X"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1434
    :cond_1
    sget-object v0, Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter$Iso8601_Rule;->ISO8601_HOURS_MINUTES:Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter$Iso8601_Rule;

    return-object v0

    .line 1432
    :cond_2
    sget-object v0, Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter$Iso8601_Rule;->ISO8601_HOURS:Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter$Iso8601_Rule;

    return-object v0
.end method


# virtual methods
.method public appendTo(Ljava/lang/Appendable;Ljava/util/Calendar;)V
    .locals 4
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

    .line 1466
    const/16 v0, 0xf

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const/16 v1, 0x10

    invoke-virtual {p2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 1467
    .local v0, "offset":I
    if-nez v0, :cond_0

    .line 1468
    const-string v1, "Z"

    invoke-interface {p1, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 1469
    return-void

    .line 1472
    :cond_0
    if-gez v0, :cond_1

    .line 1473
    const/16 v1, 0x2d

    invoke-interface {p1, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 1474
    neg-int v0, v0

    goto :goto_0

    .line 1476
    :cond_1
    const/16 v1, 0x2b

    invoke-interface {p1, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 1479
    :goto_0
    const v1, 0x36ee80

    div-int v1, v0, v1

    .line 1480
    .local v1, "hours":I
    invoke-static {p1, v1}, Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter;->access$000(Ljava/lang/Appendable;I)V

    .line 1482
    iget v2, p0, Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter$Iso8601_Rule;->length:I

    const/4 v3, 0x5

    if-ge v2, v3, :cond_2

    .line 1483
    return-void

    .line 1486
    :cond_2
    const/4 v3, 0x6

    if-ne v2, v3, :cond_3

    .line 1487
    const/16 v2, 0x3a

    invoke-interface {p1, v2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 1490
    :cond_3
    const v2, 0xea60

    div-int v2, v0, v2

    mul-int/lit8 v3, v1, 0x3c

    sub-int/2addr v2, v3

    .line 1491
    .local v2, "minutes":I
    invoke-static {p1, v2}, Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter;->access$000(Ljava/lang/Appendable;I)V

    .line 1492
    return-void
.end method

.method public estimateLength()I
    .locals 1

    .line 1458
    iget v0, p0, Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter$Iso8601_Rule;->length:I

    return v0
.end method
