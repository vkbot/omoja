.class public Lorg/apache/poi/ss/format/CellFormat;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final INVALID_VALUE_FOR_FORMAT:Ljava/lang/String; = "###############################################################################################################################################################################################################################################################"

.field private static final LOG:La5/d;

.field private static final ONE_PART:Ljava/util/regex/Pattern;

.field private static final QUOTE:Ljava/lang/String; = "\""

.field private static final formatCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/util/Locale;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/poi/ss/format/CellFormat;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private final format:Ljava/lang/String;

.field private final formatPartCount:I

.field private final locale:Ljava/util/Locale;

.field private final negNumFmt:Lorg/apache/poi/ss/format/CellFormatPart;

.field private final posNumFmt:Lorg/apache/poi/ss/format/CellFormatPart;

.field private final textFmt:Lorg/apache/poi/ss/format/CellFormatPart;

.field private final zeroNumFmt:Lorg/apache/poi/ss/format/CellFormatPart;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lorg/apache/poi/ss/format/CellFormat;

    invoke-static {v0}, La5/c;->a(Ljava/lang/Class;)Le5/g;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/ss/format/CellFormat;->LOG:La5/d;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lorg/apache/poi/ss/format/CellFormatPart;->FORMAT_PAT:Ljava/util/regex/Pattern;

    invoke-virtual {v1}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "(;|$)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x6

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/ss/format/CellFormat;->ONE_PART:Ljava/util/regex/Pattern;

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lorg/apache/poi/ss/format/CellFormat;->formatCache:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Ljava/util/Locale;Ljava/lang/String;)V
    .locals 7

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/ss/format/CellFormat;->locale:Ljava/util/Locale;

    iput-object p2, p0, Lorg/apache/poi/ss/format/CellFormat;->format:Ljava/lang/String;

    .line 3
    new-instance v0, Lorg/apache/poi/ss/format/CellFormatPart;

    const-string v1, "@"

    invoke-direct {v0, p1, v1}, Lorg/apache/poi/ss/format/CellFormatPart;-><init>(Ljava/util/Locale;Ljava/lang/String;)V

    sget-object v1, Lorg/apache/poi/ss/format/CellFormat;->ONE_PART:Ljava/util/regex/Pattern;

    .line 4
    invoke-virtual {v1, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p2

    .line 5
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 6
    :goto_0
    invoke-virtual {p2}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v2, :cond_1

    .line 7
    :try_start_0
    invoke-virtual {p2}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v2

    const-string v6, ";"

    .line 8
    invoke-virtual {v2, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 9
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v6, v5

    invoke-virtual {v2, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :catch_0
    move-exception v2

    goto :goto_2

    .line 10
    :cond_0
    :goto_1
    new-instance v4, Lorg/apache/poi/ss/format/CellFormatPart;

    invoke-direct {v4, p1, v2}, Lorg/apache/poi/ss/format/CellFormatPart;-><init>(Ljava/util/Locale;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :goto_2
    sget-object v4, Lorg/apache/poi/ss/format/CellFormat;->LOG:La5/d;

    .line 11
    invoke-virtual {p2}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/apache/poi/ss/format/CellFormatter;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "Invalid format: {}"

    invoke-interface {v4, v5, v6, v2}, La5/d;->n(Ljava/lang/Object;Ljava/lang/String;Ljava/io/Serializable;)V

    .line 12
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 13
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p1

    iput p1, p0, Lorg/apache/poi/ss/format/CellFormat;->formatPartCount:I

    if-eq p1, v5, :cond_4

    const/4 p2, 0x2

    if-eq p1, p2, :cond_3

    const/4 v2, 0x3

    if-eq p1, v2, :cond_2

    .line 14
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/poi/ss/format/CellFormatPart;

    iput-object p1, p0, Lorg/apache/poi/ss/format/CellFormat;->posNumFmt:Lorg/apache/poi/ss/format/CellFormatPart;

    .line 15
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/poi/ss/format/CellFormatPart;

    iput-object p1, p0, Lorg/apache/poi/ss/format/CellFormat;->negNumFmt:Lorg/apache/poi/ss/format/CellFormatPart;

    .line 16
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/poi/ss/format/CellFormatPart;

    iput-object p1, p0, Lorg/apache/poi/ss/format/CellFormat;->zeroNumFmt:Lorg/apache/poi/ss/format/CellFormatPart;

    .line 17
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/poi/ss/format/CellFormatPart;

    iput-object p1, p0, Lorg/apache/poi/ss/format/CellFormat;->textFmt:Lorg/apache/poi/ss/format/CellFormatPart;

    goto :goto_3

    .line 18
    :cond_2
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/poi/ss/format/CellFormatPart;

    iput-object p1, p0, Lorg/apache/poi/ss/format/CellFormat;->posNumFmt:Lorg/apache/poi/ss/format/CellFormatPart;

    .line 19
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/poi/ss/format/CellFormatPart;

    iput-object p1, p0, Lorg/apache/poi/ss/format/CellFormat;->negNumFmt:Lorg/apache/poi/ss/format/CellFormatPart;

    .line 20
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/poi/ss/format/CellFormatPart;

    iput-object p1, p0, Lorg/apache/poi/ss/format/CellFormat;->zeroNumFmt:Lorg/apache/poi/ss/format/CellFormatPart;

    iput-object v0, p0, Lorg/apache/poi/ss/format/CellFormat;->textFmt:Lorg/apache/poi/ss/format/CellFormatPart;

    goto :goto_3

    .line 21
    :cond_3
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/poi/ss/format/CellFormatPart;

    iput-object p1, p0, Lorg/apache/poi/ss/format/CellFormat;->posNumFmt:Lorg/apache/poi/ss/format/CellFormatPart;

    .line 22
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/poi/ss/format/CellFormatPart;

    iput-object p1, p0, Lorg/apache/poi/ss/format/CellFormat;->negNumFmt:Lorg/apache/poi/ss/format/CellFormatPart;

    iput-object v3, p0, Lorg/apache/poi/ss/format/CellFormat;->zeroNumFmt:Lorg/apache/poi/ss/format/CellFormatPart;

    iput-object v0, p0, Lorg/apache/poi/ss/format/CellFormat;->textFmt:Lorg/apache/poi/ss/format/CellFormatPart;

    goto :goto_3

    .line 23
    :cond_4
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/poi/ss/format/CellFormatPart;

    iput-object p1, p0, Lorg/apache/poi/ss/format/CellFormat;->posNumFmt:Lorg/apache/poi/ss/format/CellFormatPart;

    iput-object v3, p0, Lorg/apache/poi/ss/format/CellFormat;->negNumFmt:Lorg/apache/poi/ss/format/CellFormatPart;

    iput-object v3, p0, Lorg/apache/poi/ss/format/CellFormat;->zeroNumFmt:Lorg/apache/poi/ss/format/CellFormatPart;

    iput-object v0, p0, Lorg/apache/poi/ss/format/CellFormat;->textFmt:Lorg/apache/poi/ss/format/CellFormatPart;

    :goto_3
    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/Locale;Ljava/lang/String;Lorg/apache/poi/ss/format/CellFormat$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lorg/apache/poi/ss/format/CellFormat;-><init>(Ljava/util/Locale;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic a(Ljava/util/Locale;)Ljava/util/Map;
    .locals 0

    invoke-static {p0}, Lorg/apache/poi/ss/format/CellFormat;->lambda$getInstance$0(Ljava/util/Locale;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method private apply(Ljava/util/Date;D)Lorg/apache/poi/ss/format/CellFormatResult;
    .locals 0

    .line 15
    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-direct {p0, p2}, Lorg/apache/poi/ss/format/CellFormat;->getApplicableFormatPart(Ljava/lang/Object;)Lorg/apache/poi/ss/format/CellFormatPart;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/apache/poi/ss/format/CellFormatPart;->apply(Ljava/lang/Object;)Lorg/apache/poi/ss/format/CellFormatResult;

    move-result-object p0

    return-object p0
.end method

.method private apply(Ljavax/swing/JLabel;Ljava/util/Date;D)Lorg/apache/poi/ss/format/CellFormatResult;
    .locals 0

    .line 31
    invoke-direct {p0, p2, p3, p4}, Lorg/apache/poi/ss/format/CellFormat;->apply(Ljava/util/Date;D)Lorg/apache/poi/ss/format/CellFormatResult;

    move-result-object p0

    .line 32
    iget-object p2, p0, Lorg/apache/poi/ss/format/CellFormatResult;->text:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljavax/swing/JLabel;->setText(Ljava/lang/String;)V

    .line 33
    iget-object p2, p0, Lorg/apache/poi/ss/format/CellFormatResult;->textColor:Ljava/awt/Color;

    if-eqz p2, :cond_0

    .line 34
    invoke-virtual {p1, p2}, Ljavax/swing/JLabel;->setForeground(Ljava/awt/Color;)V

    :cond_0
    return-object p0
.end method

.method private static createGeneralFormat(Ljava/util/Locale;)Lorg/apache/poi/ss/format/CellFormat;
    .locals 2

    new-instance v0, Lorg/apache/poi/ss/format/CellFormat$1;

    const-string v1, "General"

    invoke-direct {v0, p0, v1, p0}, Lorg/apache/poi/ss/format/CellFormat$1;-><init>(Ljava/util/Locale;Ljava/lang/String;Ljava/util/Locale;)V

    return-object v0
.end method

.method private getApplicableFormatPart(Ljava/lang/Object;)Lorg/apache/poi/ss/format/CellFormatPart;
    .locals 5

    instance-of v0, p1, Ljava/lang/Number;

    if-eqz v0, :cond_f

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    iget p1, p0, Lorg/apache/poi/ss/format/CellFormat;->formatPartCount:I

    const/4 v2, 0x1

    if-ne p1, v2, :cond_2

    iget-object p1, p0, Lorg/apache/poi/ss/format/CellFormat;->posNumFmt:Lorg/apache/poi/ss/format/CellFormatPart;

    invoke-virtual {p1}, Lorg/apache/poi/ss/format/CellFormatPart;->hasCondition()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/apache/poi/ss/format/CellFormat;->posNumFmt:Lorg/apache/poi/ss/format/CellFormatPart;

    invoke-virtual {p1}, Lorg/apache/poi/ss/format/CellFormatPart;->hasCondition()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/apache/poi/ss/format/CellFormat;->posNumFmt:Lorg/apache/poi/ss/format/CellFormatPart;

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/poi/ss/format/CellFormatPart;->applies(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lorg/apache/poi/ss/format/CellFormatPart;

    iget-object p0, p0, Lorg/apache/poi/ss/format/CellFormat;->locale:Ljava/util/Locale;

    const-string v0, "General"

    invoke-direct {p1, p0, v0}, Lorg/apache/poi/ss/format/CellFormatPart;-><init>(Ljava/util/Locale;Ljava/lang/String;)V

    return-object p1

    :cond_1
    :goto_0
    iget-object p0, p0, Lorg/apache/poi/ss/format/CellFormat;->posNumFmt:Lorg/apache/poi/ss/format/CellFormatPart;

    return-object p0

    :cond_2
    const/4 v2, 0x2

    const-wide/16 v3, 0x0

    if-ne p1, v2, :cond_8

    iget-object p1, p0, Lorg/apache/poi/ss/format/CellFormat;->posNumFmt:Lorg/apache/poi/ss/format/CellFormatPart;

    invoke-virtual {p1}, Lorg/apache/poi/ss/format/CellFormatPart;->hasCondition()Z

    move-result p1

    if-nez p1, :cond_3

    cmpl-double p1, v0, v3

    if-gez p1, :cond_4

    :cond_3
    iget-object p1, p0, Lorg/apache/poi/ss/format/CellFormat;->posNumFmt:Lorg/apache/poi/ss/format/CellFormatPart;

    invoke-virtual {p1}, Lorg/apache/poi/ss/format/CellFormatPart;->hasCondition()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lorg/apache/poi/ss/format/CellFormat;->posNumFmt:Lorg/apache/poi/ss/format/CellFormatPart;

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/apache/poi/ss/format/CellFormatPart;->applies(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    :cond_4
    iget-object p0, p0, Lorg/apache/poi/ss/format/CellFormat;->posNumFmt:Lorg/apache/poi/ss/format/CellFormatPart;

    return-object p0

    :cond_5
    iget-object p1, p0, Lorg/apache/poi/ss/format/CellFormat;->negNumFmt:Lorg/apache/poi/ss/format/CellFormatPart;

    invoke-virtual {p1}, Lorg/apache/poi/ss/format/CellFormatPart;->hasCondition()Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lorg/apache/poi/ss/format/CellFormat;->negNumFmt:Lorg/apache/poi/ss/format/CellFormatPart;

    invoke-virtual {p1}, Lorg/apache/poi/ss/format/CellFormatPart;->hasCondition()Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lorg/apache/poi/ss/format/CellFormat;->negNumFmt:Lorg/apache/poi/ss/format/CellFormatPart;

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/poi/ss/format/CellFormatPart;->applies(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    goto :goto_1

    :cond_6
    new-instance p0, Lorg/apache/poi/ss/format/CellFormatPart;

    const-string p1, "\"###############################################################################################################################################################################################################################################################\""

    invoke-direct {p0, p1}, Lorg/apache/poi/ss/format/CellFormatPart;-><init>(Ljava/lang/String;)V

    return-object p0

    :cond_7
    :goto_1
    iget-object p0, p0, Lorg/apache/poi/ss/format/CellFormat;->negNumFmt:Lorg/apache/poi/ss/format/CellFormatPart;

    return-object p0

    :cond_8
    iget-object p1, p0, Lorg/apache/poi/ss/format/CellFormat;->posNumFmt:Lorg/apache/poi/ss/format/CellFormatPart;

    invoke-virtual {p1}, Lorg/apache/poi/ss/format/CellFormatPart;->hasCondition()Z

    move-result p1

    if-nez p1, :cond_9

    cmpl-double p1, v0, v3

    if-gtz p1, :cond_a

    :cond_9
    iget-object p1, p0, Lorg/apache/poi/ss/format/CellFormat;->posNumFmt:Lorg/apache/poi/ss/format/CellFormatPart;

    invoke-virtual {p1}, Lorg/apache/poi/ss/format/CellFormatPart;->hasCondition()Z

    move-result p1

    if-eqz p1, :cond_b

    iget-object p1, p0, Lorg/apache/poi/ss/format/CellFormat;->posNumFmt:Lorg/apache/poi/ss/format/CellFormatPart;

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/apache/poi/ss/format/CellFormatPart;->applies(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    :cond_a
    iget-object p0, p0, Lorg/apache/poi/ss/format/CellFormat;->posNumFmt:Lorg/apache/poi/ss/format/CellFormatPart;

    return-object p0

    :cond_b
    iget-object p1, p0, Lorg/apache/poi/ss/format/CellFormat;->negNumFmt:Lorg/apache/poi/ss/format/CellFormatPart;

    invoke-virtual {p1}, Lorg/apache/poi/ss/format/CellFormatPart;->hasCondition()Z

    move-result p1

    if-nez p1, :cond_c

    cmpg-double p1, v0, v3

    if-ltz p1, :cond_d

    :cond_c
    iget-object p1, p0, Lorg/apache/poi/ss/format/CellFormat;->negNumFmt:Lorg/apache/poi/ss/format/CellFormatPart;

    invoke-virtual {p1}, Lorg/apache/poi/ss/format/CellFormatPart;->hasCondition()Z

    move-result p1

    if-eqz p1, :cond_e

    iget-object p1, p0, Lorg/apache/poi/ss/format/CellFormat;->negNumFmt:Lorg/apache/poi/ss/format/CellFormatPart;

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/poi/ss/format/CellFormatPart;->applies(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_e

    :cond_d
    iget-object p0, p0, Lorg/apache/poi/ss/format/CellFormat;->negNumFmt:Lorg/apache/poi/ss/format/CellFormatPart;

    return-object p0

    :cond_e
    iget-object p0, p0, Lorg/apache/poi/ss/format/CellFormat;->zeroNumFmt:Lorg/apache/poi/ss/format/CellFormatPart;

    return-object p0

    :cond_f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "value must be a Number"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getInstance(Ljava/lang/String;)Lorg/apache/poi/ss/format/CellFormat;
    .locals 1

    .line 1
    invoke-static {}, Lorg/apache/poi/util/LocaleUtil;->getUserLocale()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0, p0}, Lorg/apache/poi/ss/format/CellFormat;->getInstance(Ljava/util/Locale;Ljava/lang/String;)Lorg/apache/poi/ss/format/CellFormat;

    move-result-object p0

    return-object p0
.end method

.method public static declared-synchronized getInstance(Ljava/util/Locale;Ljava/lang/String;)Lorg/apache/poi/ss/format/CellFormat;
    .locals 4

    const-class v0, Lorg/apache/poi/ss/format/CellFormat;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lorg/apache/poi/ss/format/CellFormat;->formatCache:Ljava/util/Map;

    .line 2
    new-instance v2, Lg5/l;

    const/16 v3, 0x9

    invoke-direct {v2, v3}, Lg5/l;-><init>(I)V

    invoke-interface {v1, p0, v2}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 3
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/ss/format/CellFormat;

    if-nez v2, :cond_2

    const-string v2, "General"

    .line 4
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "@"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    new-instance v2, Lorg/apache/poi/ss/format/CellFormat;

    invoke-direct {v2, p0, p1}, Lorg/apache/poi/ss/format/CellFormat;-><init>(Ljava/util/Locale;Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 6
    :cond_1
    :goto_0
    invoke-static {p0}, Lorg/apache/poi/ss/format/CellFormat;->createGeneralFormat(Ljava/util/Locale;)Lorg/apache/poi/ss/format/CellFormat;

    move-result-object p0

    move-object v2, p0

    .line 7
    :goto_1
    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    :cond_2
    monitor-exit v0

    return-object v2

    :goto_2
    monitor-exit v0

    throw p0
.end method

.method private static synthetic lambda$getInstance$0(Ljava/util/Locale;)Ljava/util/Map;
    .locals 0

    new-instance p0, Ljava/util/WeakHashMap;

    invoke-direct {p0}, Ljava/util/WeakHashMap;-><init>()V

    return-object p0
.end method

.method public static ultimateType(Lorg/apache/poi/ss/usermodel/Cell;)Lorg/apache/poi/ss/usermodel/CellType;
    .locals 2

    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/Cell;->getCellType()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object v0

    sget-object v1, Lorg/apache/poi/ss/usermodel/CellType;->FORMULA:Lorg/apache/poi/ss/usermodel/CellType;

    if-ne v0, v1, :cond_0

    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/Cell;->getCachedFormulaResultType()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object p0

    return-object p0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Lorg/apache/poi/ss/format/CellFormatResult;
    .locals 4

    .line 1
    instance-of v0, p1, Ljava/lang/Number;

    if-eqz v0, :cond_4

    .line 2
    check-cast p1, Ljava/lang/Number;

    .line 3
    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpg-double p1, v0, v2

    if-gez p1, :cond_3

    iget p1, p0, Lorg/apache/poi/ss/format/CellFormat;->formatPartCount:I

    const/4 v2, 0x2

    if-ne p1, v2, :cond_0

    iget-object p1, p0, Lorg/apache/poi/ss/format/CellFormat;->posNumFmt:Lorg/apache/poi/ss/format/CellFormatPart;

    .line 4
    invoke-virtual {p1}, Lorg/apache/poi/ss/format/CellFormatPart;->hasCondition()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/apache/poi/ss/format/CellFormat;->negNumFmt:Lorg/apache/poi/ss/format/CellFormatPart;

    invoke-virtual {p1}, Lorg/apache/poi/ss/format/CellFormatPart;->hasCondition()Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_0
    iget p1, p0, Lorg/apache/poi/ss/format/CellFormat;->formatPartCount:I

    const/4 v2, 0x3

    if-ne p1, v2, :cond_1

    iget-object p1, p0, Lorg/apache/poi/ss/format/CellFormat;->negNumFmt:Lorg/apache/poi/ss/format/CellFormatPart;

    .line 5
    invoke-virtual {p1}, Lorg/apache/poi/ss/format/CellFormatPart;->hasCondition()Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    iget p1, p0, Lorg/apache/poi/ss/format/CellFormat;->formatPartCount:I

    const/4 v2, 0x4

    if-ne p1, v2, :cond_3

    iget-object p1, p0, Lorg/apache/poi/ss/format/CellFormat;->negNumFmt:Lorg/apache/poi/ss/format/CellFormatPart;

    .line 6
    invoke-virtual {p1}, Lorg/apache/poi/ss/format/CellFormatPart;->hasCondition()Z

    move-result p1

    if-nez p1, :cond_3

    :cond_2
    iget-object p0, p0, Lorg/apache/poi/ss/format/CellFormat;->negNumFmt:Lorg/apache/poi/ss/format/CellFormatPart;

    neg-double v0, v0

    .line 7
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/poi/ss/format/CellFormatPart;->apply(Ljava/lang/Object;)Lorg/apache/poi/ss/format/CellFormatResult;

    move-result-object p0

    return-object p0

    .line 8
    :cond_3
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/poi/ss/format/CellFormat;->getApplicableFormatPart(Ljava/lang/Object;)Lorg/apache/poi/ss/format/CellFormatPart;

    move-result-object p0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/poi/ss/format/CellFormatPart;->apply(Ljava/lang/Object;)Lorg/apache/poi/ss/format/CellFormatResult;

    move-result-object p0

    return-object p0

    .line 9
    :cond_4
    instance-of v0, p1, Ljava/util/Date;

    if-eqz v0, :cond_6

    .line 10
    move-object v0, p1

    check-cast v0, Ljava/util/Date;

    invoke-static {v0}, Lorg/apache/poi/ss/usermodel/DateUtil;->getExcelDate(Ljava/util/Date;)D

    move-result-wide v0

    .line 11
    invoke-static {v0, v1}, Lorg/apache/poi/ss/usermodel/DateUtil;->isValidExcelDate(D)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 12
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/poi/ss/format/CellFormat;->getApplicableFormatPart(Ljava/lang/Object;)Lorg/apache/poi/ss/format/CellFormatPart;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/apache/poi/ss/format/CellFormatPart;->apply(Ljava/lang/Object;)Lorg/apache/poi/ss/format/CellFormatResult;

    move-result-object p0

    return-object p0

    .line 13
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "value "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v0, " of date "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is not a valid Excel date"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    iget-object p0, p0, Lorg/apache/poi/ss/format/CellFormat;->textFmt:Lorg/apache/poi/ss/format/CellFormatPart;

    .line 14
    invoke-virtual {p0, p1}, Lorg/apache/poi/ss/format/CellFormatPart;->apply(Ljava/lang/Object;)Lorg/apache/poi/ss/format/CellFormatResult;

    move-result-object p0

    return-object p0
.end method

.method public apply(Ljavax/swing/JLabel;Ljava/lang/Object;)Lorg/apache/poi/ss/format/CellFormatResult;
    .locals 0

    .line 27
    invoke-virtual {p0, p2}, Lorg/apache/poi/ss/format/CellFormat;->apply(Ljava/lang/Object;)Lorg/apache/poi/ss/format/CellFormatResult;

    move-result-object p0

    .line 28
    iget-object p2, p0, Lorg/apache/poi/ss/format/CellFormatResult;->text:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljavax/swing/JLabel;->setText(Ljava/lang/String;)V

    .line 29
    iget-object p2, p0, Lorg/apache/poi/ss/format/CellFormatResult;->textColor:Ljava/awt/Color;

    if-eqz p2, :cond_0

    .line 30
    invoke-virtual {p1, p2}, Ljavax/swing/JLabel;->setForeground(Ljava/awt/Color;)V

    :cond_0
    return-object p0
.end method

.method public apply(Ljavax/swing/JLabel;Lorg/apache/poi/ss/usermodel/Cell;)Lorg/apache/poi/ss/format/CellFormatResult;
    .locals 4

    .line 35
    sget-object v0, Lorg/apache/poi/ss/format/CellFormat$2;->$SwitchMap$org$apache$poi$ss$usermodel$CellType:[I

    invoke-static {p2}, Lorg/apache/poi/ss/format/CellFormat;->ultimateType(Lorg/apache/poi/ss/usermodel/Cell;)Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const-string p2, "?"

    .line 36
    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/ss/format/CellFormat;->apply(Ljavax/swing/JLabel;Ljava/lang/Object;)Lorg/apache/poi/ss/format/CellFormatResult;

    move-result-object p0

    return-object p0

    .line 37
    :cond_0
    invoke-interface {p2}, Lorg/apache/poi/ss/usermodel/Cell;->getStringCellValue()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/ss/format/CellFormat;->apply(Ljavax/swing/JLabel;Ljava/lang/Object;)Lorg/apache/poi/ss/format/CellFormatResult;

    move-result-object p0

    return-object p0

    .line 38
    :cond_1
    invoke-interface {p2}, Lorg/apache/poi/ss/usermodel/Cell;->getNumericCellValue()D

    move-result-wide v0

    .line 39
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/apache/poi/ss/format/CellFormat;->getApplicableFormatPart(Ljava/lang/Object;)Lorg/apache/poi/ss/format/CellFormatPart;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/poi/ss/format/CellFormatPart;->getCellFormatType()Lorg/apache/poi/ss/format/CellFormatType;

    move-result-object v2

    sget-object v3, Lorg/apache/poi/ss/format/CellFormatType;->DATE:Lorg/apache/poi/ss/format/CellFormatType;

    if-ne v2, v3, :cond_3

    .line 40
    invoke-static {v0, v1}, Lorg/apache/poi/ss/usermodel/DateUtil;->isValidExcelDate(D)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 41
    invoke-interface {p2}, Lorg/apache/poi/ss/usermodel/Cell;->getDateCellValue()Ljava/util/Date;

    move-result-object p2

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/apache/poi/ss/format/CellFormat;->apply(Ljavax/swing/JLabel;Ljava/util/Date;D)Lorg/apache/poi/ss/format/CellFormatResult;

    move-result-object p0

    return-object p0

    :cond_2
    const-string p2, "###############################################################################################################################################################################################################################################################"

    .line 42
    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/ss/format/CellFormat;->apply(Ljavax/swing/JLabel;Ljava/lang/Object;)Lorg/apache/poi/ss/format/CellFormatResult;

    move-result-object p0

    return-object p0

    .line 43
    :cond_3
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/ss/format/CellFormat;->apply(Ljavax/swing/JLabel;Ljava/lang/Object;)Lorg/apache/poi/ss/format/CellFormatResult;

    move-result-object p0

    return-object p0

    .line 44
    :cond_4
    invoke-interface {p2}, Lorg/apache/poi/ss/usermodel/Cell;->getBooleanCellValue()Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/ss/format/CellFormat;->apply(Ljavax/swing/JLabel;Ljava/lang/Object;)Lorg/apache/poi/ss/format/CellFormatResult;

    move-result-object p0

    return-object p0

    :cond_5
    const-string p2, ""

    .line 45
    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/ss/format/CellFormat;->apply(Ljavax/swing/JLabel;Ljava/lang/Object;)Lorg/apache/poi/ss/format/CellFormatResult;

    move-result-object p0

    return-object p0
.end method

.method public apply(Lorg/apache/poi/ss/usermodel/Cell;)Lorg/apache/poi/ss/format/CellFormatResult;
    .locals 4

    .line 16
    sget-object v0, Lorg/apache/poi/ss/format/CellFormat$2;->$SwitchMap$org$apache$poi$ss$usermodel$CellType:[I

    invoke-static {p1}, Lorg/apache/poi/ss/format/CellFormat;->ultimateType(Lorg/apache/poi/ss/usermodel/Cell;)Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const-string p1, "?"

    .line 17
    invoke-virtual {p0, p1}, Lorg/apache/poi/ss/format/CellFormat;->apply(Ljava/lang/Object;)Lorg/apache/poi/ss/format/CellFormatResult;

    move-result-object p0

    return-object p0

    .line 18
    :cond_0
    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Cell;->getStringCellValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/poi/ss/format/CellFormat;->apply(Ljava/lang/Object;)Lorg/apache/poi/ss/format/CellFormatResult;

    move-result-object p0

    return-object p0

    .line 19
    :cond_1
    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Cell;->getNumericCellValue()D

    move-result-wide v0

    .line 20
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/apache/poi/ss/format/CellFormat;->getApplicableFormatPart(Ljava/lang/Object;)Lorg/apache/poi/ss/format/CellFormatPart;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/poi/ss/format/CellFormatPart;->getCellFormatType()Lorg/apache/poi/ss/format/CellFormatType;

    move-result-object v2

    sget-object v3, Lorg/apache/poi/ss/format/CellFormatType;->DATE:Lorg/apache/poi/ss/format/CellFormatType;

    if-ne v2, v3, :cond_3

    .line 21
    invoke-static {v0, v1}, Lorg/apache/poi/ss/usermodel/DateUtil;->isValidExcelDate(D)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 22
    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Cell;->getDateCellValue()Ljava/util/Date;

    move-result-object p1

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/poi/ss/format/CellFormat;->apply(Ljava/util/Date;D)Lorg/apache/poi/ss/format/CellFormatResult;

    move-result-object p0

    return-object p0

    :cond_2
    const-string p1, "###############################################################################################################################################################################################################################################################"

    .line 23
    invoke-virtual {p0, p1}, Lorg/apache/poi/ss/format/CellFormat;->apply(Ljava/lang/Object;)Lorg/apache/poi/ss/format/CellFormatResult;

    move-result-object p0

    return-object p0

    .line 24
    :cond_3
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/poi/ss/format/CellFormat;->apply(Ljava/lang/Object;)Lorg/apache/poi/ss/format/CellFormatResult;

    move-result-object p0

    return-object p0

    .line 25
    :cond_4
    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Cell;->getBooleanCellValue()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/poi/ss/format/CellFormat;->apply(Ljava/lang/Object;)Lorg/apache/poi/ss/format/CellFormatResult;

    move-result-object p0

    return-object p0

    :cond_5
    const-string p1, ""

    .line 26
    invoke-virtual {p0, p1}, Lorg/apache/poi/ss/format/CellFormat;->apply(Ljava/lang/Object;)Lorg/apache/poi/ss/format/CellFormatResult;

    move-result-object p0

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    instance-of v0, p1, Lorg/apache/poi/ss/format/CellFormat;

    if-eqz v0, :cond_1

    check-cast p1, Lorg/apache/poi/ss/format/CellFormat;

    iget-object p0, p0, Lorg/apache/poi/ss/format/CellFormat;->format:Ljava/lang/String;

    iget-object p1, p1, Lorg/apache/poi/ss/format/CellFormat;->format:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public hashCode()I
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/ss/format/CellFormat;->format:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    return p0
.end method
