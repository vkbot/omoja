.class Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter$TimeZoneNumberRule;
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
    name = "TimeZoneNumberRule"
.end annotation


# static fields
.field static final INSTANCE_COLON:Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter$TimeZoneNumberRule;

.field static final INSTANCE_NO_COLON:Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter$TimeZoneNumberRule;


# instance fields
.field final mColon:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1360
    new-instance v0, Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter$TimeZoneNumberRule;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter$TimeZoneNumberRule;-><init>(Z)V

    sput-object v0, Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter$TimeZoneNumberRule;->INSTANCE_COLON:Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter$TimeZoneNumberRule;

    .line 1361
    new-instance v0, Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter$TimeZoneNumberRule;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter$TimeZoneNumberRule;-><init>(Z)V

    sput-object v0, Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter$TimeZoneNumberRule;->INSTANCE_NO_COLON:Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter$TimeZoneNumberRule;

    return-void
.end method

.method constructor <init>(Z)V
    .locals 0
    .param p1, "colon"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "colon"
        }
    .end annotation

    .line 1370
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1371
    iput-boolean p1, p0, Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter$TimeZoneNumberRule;->mColon:Z

    .line 1372
    return-void
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

    .line 1388
    const/16 v0, 0xf

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const/16 v1, 0x10

    invoke-virtual {p2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 1390
    .local v0, "offset":I
    if-gez v0, :cond_0

    .line 1391
    const/16 v1, 0x2d

    invoke-interface {p1, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 1392
    neg-int v0, v0

    goto :goto_0

    .line 1394
    :cond_0
    const/16 v1, 0x2b

    invoke-interface {p1, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 1397
    :goto_0
    const v1, 0x36ee80

    div-int v1, v0, v1

    .line 1398
    .local v1, "hours":I
    invoke-static {p1, v1}, Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter;->access$000(Ljava/lang/Appendable;I)V

    .line 1400
    iget-boolean v2, p0, Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter$TimeZoneNumberRule;->mColon:Z

    if-eqz v2, :cond_1

    .line 1401
    const/16 v2, 0x3a

    invoke-interface {p1, v2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 1404
    :cond_1
    const v2, 0xea60

    div-int v2, v0, v2

    mul-int/lit8 v3, v1, 0x3c

    sub-int/2addr v2, v3

    .line 1405
    .local v2, "minutes":I
    invoke-static {p1, v2}, Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter;->access$000(Ljava/lang/Appendable;I)V

    .line 1406
    return-void
.end method

.method public estimateLength()I
    .locals 1

    .line 1379
    const/4 v0, 0x5

    return v0
.end method
