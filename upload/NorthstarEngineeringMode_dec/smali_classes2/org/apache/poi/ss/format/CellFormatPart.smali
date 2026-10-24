.class public Lorg/apache/poi/ss/format/CellFormatPart;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/ss/format/CellFormatPart$PartHandler;
    }
.end annotation


# static fields
.field public static final COLOR_GROUP:I

.field public static final COLOR_PAT:Ljava/util/regex/Pattern;

.field public static final CONDITION_OPERATOR_GROUP:I

.field public static final CONDITION_PAT:Ljava/util/regex/Pattern;

.field public static final CONDITION_VALUE_GROUP:I

.field public static final CURRENCY_PAT:Ljava/util/regex/Pattern;

.field public static final FORMAT_PAT:Ljava/util/regex/Pattern;

.field private static final LOG:La5/d;

.field static final NAMED_COLORS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/awt/Color;",
            ">;"
        }
    .end annotation
.end field

.field public static final SPECIFICATION_GROUP:I

.field public static final SPECIFICATION_PAT:Ljava/util/regex/Pattern;


# instance fields
.field private final color:Ljava/awt/Color;

.field private final condition:Lorg/apache/poi/ss/format/CellFormatCondition;

.field private final format:Lorg/apache/poi/ss/format/CellFormatter;

