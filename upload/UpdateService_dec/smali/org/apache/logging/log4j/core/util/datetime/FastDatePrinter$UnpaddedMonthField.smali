.class Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter$UnpaddedMonthField;
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
    name = "UnpaddedMonthField"
.end annotation


# static fields
.field static final INSTANCE:Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter$UnpaddedMonthField;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 933
    new-instance v0, Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter$UnpaddedMonthField;

    invoke-direct {v0}, Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter$UnpaddedMonthField;-><init>()V

    sput-object v0, Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter$UnpaddedMonthField;->INSTANCE:Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter$UnpaddedMonthField;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 939
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 940
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

    .line 963
    const/16 v0, 0xa

    if-ge p2, v0, :cond_0

    .line 964
    add-int/lit8 v0, p2, 0x30

    int-to-char v0, v0

    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    goto :goto_0

    .line 966
    :cond_0
    invoke-static {p1, p2}, Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter;->access$000(Ljava/lang/Appendable;I)V

    .line 968
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

    .line 955
    const/4 v0, 0x2

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter$UnpaddedMonthField;->appendTo(Ljava/lang/Appendable;I)V

    .line 956
    return-void
.end method

.method public estimateLength()I
    .locals 1

    .line 947
    const/4 v0, 0x2

    return v0
.end method
