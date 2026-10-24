.class Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter$TextField;
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
    name = "TextField"
.end annotation


# instance fields
.field private final mField:I

.field private final mValues:[Ljava/lang/String;


# direct methods
.method constructor <init>(I[Ljava/lang/String;)V
    .locals 0
    .param p1, "field"    # I
    .param p2, "values"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "field",
            "values"
        }
    .end annotation

    .line 854
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 855
    iput p1, p0, Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter$TextField;->mField:I

    .line 856
    iput-object p2, p0, Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter$TextField;->mValues:[Ljava/lang/String;

    .line 857
    return-void
.end method


# virtual methods
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

    .line 879
    iget-object v0, p0, Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter$TextField;->mValues:[Ljava/lang/String;

    iget v1, p0, Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter$TextField;->mField:I

    invoke-virtual {p2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    aget-object v0, v0, v1

    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 880
    return-void
.end method

.method public estimateLength()I
    .locals 3

    .line 864
    const/4 v0, 0x0

    .line 865
    .local v0, "max":I
    iget-object v1, p0, Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter$TextField;->mValues:[Ljava/lang/String;

    array-length v1, v1

    .local v1, "i":I
    :goto_0
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_1

    .line 866
    iget-object v2, p0, Lorg/apache/logging/log4j/core/util/datetime/FastDatePrinter$TextField;->mValues:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    .line 867
    .local v2, "len":I
    if-le v2, v0, :cond_0

    .line 868
    move v0, v2

    .line 870
    .end local v2    # "len":I
    :cond_0
    goto :goto_0

    .line 871
    .end local v1    # "i":I
    :cond_1
    return v0
.end method