.field private final type:Lorg/apache/poi/ss/format/CellFormatType;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    const-class v0, Lorg/apache/poi/ss/format/CellFormatPart;

    invoke-static {v0}, La5/c;->a(Ljava/lang/Class;)Le5/g;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/ss/format/CellFormatPart;->LOG:La5/d;

    new-instance v0, Ljava/util/TreeMap;

    sget-object v1, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    sput-object v0, Lorg/apache/poi/ss/format/CellFormatPart;->NAMED_COLORS:Ljava/util/Map;

    invoke-static {}, Lorg/apache/poi/hssf/util/HSSFColor$HSSFColorPredefined;->values()[Lorg/apache/poi/hssf/util/HSSFColor$HSSFColorPredefined;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, v0, v3

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Lorg/apache/poi/hssf/util/HSSFColor$HSSFColorPredefined;->getTriplet()[S

    move-result-object v4

    new-instance v6, Ljava/awt/Color;

    aget-short v7, v4, v2

    const/4 v8, 0x1

    aget-short v8, v4, v8

    const/4 v9, 0x2

    aget-short v4, v4, v9

    invoke-direct {v6, v7, v8, v4}, Ljava/awt/Color;-><init>(III)V

    sget-object v4, Lorg/apache/poi/ss/format/CellFormatPart;->NAMED_COLORS:Ljava/util/Map;

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v7, 0x5f

    invoke-virtual {v5, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    const/16 v9, 0x20

    if-lez v8, :cond_0

    invoke-virtual {v5, v7, v9}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4, v8, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const-string v8, "_PERCENT"

    invoke-virtual {v5, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    if-lez v10, :cond_1

    const-string v10, "%"

    invoke-virtual {v5, v8, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v7, v9}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    const-string v0, "\\[(black|blue|cyan|green|magenta|red|white|yellow|color [0-9]+)]"

    const/4 v1, 0x6

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/ss/format/CellFormatPart;->COLOR_PAT:Ljava/util/regex/Pattern;

    const-string v0, "([<>=]=?|!=|<>)    # The operator\n  \\s*(-?([0-9]+(?:\\.[0-9]*)?)|(\\.[0-9]*))\\s*  # The constant to test against\n"

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/ss/format/CellFormatPart;->CONDITION_PAT:Ljava/util/regex/Pattern;

    const-string v0, "\\\\.                     # Quoted single character\n|\"([^\\\\\"]|\\\\.)*\"         # Quoted string of characters (handles escaped quotes like \\\") \n|(\\[\\$.{0,3}(-[0-9a-f]{3,4})?])                   # Currency symbol in a given locale\n|_.                             # Space as wide as a given character\n|\\*.                           # Repeating fill character\n|@                              # Text: cell text\n|([0?\\#][0?\\#,]*)             # Number: digit + other digits and commas\n|e[-+]                          # Number: Scientific: Exponent\n|m{1,5}                         # Date: month or minute spec\n|d{1,4}                         # Date: day/date spec\n|y{2,4}                         # Date: year spec\n|h{1,2}                         # Date: hour spec\n|s{1,2}                         # Date: second spec\n|am?/pm?                        # Date: am/pm spec\n|\\[h{1,2}]                     # Elapsed time: hour spec\n|\\[m{1,2}]                     # Elapsed time: minute spec\n|\\[s{1,2}]                     # Elapsed time: second spec\n|[^;]                           # A character\n"

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/ss/format/CellFormatPart;->SPECIFICATION_PAT:Ljava/util/regex/Pattern;

    const-string v0, "(\\[\\$.{0,3}(-[0-9a-f]{3,4})?])"

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/ss/format/CellFormatPart;->CURRENCY_PAT:Ljava/util/regex/Pattern;

    const-string v0, "(?:\\[(black|blue|cyan|green|magenta|red|white|yellow|color [0-9]+)])?                 # Text color\n(?:\\[([<>=]=?|!=|<>)    # The operator\n  \\s*(-?([0-9]+(?:\\.[0-9]*)?)|(\\.[0-9]*))\\s*  # The constant to test against\n])?               # Condition\n(?:\\[\\$-[0-9a-fA-F]+])?                # Optional locale id, ignored currently\n((?:\\\\.                     # Quoted single character\n|\"([^\\\\\"]|\\\\.)*\"         # Quoted string of characters (handles escaped quotes like \\\") \n|(\\[\\$.{0,3}(-[0-9a-f]{3,4})?])                   # Currency symbol in a given locale\n|_.                             # Space as wide as a given character\n|\\*.                           # Repeating fill character\n|@                              # Text: cell text\n|([0?\\#][0?\\#,]*)             # Number: digit + other digits and commas\n|e[-+]                          # Number: Scientific: Exponent\n|m{1,5}                         # Date: month or minute spec\n|d{1,4}                         # Date: day/date spec\n|y{2,4}                         # Date: year spec\n|h{1,2}                         # Date: hour spec\n|s{1,2}                         # Date: second spec\n|am?/pm?                        # Date: am/pm spec\n|\\[h{1,2}]                     # Elapsed time: hour spec\n|\\[m{1,2}]                     # Elapsed time: minute spec\n|\\[s{1,2}]                     # Elapsed time: second spec\n|[^;]                           # A character\n)+)                        # Format spec\n"

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/ss/format/CellFormatPart;->FORMAT_PAT:Ljava/util/regex/Pattern;

    const-string v1, "[Blue]@"

    const-string v2, "Blue"

    invoke-static {v0, v1, v2}, Lorg/apache/poi/ss/format/CellFormatPart;->findGroup(Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lorg/apache/poi/ss/format/CellFormatPart;->COLOR_GROUP:I

    const-string v1, "[>=1]@"

    const-string v2, ">="

    invoke-static {v0, v1, v2}, Lorg/apache/poi/ss/format/CellFormatPart;->findGroup(Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lorg/apache/poi/ss/format/CellFormatPart;->CONDITION_OPERATOR_GROUP:I

    const-string v2, "1"

    invoke-static {v0, v1, v2}, Lorg/apache/poi/ss/format/CellFormatPart;->findGroup(Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lorg/apache/poi/ss/format/CellFormatPart;->CONDITION_VALUE_GROUP:I

    const-string v1, "[Blue][>1]\\a ?"

    const-string v2, "\\a ?"

    invoke-static {v0, v1, v2}, Lorg/apache/poi/ss/format/CellFormatPart;->findGroup(Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lorg/apache/poi/ss/format/CellFormatPart;->SPECIFICATION_GROUP:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {}, Lorg/apache/poi/util/LocaleUtil;->getUserLocale()Ljava/util/Locale;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lorg/apache/poi/ss/format/CellFormatPart;-><init>(Ljava/util/Locale;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;Ljava/lang/String;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lorg/apache/poi/ss/format/CellFormatPart;->FORMAT_PAT:Ljava/util/regex/Pattern;

    .line 3
    invoke-virtual {v0, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    invoke-static {v0}, Lorg/apache/poi/ss/format/CellFormatPart;->getColor(Ljava/util/regex/Matcher;)Ljava/awt/Color;

    move-result-object p2

    iput-object p2, p0, Lorg/apache/poi/ss/format/CellFormatPart;->color:Ljava/awt/Color;

    .line 6
    invoke-direct {p0, v0}, Lorg/apache/poi/ss/format/CellFormatPart;->getCondition(Ljava/util/regex/Matcher;)Lorg/apache/poi/ss/format/CellFormatCondition;

    move-result-object p2

    iput-object p2, p0, Lorg/apache/poi/ss/format/CellFormatPart;->condition:Lorg/apache/poi/ss/format/CellFormatCondition;

    .line 7
    invoke-direct {p0, v0}, Lorg/apache/poi/ss/format/CellFormatPart;->getCellFormatType(Ljava/util/regex/Matcher;)Lorg/apache/poi/ss/format/CellFormatType;

    move-result-object p2

    iput-object p2, p0, Lorg/apache/poi/ss/format/CellFormatPart;->type:Lorg/apache/poi/ss/format/CellFormatType;

    .line 8
    invoke-direct {p0, p1, v0}, Lorg/apache/poi/ss/format/CellFormatPart;->getFormatter(Ljava/util/Locale;Ljava/util/regex/Matcher;)Lorg/apache/poi/ss/format/CellFormatter;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/ss/format/CellFormatPart;->format:Lorg/apache/poi/ss/format/CellFormatter;

    return-void

    .line 9
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Unrecognized format: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Lorg/apache/poi/ss/format/CellFormatter;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static expandChar(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lorg/apache/poi/util/CodepointsUtil;->primitiveIterator(Ljava/lang/String;)Ljava/util/PrimitiveIterator$OfInt;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/PrimitiveIterator$OfInt;->next()Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/PrimitiveIterator$OfInt;->next()Ljava/lang/Integer;

    move-result-object v1

    :cond_1
    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Character;->toChars(I)[C

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    array-length v1, p0

    mul-int/lit8 v1, v1, 0x3

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Expected part string to have at least 2 chars"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static findGroup(Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/lang/String;)I
    .locals 3

    invoke-virtual {p0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    const-string v2, "\""

    if-eqz v1, :cond_2

    const/4 p1, 0x1

    :goto_0
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v1

    if-gt p1, v1, :cond_1

    invoke-virtual {v0, p1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return p1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "\" not found in \""

    invoke-static {v2, p2, v0}, Landroidx/activity/result/a;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p0}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Pattern \""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\" doesn\'t match \""

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private formatType(Ljava/lang/String;)Lorg/apache/poi/ss/format/CellFormatType;
    .locals 12

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_18

    const-string p1, "General"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto/16 :goto_4

    :cond_0
    sget-object p1, Lorg/apache/poi/ss/format/CellFormatPart;->SPECIFICATION_PAT:Ljava/util/regex/Pattern;

    invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :cond_1
    :goto_0
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_15

    invoke-virtual {p1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/poi/util/CodepointsUtil;->iteratorFor(Ljava/lang/String;)Ljava/util/Iterator;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v6

    const-string v7, "s"

    const-string v8, "m"

    const-string v9, "h"

    const/4 v10, 0x1

    const/4 v11, -0x1

    sparse-switch v6, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    const-string v6, "y"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    goto/16 :goto_1

    :cond_2
    const/16 v11, 0xe

    goto/16 :goto_1

    :sswitch_1
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    goto/16 :goto_1

    :cond_3
    const/16 v11, 0xd

    goto/16 :goto_1

    :sswitch_2
    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    goto/16 :goto_1

    :cond_4
    const/16 v11, 0xc

    goto/16 :goto_1

    :sswitch_3
    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    goto/16 :goto_1

    :cond_5
    const/16 v11, 0xb

    goto/16 :goto_1

    :sswitch_4
    const-string v6, "d"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    goto/16 :goto_1

    :cond_6
    const/16 v11, 0xa

    goto/16 :goto_1

    :sswitch_5
    const-string v6, "["

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    goto/16 :goto_1

    :cond_7
    const/16 v11, 0x9

    goto/16 :goto_1

    :sswitch_6
    const-string v6, "Y"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    goto/16 :goto_1

    :cond_8
    const/16 v11, 0x8

    goto/16 :goto_1

    :sswitch_7
    const-string v6, "S"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9

    goto :goto_1

    :cond_9
    const/4 v11, 0x7

    goto :goto_1

    :sswitch_8
    const-string v6, "M"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a

    goto :goto_1

    :cond_a
    const/4 v11, 0x6

    goto :goto_1

    :sswitch_9
    const-string v6, "H"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b

    goto :goto_1

    :cond_b
    const/4 v11, 0x5

    goto :goto_1

    :sswitch_a
    const-string v6, "D"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_c

    goto :goto_1

    :cond_c
    const/4 v11, 0x4

    goto :goto_1

    :sswitch_b
    const-string v6, "@"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_d

    goto :goto_1

    :cond_d
    const/4 v11, 0x3

    goto :goto_1

    :sswitch_c
    const-string v6, "?"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_e

    goto :goto_1

    :cond_e
    const/4 v11, 0x2

    goto :goto_1

    :sswitch_d
    const-string v6, "0"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_f

    goto :goto_1

    :cond_f
    move v11, v10

    goto :goto_1

    :sswitch_e
    const-string v6, "#"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_10

    goto :goto_1

    :cond_10
    move v11, v0

    :goto_1
    packed-switch v11, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_11

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_11
    const/4 p1, 0x0

    :goto_2
    invoke-virtual {v9, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    goto :goto_3

    :cond_12
    const-string v0, "$"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    sget-object p0, Lorg/apache/poi/ss/format/CellFormatType;->NUMBER:Lorg/apache/poi/ss/format/CellFormatType;

    return-object p0

    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unsupported [] format block \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\' in \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\' with c2: "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_14
    :goto_3
    sget-object p0, Lorg/apache/poi/ss/format/CellFormatType;->ELAPSED:Lorg/apache/poi/ss/format/CellFormatType;

    return-object p0

    :pswitch_1
    move v1, v10

    goto/16 :goto_0

    :pswitch_2
    sget-object p0, Lorg/apache/poi/ss/format/CellFormatType;->DATE:Lorg/apache/poi/ss/format/CellFormatType;

    return-object p0

    :pswitch_3
    sget-object p0, Lorg/apache/poi/ss/format/CellFormatType;->TEXT:Lorg/apache/poi/ss/format/CellFormatType;

    return-object p0

    :pswitch_4
    move v2, v10

    goto/16 :goto_0

    :pswitch_5
    sget-object p0, Lorg/apache/poi/ss/format/CellFormatType;->NUMBER:Lorg/apache/poi/ss/format/CellFormatType;

    return-object p0

    :cond_15
    if-eqz v1, :cond_16

    sget-object p0, Lorg/apache/poi/ss/format/CellFormatType;->DATE:Lorg/apache/poi/ss/format/CellFormatType;

    return-object p0

    :cond_16
    if-eqz v2, :cond_17

    sget-object p0, Lorg/apache/poi/ss/format/CellFormatType;->NUMBER:Lorg/apache/poi/ss/format/CellFormatType;

    return-object p0

    :cond_17
    sget-object p0, Lorg/apache/poi/ss/format/CellFormatType;->TEXT:Lorg/apache/poi/ss/format/CellFormatType;

    return-object p0

    :cond_18
    :goto_4
    sget-object p0, Lorg/apache/poi/ss/format/CellFormatType;->GENERAL:Lorg/apache/poi/ss/format/CellFormatType;

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        0x23 -> :sswitch_e
        0x30 -> :sswitch_d
        0x3f -> :sswitch_c
        0x40 -> :sswitch_b
        0x44 -> :sswitch_a
        0x48 -> :sswitch_9
        0x4d -> :sswitch_8
        0x53 -> :sswitch_7
        0x59 -> :sswitch_6
        0x5b -> :sswitch_5
        0x64 -> :sswitch_4
        0x68 -> :sswitch_3
        0x6d -> :sswitch_2
        0x73 -> :sswitch_1
        0x79 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_5
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getCellFormatType(Ljava/util/regex/Matcher;)Lorg/apache/poi/ss/format/CellFormatType;
    .locals 1

    sget v0, Lorg/apache/poi/ss/format/CellFormatPart;->SPECIFICATION_GROUP:I

    .line 2
    invoke-virtual {p1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-direct {p0, p1}, Lorg/apache/poi/ss/format/CellFormatPart;->formatType(Ljava/lang/String;)Lorg/apache/poi/ss/format/CellFormatType;

    move-result-object p0

    return-object p0
.end method

.method private static getColor(Ljava/util/regex/Matcher;)Ljava/awt/Color;
    .locals 3

    sget v0, Lorg/apache/poi/ss/format/CellFormatPart;->COLOR_GROUP:I

    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lorg/apache/poi/ss/format/CellFormatPart;->NAMED_COLORS:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/awt/Color;

    if-nez v0, :cond_1

    sget-object v1, Lorg/apache/poi/ss/format/CellFormatPart;->LOG:La5/d;

    const-string v2, "Unknown color: {}"

    invoke-static {p0}, Lorg/apache/poi/ss/format/CellFormatter;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v1, p0, v2}, La5/d;->d(Ljava/io/Serializable;Ljava/lang/String;)V

    :cond_1
    return-object v0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private getCondition(Ljava/util/regex/Matcher;)Lorg/apache/poi/ss/format/CellFormatCondition;
    .locals 1

    sget p0, Lorg/apache/poi/ss/format/CellFormatPart;->CONDITION_OPERATOR_GROUP:I

    invoke-virtual {p1, p0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    sget v0, Lorg/apache/poi/ss/format/CellFormatPart;->CONDITION_VALUE_GROUP:I

    invoke-virtual {p1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/apache/poi/ss/format/CellFormatCondition;->getInstance(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/poi/ss/format/CellFormatCondition;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private getFormatter(Ljava/util/Locale;Ljava/util/regex/Matcher;)Lorg/apache/poi/ss/format/CellFormatter;
    .locals 3

    sget v0, Lorg/apache/poi/ss/format/CellFormatPart;->SPECIFICATION_GROUP:I

    invoke-virtual {p2, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p2

    sget-object v0, Lorg/apache/poi/ss/format/CellFormatPart;->CURRENCY_PAT:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "[$-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "$"

    goto :goto_0

    :cond_0
    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x2

    if-nez v1, :cond_1

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    :cond_2
    iget-object p0, p0, Lorg/apache/poi/ss/format/CellFormatPart;->type:Lorg/apache/poi/ss/format/CellFormatType;

    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/ss/format/CellFormatType;->formatter(Ljava/util/Locale;Ljava/lang/String;)Lorg/apache/poi/ss/format/CellFormatter;

    move-result-object p0

    return-object p0
.end method

.method public static group(Ljava/util/regex/Matcher;I)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0, p1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, ""

    :cond_0
    return-object p0
.end method

.method public static parseFormat(Ljava/lang/String;Lorg/apache/poi/ss/format/CellFormatType;Lorg/apache/poi/ss/format/CellFormatPart$PartHandler;)Ljava/lang/StringBuffer;
    .locals 5

    sget-object v0, Lorg/apache/poi/ss/format/CellFormatPart;->SPECIFICATION_PAT:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    :cond_0
    :goto_0
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_6

    invoke-static {p0, v2}, Lorg/apache/poi/ss/format/CellFormatPart;->group(Ljava/util/regex/Matcher;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    invoke-interface {p2, p0, v1, p1, v0}, Lorg/apache/poi/ss/format/CellFormatPart$PartHandler;->handlePart(Ljava/util/regex/Matcher;Ljava/lang/String;Lorg/apache/poi/ss/format/CellFormatType;Ljava/lang/StringBuffer;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_5

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v4, 0x22

    if-eq v2, v4, :cond_4

    const/16 v4, 0x2a

    if-eq v2, v4, :cond_3

    const/16 v4, 0x5c

    if-eq v2, v4, :cond_2

    const/16 v3, 0x5f

    if-eq v2, v3, :cond_1

    goto :goto_1

    :cond_1
    const-string v1, " "

    goto :goto_1

    :cond_2
    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Lorg/apache/poi/ss/format/CellFormatPart;->quoteSpecial(Ljava/lang/String;Lorg/apache/poi/ss/format/CellFormatType;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_3
    invoke-static {v1}, Lorg/apache/poi/ss/format/CellFormatPart;->expandChar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_4
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v3

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Lorg/apache/poi/ss/format/CellFormatPart;->quoteSpecial(Ljava/lang/String;Lorg/apache/poi/ss/format/CellFormatType;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_5
    move-object v1, v4

    :goto_1
    invoke-static {v1}, Ljava/util/regex/Matcher;->quoteReplacement(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    goto :goto_0

    :cond_6
    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->appendTail(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    const/16 p0, 0x27

    invoke-virtual {p1, p0}, Lorg/apache/poi/ss/format/CellFormatType;->isSpecial(C)Z

    move-result p0

    if-eqz p0, :cond_9

    move p0, v2

    :cond_7
    :goto_2
    const-string p1, "\'\'"

    invoke-virtual {v0, p1, p0}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;I)I

    move-result p0

    if-ltz p0, :cond_8

    add-int/lit8 p1, p0, 0x2

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    instance-of p1, p2, Lorg/apache/poi/ss/format/CellDateFormatter$DatePartHandler;

    if-eqz p1, :cond_7

    move-object p1, p2

    check-cast p1, Lorg/apache/poi/ss/format/CellDateFormatter$DatePartHandler;

    const/4 v1, -0x2

    invoke-virtual {p1, p0, v1}, Lorg/apache/poi/ss/format/CellDateFormatter$DatePartHandler;->updatePositions(II)V

    goto :goto_2

    :cond_8
    :goto_3
    const-string p0, "\u0000"

    invoke-virtual {v0, p0, v2}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;I)I

    move-result v2

    if-ltz v2, :cond_9

    add-int/lit8 p0, v2, 0x1

    invoke-virtual {v0, v2, p0, p1}, Ljava/lang/StringBuffer;->replace(IILjava/lang/String;)Ljava/lang/StringBuffer;

    instance-of p0, p2, Lorg/apache/poi/ss/format/CellDateFormatter$DatePartHandler;

    if-eqz p0, :cond_8

    move-object p0, p2

    check-cast p0, Lorg/apache/poi/ss/format/CellDateFormatter$DatePartHandler;

    invoke-virtual {p0, v2, v3}, Lorg/apache/poi/ss/format/CellDateFormatter$DatePartHandler;->updatePositions(II)V

    goto :goto_3

    :cond_9
    return-object v0
.end method

.method public static quoteSpecial(Ljava/lang/String;Lorg/apache/poi/ss/format/CellFormatType;)Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lorg/apache/poi/util/CodepointsUtil;->primitiveIterator(Ljava/lang/String;)Ljava/util/PrimitiveIterator$OfInt;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/PrimitiveIterator$OfInt;->nextInt()I

    move-result v1

    const/4 v2, 0x0

    const/16 v3, 0x27

    if-ne v1, v3, :cond_1

    invoke-virtual {p1, v3}, Lorg/apache/poi/ss/format/CellFormatType;->isSpecial(C)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    invoke-static {v1}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v1

    aget-char v2, v1, v2

    invoke-virtual {p1, v2}, Lorg/apache/poi/ss/format/CellFormatType;->isSpecial(C)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    if-eqz v2, :cond_0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public applies(Ljava/lang/Object;)Z
    .locals 2

    iget-object p0, p0, Lorg/apache/poi/ss/format/CellFormatPart;->condition:Lorg/apache/poi/ss/format/CellFormatCondition;

    if-eqz p0, :cond_1

    instance-of v0, p1, Ljava/lang/Number;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/ss/format/CellFormatCondition;->pass(D)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "valueObject"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public apply(Ljava/lang/Object;)Lorg/apache/poi/ss/format/CellFormatResult;
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/poi/ss/format/CellFormatPart;->applies(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/apache/poi/ss/format/CellFormatPart;->format:Lorg/apache/poi/ss/format/CellFormatter;

    .line 2
    invoke-virtual {v1, p1}, Lorg/apache/poi/ss/format/CellFormatter;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lorg/apache/poi/ss/format/CellFormatPart;->color:Ljava/awt/Color;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/ss/format/CellFormatPart;->format:Lorg/apache/poi/ss/format/CellFormatter;

    .line 3
    invoke-virtual {p0, p1}, Lorg/apache/poi/ss/format/CellFormatter;->simpleFormat(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 p0, 0x0

    .line 4
    :goto_0
    new-instance v1, Lorg/apache/poi/ss/format/CellFormatResult;

    invoke-direct {v1, v0, p1, p0}, Lorg/apache/poi/ss/format/CellFormatResult;-><init>(ZLjava/lang/String;Ljava/awt/Color;)V

    return-object v1
.end method

.method public apply(Ljavax/swing/JLabel;Ljava/lang/Object;)Lorg/apache/poi/ss/format/CellFormatResult;
    .locals 0

    .line 5
    invoke-virtual {p0, p2}, Lorg/apache/poi/ss/format/CellFormatPart;->apply(Ljava/lang/Object;)Lorg/apache/poi/ss/format/CellFormatResult;

    move-result-object p0

    .line 6
    iget-object p2, p0, Lorg/apache/poi/ss/format/CellFormatResult;->text:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljavax/swing/JLabel;->setText(Ljava/lang/String;)V

    .line 7
    iget-object p2, p0, Lorg/apache/poi/ss/format/CellFormatResult;->textColor:Ljava/awt/Color;

    if-eqz p2, :cond_0

    .line 8
    invoke-virtual {p1, p2}, Ljavax/swing/JLabel;->setForeground(Ljava/awt/Color;)V

    :cond_0
    return-object p0
.end method

.method public getCellFormatType()Lorg/apache/poi/ss/format/CellFormatType;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/apache/poi/ss/format/CellFormatPart;->type:Lorg/apache/poi/ss/format/CellFormatType;

    return-object p0
.end method

.method public hasCondition()Z
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/ss/format/CellFormatPart;->condition:Lorg/apache/poi/ss/format/CellFormatCondition;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/ss/format/CellFormatPart;->format:Lorg/apache/poi/ss/format/CellFormatter;

    iget-object p0, p0, Lorg/apache/poi/ss/format/CellFormatter;->format:Ljava/lang/String;

    return-object p0
.end method
