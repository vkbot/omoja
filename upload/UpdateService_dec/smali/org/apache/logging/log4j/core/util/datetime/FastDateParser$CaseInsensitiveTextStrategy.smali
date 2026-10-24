.class Lorg/apache/logging/log4j/core/util/datetime/FastDateParser$CaseInsensitiveTextStrategy;
.super Lorg/apache/logging/log4j/core/util/datetime/FastDateParser$PatternStrategy;
.source "FastDateParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/core/util/datetime/FastDateParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CaseInsensitiveTextStrategy"
.end annotation


# instance fields
.field private final field:I

.field private final lKeyValues:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final locale:Ljava/util/Locale;


# direct methods
.method constructor <init>(ILjava/util/Calendar;Ljava/util/Locale;)V
    .locals 2
    .param p1, "field"    # I
    .param p2, "definingCalendar"    # Ljava/util/Calendar;
    .param p3, "locale"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "field",
            "definingCalendar",
            "locale"
        }
    .end annotation

    .line 702
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/logging/log4j/core/util/datetime/FastDateParser$PatternStrategy;-><init>(Lorg/apache/logging/log4j/core/util/datetime/FastDateParser$1;)V

    .line 703
    iput p1, p0, Lorg/apache/logging/log4j/core/util/datetime/FastDateParser$CaseInsensitiveTextStrategy;->field:I

    .line 704
    iput-object p3, p0, Lorg/apache/logging/log4j/core/util/datetime/FastDateParser$CaseInsensitiveTextStrategy;->locale:Ljava/util/Locale;

    .line 706
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 707
    .local v0, "regex":Ljava/lang/StringBuilder;
    const-string v1, "((?iu)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 708
    invoke-static {p2, p3, p1, v0}, Lorg/apache/logging/log4j/core/util/datetime/FastDateParser;->access$600(Ljava/util/Calendar;Ljava/util/Locale;ILjava/lang/StringBuilder;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/logging/log4j/core/util/datetime/FastDateParser$CaseInsensitiveTextStrategy;->lKeyValues:Ljava/util/Map;

    .line 709
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 710
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 711
    invoke-virtual {p0, v0}, Lorg/apache/logging/log4j/core/util/datetime/FastDateParser$CaseInsensitiveTextStrategy;->createPattern(Ljava/lang/StringBuilder;)V

    .line 712
    return-void
.end method


# virtual methods
.method setCalendar(Lorg/apache/logging/log4j/core/util/datetime/FastDateParser;Ljava/util/Calendar;Ljava/lang/String;)V
    .locals 3
    .param p1, "parser"    # Lorg/apache/logging/log4j/core/util/datetime/FastDateParser;
    .param p2, "cal"    # Ljava/util/Calendar;
    .param p3, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "parser",
            "cal",
            "value"
        }
    .end annotation

    .line 719
    iget-object v0, p0, Lorg/apache/logging/log4j/core/util/datetime/FastDateParser$CaseInsensitiveTextStrategy;->lKeyValues:Ljava/util/Map;

    iget-object v1, p0, Lorg/apache/logging/log4j/core/util/datetime/FastDateParser$CaseInsensitiveTextStrategy;->locale:Ljava/util/Locale;

    invoke-virtual {p3, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 720
    .local v0, "iVal":Ljava/lang/Integer;
    iget v1, p0, Lorg/apache/logging/log4j/core/util/datetime/FastDateParser$CaseInsensitiveTextStrategy;->field:I

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p2, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 721
    return-void
.end method
